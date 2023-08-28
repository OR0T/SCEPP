#Placement
def add_dummy(Cell_info):
    
    Cell_info.is_dummy_need = False

def euler_path(matrix, start, vertex, path_cand):
       for next in range(len(vertex)):
           while matrix[start][next]:
               matrix[start][next] -= 1
               matrix[next][start] -= 1
               euler_path(matrix, next, vertex, path_cand)
       path_cand.append(start)

sp_file = open("test.sp", "r", encoding = "utf8")
# sp_file = open("Nangate_15nm.sp", "r", encoding = "utf8")
lines = sp_file.readlines()

Cell_info = []

class X1Cell_information:
    def __init__(self, name):
        self.name = name
        self.p_vertex = []
        self.n_vertex = []
        self.edge = []
        self.tr_info = [[], []] # [[pfet], [nfet]] => pfet, nfet 내부 리스트 정보 : [diff, poly, diff]
        self.p_matrix = []
        self.n_matrix = []
        self.p_odd_cnt = 0
        self.n_odd_cnt = 0
        self.p_start_point = []
        self.n_start_point = []
        self.is_dummy_need = False
        self.p_euler_path_cand = []
        self.n_euler_path_cand = []

    def __repr__(self):
        return f"Cell Name : {self.name}\
\nP Vertex : {self.p_vertex}\
\nN Vertex : {self.n_vertex}\
\nEdge : {self.edge}\
\nTr_info : {self.tr_info}\
\nP matrix = {self.p_matrix}\
\nN matrix = {self.n_matrix}\
\nP odd degree count : {self.p_odd_cnt}\
\nN odd degree count : {self.n_odd_cnt}\
\nP start point : {self.p_start_point}\
\nN start point : {self.n_start_point}\
\nIs dummy need : {self.is_dummy_need}\
\nP euler path candidates : {self.p_euler_path_cand}\
\nN euler path candidates : {self.n_euler_path_cand}\
\nEND\n\n"

X1CellNum = -1
pfet = 0
nfet = 1
is_x1 = False

# sp file을 분석하여 Cell정보 틀을 제작

for line in lines :
    tmp = line.strip().split() # 줄별로 읽어서 리스트화
    if ('X1.' in line) & ('Cellname' in line) & (is_x1 == False) :
        X1CellNum += 1
        is_x1 = True
        Cell_info.append(X1Cell_information(tmp[2][0:-1])) # Cell name 정보 저장
        
    if ('M_' in line) & (is_x1):
        if 'pfet' in line :
            Cell_info[X1CellNum].tr_info[pfet].append(tmp[1:4]) # pfet의 [diff, poly, diff] 저장
             # pfet의 vertex 정보 저장
            if (tmp[1] not in Cell_info[X1CellNum].p_vertex) :
                Cell_info[X1CellNum].p_vertex.append(tmp[1])
            if (tmp[3] not in Cell_info[X1CellNum].p_vertex) :
                Cell_info[X1CellNum].p_vertex.append(tmp[3])
        
        if 'nfet' in line :
            Cell_info[X1CellNum].tr_info[nfet].append(tmp[1:4]) # nfet의 [diff, poly, diff] 저장
            # nfet의 vertex 정보 저장
            if (tmp[1] not in Cell_info[X1CellNum].n_vertex) :
             Cell_info[X1CellNum].n_vertex.append(tmp[1])
            if (tmp[3] not in Cell_info[X1CellNum].n_vertex) :
                Cell_info[X1CellNum].n_vertex.append(tmp[3])

        # nfet의 edge정보 저장
        if tmp[2] not in Cell_info[X1CellNum].edge :
            Cell_info[X1CellNum].edge.append(tmp[2])
        
    if (is_x1) & ('.ENDS' in line):
        is_x1 = False

# X1 Cell 정보 저장완료
sp_file.close()

