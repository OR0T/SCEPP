import copy
import numpy as np
from collections import Counter
from euler_algorithms import *

#Placement

# sp_file = open("Nangate_15nm_AND2_X1.sp", "r", encoding = "utf8")
# sp_file = open("Nangate_15nm_AOI21_X1.sp", "r", encoding="utf8")
# sp_file = open("Nangate_15nm_DFFRNQ_X1.sp", "r", encoding = "utf8") # X
# sp_file = open("Nangate_15nm_DFFSNQ_X1.sp", "r", encoding = "utf8") # X
# sp_file = open("Nangate_15nm_FA_X1.sp", "r", encoding = "utf8")
# sp_file = open("Nangate_15nm_HA_X1.sp", "r", encoding = "utf8")
# sp_file = open("Nangate_15nm_LHQ_X1.sp", "r", encoding = "utf8") # X
# sp_file = open("Nangate_15nm_SDFFRNQ_X1.sp", "r", encoding = "utf8") # X
# sp_file = open("Nangate_15nm_SDFFSNQ_X1.sp", "r", encoding = "utf8") # X
# sp_file = open("Nangate_15nm_TBUF_X1.sp", "r", encoding = "utf8") # X
# sp_file = open("Nangate_15nm_XNOR2_X1.sp", "r", encoding = "utf8")
sp_file = open("Nangate_15nm.sp", "r", encoding = "utf8")

lines = sp_file.readlines()

Cell_info = []
dummy_cell_info = []
result_cell = [[], [], [], []] # [[cellname], [cell index], [weight], [weight index]]

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
        self.p_dummy_cnt = 0
        self.n_dummy_cnt = 0
        self.p_euler_path_cand =[]
        self.n_euler_path_cand = []
        self.p_poly_ordering = []
        self.n_poly_ordering = []
        self.poly_ordering = []
        self.p_diff_chain = []
        self.n_diff_chain = []
        self.diff_sharing = []
        self.p_loop_num = []
        self.p_loop_cnt = []
        self.n_loop_num = []
        self.n_loop_cnt = []
        self.is_p_loop = False
        self.is_n_loop = False
        self.p_loop_start_point = []
        self.n_loop_start_point = []
        self.p_diff_w = []
        self.n_diff_w = []
        self.total_w = []

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
\nP dummy count : {self.p_dummy_cnt}\
\nN dummy count : {self.n_dummy_cnt}\
\nP euler path candidates : {self.p_euler_path_cand}\
\nN euler path candidates : {self.n_euler_path_cand}\
\nP loop is : {self.is_p_loop}\
\nP loop number : {self.p_loop_num}\
\nP loop count : {self.p_loop_cnt}\
\nP loop point : {self.p_loop_start_point}\
\nN loop is : {self.is_n_loop}\
\nN loop number : {self.n_loop_num}\
\nN loop count : {self.n_loop_cnt}\
\nN loop point : {self.n_loop_start_point}\
\nP poly ordering : {self.p_poly_ordering}\
\nN poly ordering : {self.n_poly_ordering}\
\nPoly ordering : {self.poly_ordering}\
\nP diffusion chain : {self.p_diff_chain}\
\nN diffusion chain : {self.n_diff_chain}\
\nDiffusion sharing : {self.diff_sharing}\
\nP Diffusion weight : {self.p_diff_w}\
\nN Diffusion weight : {self.n_diff_w}\
\nTotal diffusion weight : {self.total_w}\
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
        result_cell[0].append((tmp[2][0:-1]))
        result_cell[1].append(X1CellNum)
        result_cell[2].append(100)
        result_cell[3].append(0)
        
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
make_matrix(Cell_info)
count_odd_degree(Cell_info)

# X1 Cell의 vertex's degree count는 0, 2, 4, 6, 8단위
# 오일러 경로 필요충분 조건 -> 정점의 차수가 홀수인 경우가 2개만 존재(오일러 트레일) | 정점의 차수가 모두 짝수인 경우(오일러 서킷)

# 필요충분 조건을 만족하지 못하는 경우 dummy를 추가한다.
add_dummy(Cell_info, dummy_cell_info)

# dummy가 추가된 Cell정보를 다시 계산하여 Cell_info에 수정된 Cell정보를 추가한다.
count_odd_degree(dummy_cell_info)
Cell_info.extend(dummy_cell_info)