# sp file에서 추출한 정보를 기반으로 추가 정보를 저장
for Cellnum in range(0, X1CellNum + 1):
    # Cell의 n, p graph를 행렬로 표시합니다.
    Cell_info[Cellnum].p_matrix = [[0 for _ in range(len(Cell_info[Cellnum].p_vertex))] for _ in range(len(Cell_info[Cellnum].p_vertex))]
    Cell_info[Cellnum].n_matrix = [[0 for _ in range(len(Cell_info[Cellnum].n_vertex))] for _ in range(len(Cell_info[Cellnum].n_vertex))]

    for trNum in range(len(Cell_info[Cellnum].tr_info[pfet])):
        for diff1 in range(len(Cell_info[Cellnum].p_vertex)):
            for diff2 in range(len(Cell_info[Cellnum].p_vertex)):
                if (diff1 != diff2) & (Cell_info[Cellnum].tr_info[pfet][trNum][0] == Cell_info[Cellnum].p_vertex[diff1]) & (Cell_info[Cellnum].tr_info[pfet][trNum][2] == Cell_info[Cellnum].p_vertex[diff2]):
                    Cell_info[Cellnum].p_matrix[diff1][diff2] += 1
                    Cell_info[Cellnum].p_matrix[diff2][diff1] += 1

    for trNum in range(len(Cell_info[Cellnum].tr_info[nfet])):
        for diff1 in range(len(Cell_info[Cellnum].n_vertex)):
            for diff2 in range(len(Cell_info[Cellnum].n_vertex)):
                if (diff1 != diff2) & (Cell_info[Cellnum].tr_info[nfet][trNum][0] == Cell_info[Cellnum].n_vertex[diff1]) & (Cell_info[Cellnum].tr_info[nfet][trNum][2] == Cell_info[Cellnum].n_vertex[diff2]):
                    Cell_info[Cellnum].n_matrix[diff1][diff2] += 1
                    Cell_info[Cellnum].n_matrix[diff2][diff1] += 1

for Cellnum in range(X1CellNum + 1):
    # n, p graph에서 정점의 홀수 차수의 갯수를 구합니다.
    for vertex in range(len(Cell_info[Cellnum].p_vertex)):
        if sum(Cell_info[Cellnum].p_matrix[vertex]) % 2 != 0:
            Cell_info[Cellnum].p_odd_cnt += 1
            Cell_info[Cellnum].p_start_point.append(vertex)
    for vertex in range(len(Cell_info[Cellnum].n_vertex)):
        if sum(Cell_info[Cellnum].n_matrix[vertex]) % 2 != 0:
            Cell_info[Cellnum].n_odd_cnt += 1
            Cell_info[Cellnum].n_start_point.append(vertex)

    if Cell_info[Cellnum].p_odd_cnt == 0:
        Cell_info[Cellnum].p_start_point.extend(range(len(Cell_info[Cellnum].p_vertex)))
    if Cell_info[Cellnum].n_odd_cnt == 0:
        Cell_info[Cellnum].n_start_point.extend(range(len(Cell_info[Cellnum].n_vertex)))

# X1 Cell의 vertex's degree count는 0, 2, 4, 6, 8단위
# 오일러 경로 필요충분 조건 -> 정점의 차수가 홀수인 경우가 2개만 존재(오일러 트레일) | 정점의 차수가 모두 짝수인 경우(오일러 서킷)

for Cellnum in range(X1CellNum + 1):
    if (Cell_info[Cellnum].p_odd_cnt) >= 3 | (Cell_info[Cellnum].n_odd_cnt >= 3):
        Cell_info[Cellnum].is_dummy_need = True

    if Cell_info[Cellnum].is_dummy_need:
        add_dummy(Cell_info[Cellnum])
    
    # dummy를 추가 했기 때문에 아래 Euler path는 반드시 존재한다. (Euler trail, Euler circuit 모두 포함)
    Cell_info[Cellnum].p_euler_path_cand = [[] for _ in range(len(Cell_info[Cellnum].p_start_point))]
    Cell_info[Cellnum].n_euler_path_cand = [[] for _ in range(len(Cell_info[Cellnum].n_start_point))]
    for start, i in zip(Cell_info[Cellnum].p_start_point, range(len(Cell_info[Cellnum].p_start_point))):
        tmp_p_matrix = [row[:] for row in Cell_info[Cellnum].p_matrix]
        euler_path(tmp_p_matrix, start, Cell_info[Cellnum].p_vertex, Cell_info[Cellnum].p_euler_path_cand[i])
    for start, i in zip(Cell_info[Cellnum].n_start_point, range(len(Cell_info[Cellnum].n_start_point))):
        tmp_n_matrix = [row[:] for row in Cell_info[Cellnum].n_matrix]
        euler_path(tmp_n_matrix, start, Cell_info[Cellnum].n_vertex, Cell_info[Cellnum].n_euler_path_cand[i])


print(Cell_info)

# 추가정보 저장 완료
# 저장된 정보 output log 파일
log_file = "test.txt"

with open(log_file, "w", encoding="utf8") as f:
    for cell in Cell_info:
        f.write(repr(cell))
#################################################