# 최종 poly ordering, diffusion chaining을 완료한다.
for Cellnum in range(len(Cell_info)):
    if Cell_info[Cellnum].is_dummy_need == False:
        # dummy를 추가 했기 때문에 아래 Euler path는 반드시 존재한다. (Euler trail, Euler circuit 모두 포함)
        Cell_info[Cellnum].p_euler_path_cand = [[] for _ in range(len(Cell_info[Cellnum].p_start_point))]
        Cell_info[Cellnum].n_euler_path_cand = [[] for _ in range(len(Cell_info[Cellnum].n_start_point))]
        for start, i in zip(Cell_info[Cellnum].p_start_point, range(len(Cell_info[Cellnum].p_start_point))):
            tmp_p_matrix = [row[:] for row in Cell_info[Cellnum].p_matrix]
            euler_path(tmp_p_matrix, start, Cell_info[Cellnum].p_vertex, Cell_info[Cellnum].p_euler_path_cand[i])
        for start, i in zip(Cell_info[Cellnum].n_start_point, range(len(Cell_info[Cellnum].n_start_point))):
            tmp_n_matrix = [row[:] for row in Cell_info[Cellnum].n_matrix]
            euler_path(tmp_n_matrix, start, Cell_info[Cellnum].n_vertex, Cell_info[Cellnum].n_euler_path_cand[i])
        
        find_loop(Cell_info[Cellnum])
        # P, N graph에 loop형태를 찾는다.
        loop_start_point(Cell_info[Cellnum])

        completion(Cell_info, Cellnum)

        # CFET + DSBPR(Double sided BPR) + Diffusion sharing
        weighting_DSBPR(Cell_info, Cellnum)

for Cellnum in range(len(Cell_info)):
    for ResultCellNum in range(len(result_cell[0])):
        if Cell_info[Cellnum].name == result_cell[0][ResultCellNum]:
            for w_index in range(len(Cell_info[Cellnum].total_w)):
                if result_cell[2][ResultCellNum] > Cell_info[Cellnum].total_w[w_index]:
                    result_cell[1][ResultCellNum] = Cellnum
                    result_cell[2][ResultCellNum] = Cell_info[Cellnum].total_w[w_index]
                    result_cell[3][ResultCellNum] = w_index

print(result_cell)

# print(dummy_cell_info)
# print(Cell_info)

# 추가정보 저장 완료
# 저장된 정보 output log 파일
Cell_info_file = "Cell_info.txt"

with open(Cell_info_file, "w", encoding="utf8") as f:
    for cell in Cell_info:
        if cell.is_dummy_need:
            f.write(repr(cell))
        elif (cell.is_dummy_need == False) & (len(cell.poly_ordering) > 0):
            f.write(repr(cell))
        elif cell.name == 'MUX2_X1': # MUX는 예외의 경우 (비슷한 case : DFFRNQ, DFFSNQ, LHQ 등)
            f.write(repr(cell))
        # f.write(repr(cell))

# dummy_cell_info_file = "dummy_cell_info.txt"

# with open(dummy_cell_info_file, "w", encoding="utf8") as f:
#     for cell in dummy_cell_info:
#         f.write(repr(cell))

placement_result_file = "placement_result.txt"

with open(placement_result_file, "w", encoding="utf8") as f:
    for cell, cell_index, weight, weight_index in zip(result_cell[0], result_cell[1], result_cell[2], result_cell[3]):
        if weight == 100:
            f.write("Name : " + cell + "\n")
            f.write("There doesn't exist an Euler path." + "\n\n")
        else :
            f.write("Name : " + cell + "\n")
            f.write("PMOS : " + ' '.join(Cell_info[cell_index].p_diff_chain[weight_index]) + "\n")
            f.write("NMOS : " + ' '.join(Cell_info[cell_index].n_diff_chain[weight_index]) + "\n")
            f.write("POLY : " + ' '.join(Cell_info[cell_index].poly_ordering[weight_index]) + "\n\n")

    # for cell in Cell_info:
    #     for cand in range(len(cell.poly_ordering)):
    #         f.write("Name : " + cell.name + "\n")
    #         f.write("PMOS : " + ' '.join(cell.p_diff_chain[cand]) + "\n")
    #         f.write("NMOS : " + ' '.join(cell.n_diff_chain[cand]) + "\n")
    #         f.write("POLY : " + ' '.join(cell.poly_ordering[cand]) + "\n\n")
            
#################################################