import numpy as np  
import re 
import math
import random

# file = open("routing_pin_result.txt", "r", encoding="utf8")    #rinput.txt 라는 파일을 읽어온다.
file = open("test_case.txt", "r", encoding = "utf8")
lines = file.readlines()
file.close()

f = open("routing_result.txt", "w", encoding = "utf8")

class Node:
    def __init__(self, parent = None, position = None):
        self.parent  = parent
        self.position = position

        self.g = 0 # 현재 소비된 비용
        self.h = 0 # 앞으로 소비될 예상 비용
        self.f = 0 # 두 비용의 합산(현재까지 이동한 비용 + 예상 비용)

    def __eq__(self, other):
        return self.position == other.position # 두 Node의 위치가 동일할 경우 True를 반환한다.
    
    def __repr__(self):
        return f"Node(parent={self.parent}, position={self.position}, g={self.g}, h={self.h}, f={self.f})"

def heuristic(start, destination): # 시작점과 도착점사이의 맨하튼 거리를 계산한다. 이때, Z축 차이는 가중치가 5배로 설정된다.
    return abs(start.position[0] - destination.position[0]) + abs(start.position[1]-destination.position[1]) + 3*abs(start.position[2] - destination.position[2])

# A-star 알고리즘   
def A_star1(grid, start, destination, net_number):                                         
    
    start_Node = Node(None, start)                      # parent빈칸, position 좌표값 추가
    destination_Node = Node(None, destination)          # startNode와 endNode 초기화
    open_list=[]
    close_list=[]
    open_list.append(start_Node)                    # openList에 시작 노드 추가
    
    while open_list:                                # endNode를 찾을 때까지 실행
        
        current_Node = open_list[0]                 # 현재 노드 지정(현재 값 정의)
        current_index = 0                           # 현재 인덱스 지정
        
        for index, item in enumerate(open_list):        # 이미 같은 노드가 openList에 있고, f 값이 더 크면
            if item.f < current_Node.f:                 # currentNode를 openList안에 있는 값으로 교체
                current_index = index
                current_Node = item
        
        open_list.pop(current_index)                        # openList에서 제거하고 closedList에 추가
        close_list.append(current_Node)
        
        if current_Node == destination_Node:                # eq구문, 도착노드 판단
            path = []
            current = current_Node                          # 노드값들을 분배해줌
            while current is not None:
                x, y, z = current.position                  # x, y, z 좌표값 path할당
                #grid[z][len(grid[0])-1-y][x]= net_number                   # net number현재1
                
                path.append(current.position)
                current = current.parent                    # 추가된 값 제거
            return path, child.f 
        
        children = []
        if current_Node.position[2]==0:
            for move_point in [(-1, 0, 0), (1, 0, 0),(0, 0, 1), (0, 0, -1)]:     # M0 X, Z방향 이동
                
                nodePosition=(
                    current_Node.position[0] + move_point[0], current_Node.position[1] + move_point[1], current_Node.position[2] + move_point[2] )    # 이동 할 위치의 좌표
                
                if nodePosition[0] < 0 or nodePosition[0] >= int_grid_scale[0] :             # x에서 좌표값이 그리드이 크기 내에 있을 때 
                    continue
                if nodePosition[1] < 0 or nodePosition[1] >= int_grid_scale[1]:               
                    continue
                if nodePosition[2] < 0 or nodePosition[2] >= int_grid_scale[2]:
                    continue
                
                if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != 0 :            # 움직일 위치의 좌표값에 장애물이 있는지 판단
                    if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != net_number: # 장애물이 없고, + 현재 net_number가 아니면
                        continue
                new_Node = Node(current_Node, nodePosition)                         # 주변 노드들의 각 각의 좌표 / Node클래스를 지정해줌
                children.append(new_Node) 

        elif current_Node.position[2]==1:
            for move_point in [(0, -1, 0), (0, 1, 0), (0, 0, 1), (0, 0, -1)]:     # M1 Y, Z방향 이동
                
                nodePosition=(
                    current_Node.position[0] + move_point[0], current_Node.position[1] + move_point[1], current_Node.position[2] + move_point[2] )    # 이동 할 위치의 좌표
                
                if nodePosition[0] < 0 or nodePosition[0] >= int_grid_scale[0] :             # x에서 좌표값이 그리드이 크기 내에 있을 때 
                    continue
                if nodePosition[1] < 0 or nodePosition[1] >= int_grid_scale[1]:               
                    continue
                if nodePosition[2] < 0 or nodePosition[2] >= int_grid_scale[2]:
                    continue
                
                if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != 0 :            # 움직일 위치의 좌표값에 장애물이 있는지 판단
                    if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != net_number: # 장애물이 없고, + 현재 net_number가 아니면
                        continue
                new_Node = Node(current_Node, nodePosition)                         # 주변 노드들의 각 각의 좌표 / Node클래스를 지정해줌
                children.append(new_Node) 

        elif current_Node.position[2]==2:
            for move_point in [(1, 0, 0), (-1, 0, 0), (0, 0, 1), (0, 0, -1)]:     # 2층에서는 X, Z방향으로만 이동이 가능
                
                nodePosition=(
                    current_Node.position[0] + move_point[0], current_Node.position[1] + move_point[1], current_Node.position[2] + move_point[2] )    # 이동 할 위치의 좌표
                
                if nodePosition[0] < 0 or nodePosition[0] >= int_grid_scale[0]:             # x에서 좌표값이 그리드이 크기 내에 있을 때 
                    continue
                if nodePosition[1] < 0 or nodePosition[1] >= int_grid_scale[1]:               
                    continue
                if nodePosition[2] < 0 or nodePosition[2] >= int_grid_scale[2]:
                    continue
                
                if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != 0 :            # 움직일 위치의 좌표값에 장애물이 있는지 판단
                    if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != net_number:
                        continue
                new_Node = Node(current_Node, nodePosition)                         # 주변 노드들의 각 각의 좌표 / Node클래스를 지정해줌
                children.append(new_Node)                                           # 주변 노드들의 집합체 
        
        for child in children:                              # 주변 노드들을 모두 루프     
            
            if child in close_list:                         # 주변 노드가 close_list에 있으면 넘어감
                continue
            
            if current_Node.position[2]==0 or child.position[2]==0:         #가중치를 1층에서는 1
                child.g = current_Node.g + 1
            elif current_Node.position[2]==1 or child.position[2]==1:       #가중치를 2층에서는 5
                child.g = current_Node.g + 3
            elif current_Node.position[2]==2 or child.position[2]==2:       #가중치를 2층에서는 5
                child.g = current_Node.g + 5
            
            child.h = heuristic(child, destination_Node)
            child.f = child.g + child.h
            
            if len([openNode for openNode in open_list                      # child가 open-list 중에서 존재하고, 해당 노드의 g값이 더 큰지 판단
                    if child == openNode and child.g > openNode.g])> 0:
                continue
            
            open_list.append(child)
# A-star 알고리즘2 
def A_star2( grid, start, destination, net_number):                                         
    
    start_Node = Node(None, start)                      # parent빈칸, position 좌표값 추가
    destination_Node = Node(None, destination)          # startNode와 endNode 초기화
    open_list=[]
    close_list=[]
    open_list.append(start_Node)                    # openList에 시작 노드 추가
    
    while open_list:                                # endNode를 찾을 때까지 실행
        
        current_Node = open_list[0]                 # 현재 노드 지정(현재 값 정의)
        current_index = 0                           # 현재 인덱스 지정
        
        for index, item in enumerate(open_list):        # 이미 같은 노드가 openList에 있고, f 값이 더 크면
            if item.f < current_Node.f:                 # currentNode를 openList안에 있는 값으로 교체
                current_index = index 
                current_Node = item
        
        open_list.pop(current_index)                        # openList에서 제거하고 closedList에 추가
        close_list.append(current_Node)
        
        if current_Node == destination_Node:                # eq구문, 도착노드 판단
            path = []
            current = current_Node                          # 노드값들을 분배해줌
            while current is not None:
                x, y, z = current.position                  # x, y, z 좌표값 path할당
                #grid[z][len(grid[0])-1-y][x]= net_number                   # net number현재1
                
                path.append(current.position)
                current = current.parent                    # 추가된 값 변경
            return path, child.f
        
        children = []
        if current_Node.position[2]==0:
            for move_point in [(-1, 0, 0), (1, 0, 0),(0, 0, 1), (0, 0, -1)]:     # M0 X, Z방향 이동
                
                nodePosition=(
                    current_Node.position[0] + move_point[0], current_Node.position[1] + move_point[1], current_Node.position[2] + move_point[2] )    # 이동 할 위치의 좌표
                
                if nodePosition[0] < 0 or nodePosition[0] >= int_grid_scale[0] :             # x에서 좌표값이 그리드이 크기 내에 있을 때 
                    continue
                if nodePosition[1] < 0 or nodePosition[1] >= int_grid_scale[1]:               
                    continue
                if nodePosition[2] < 0 or nodePosition[2] >= int_grid_scale[2]:
                    continue
                
                if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != 0 :            # 움직일 위치의 좌표값에 장애물이 있는지 판단
                    if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != net_number: # 장애물이 없고, + 현재 net_number가 아니면
                        continue
                new_Node = Node(current_Node, nodePosition)                         # 주변 노드들의 각 각의 좌표 / Node클래스를 지정해줌
                children.append(new_Node) 

        elif current_Node.position[2]==1:
            for move_point in [(0, -1, 0), (0, 1, 0), (0, 0, 1), (0, 0, -1)]:     # M1 Y, Z방향 이동
                
                nodePosition=(
                    current_Node.position[0] + move_point[0], current_Node.position[1] + move_point[1], current_Node.position[2] + move_point[2] )    # 이동 할 위치의 좌표
                
                if nodePosition[0] < 0 or nodePosition[0] >= int_grid_scale[0] :             # x에서 좌표값이 그리드이 크기 내에 있을 때 
                    continue
                if nodePosition[1] < 0 or nodePosition[1] >= int_grid_scale[1]:               
                    continue
                if nodePosition[2] < 0 or nodePosition[2] >= int_grid_scale[2]:
                    continue
                
                if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != 0 :            # 움직일 위치의 좌표값에 장애물이 있는지 판단
                    if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != net_number: # 장애물이 없고, + 현재 net_number가 아니면
                        continue
                new_Node = Node(current_Node, nodePosition)                         # 주변 노드들의 각 각의 좌표 / Node클래스를 지정해줌
                children.append(new_Node) 

        elif current_Node.position[2]==2:
            for move_point in [(1, 0, 0), (-1, 0, 0), (0, 0, 1), (0, 0, -1)]:     # 2층에서는 X, Z방향으로만 이동이 가능
                
                nodePosition=(
                    current_Node.position[0] + move_point[0], current_Node.position[1] + move_point[1], current_Node.position[2] + move_point[2] )    # 이동 할 위치의 좌표
                
                if nodePosition[0] < 0 or nodePosition[0] >= int_grid_scale[0]:             # x에서 좌표값이 그리드이 크기 내에 있을 때 
                    continue
                if nodePosition[1] < 0 or nodePosition[1] >= int_grid_scale[1]:               
                    continue
                if nodePosition[2] < 0 or nodePosition[2] >= int_grid_scale[2]:
                    continue
                
                if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != 0 :            # 움직일 위치의 좌표값에 장애물이 있는지 판단
                    if grid[nodePosition[2]][int_grid_scale[1]-1-nodePosition[1]][nodePosition[0]] != net_number:
                        continue
                new_Node = Node(current_Node, nodePosition)                         # 주변 노드들의 각 각의 좌표 / Node클래스를 지정해줌
                children.append(new_Node)                                           # 주변 노드들의 집합체 
        
        for child in children:                              # 주변 노드들을 모두 루프     
            
            if child in close_list:                         # 주변 노드가 close_list에 있으면 넘어감
                continue
            
            if current_Node.position[2]==0 or child.position[2]==0:         #가중치를 1층에서는 1
                child.g = current_Node.g + 1
            elif current_Node.position[2]==1 or child.position[2]==1:       #가중치를 2층에서는 5
                child.g = current_Node.g + 3
            elif current_Node.position[2]==2 or child.position[2]==2:       #가중치를 2층에서는 5
                child.g = current_Node.g + 5

            child.h = heuristic(child, destination_Node)
            child.f = child.g + child.h
            
            if len([openNode for openNode in open_list                      # child가 open-list 중에서 존재하고, 해당 노드의 g값이 더 큰지 판단
                    if child == openNode and child.g > openNode.g])> 0:
                continue
            
            open_list.append(child)
# path를 그리드에 보기 쉽도록 나타냅니다. 
def Draw_grid(path, net_number):    
    for i in range(len(path)):      # save_path[n]입력으로 온다 ex) [(6, 7, 0), (5, 7, 0), (4, 7, 0), (4, 6, 0), (3, 6, 0), (3, 5, 0), (3, 4, 0), (3, 3, 0), (3, 2, 0)]
        x=path[i][0]
        y=path[i][1]
        z=path[i][2]
        grid[z][int_grid_scale[1]-1-y][x]= net_number+1          # net_number+1 이면 net의 번호가 된다. 
    return grid
# Path가 그려지면 주변 Net이 영향을 끼치지 못하게 장애물을 설치합니다. 
def Draw_block(path):
    for i in range(len(path)):     
        x=path[i][0]
        y=path[i][1]
        z=path[i][2]
        if (x-1, y, z) not in path:
            if x-1 < int_grid_scale[0] and x-1 >= 0:
                if grid[z][int_grid_scale[1]-1-y][x-1] == 0:
                    grid[z][int_grid_scale[1]-1-y][x-1]=9
        if (x+1, y, z) not in path:            
            if x+1 < int_grid_scale[0] and x+1 >= 0:
                if grid[z][int_grid_scale[1]-1-y][x+1] == 0:
                    grid[z][int_grid_scale[1]-1-y][x+1]=9
    return grid

def main():
    save_path = []
    save_cost = []

    for net_number in range(len(nets)):
        save_path.clear()
        save_cost.clear()
        save_path_list.clear()

        # net에서 연결 node가 한개 일때
        if int(len(nets[net_number])) == 1:
            pass

        # net에서 연결 node가 두개 일때
        elif int(len(nets[net_number])) == 2:
            path = A_star1(grid, nets[net_number][0], nets[net_number][1], net_number+1)
            # path = A_star2(grid, nets[net_number][0], nets[net_number][1], net_number+1)
            if path == None:
                return 0
            save_path.append(path[0])
            save_cost.append(int(path[1]))

            print("----------최적 경로를 찾았습니다.---------")
            print(save_path[save_cost.index(min(save_cost))])
            print("----------연결 되었습니다.---------")
            Draw_grid(save_path[save_cost.index(min(save_cost))],net_number)            # cost가 가장 작은 path를 그래프에 그린다. 만약 같으면 우선순위는 먼저 찾은 값
            print(grid)
            print("-----------블록배치 되었습니다.---------")
            Draw_block(save_path[save_cost.index(min(save_cost))])
            print(grid)
            every_thing.append(str(save_path[save_cost.index(min(save_cost))]))              #전체 path출력

        #net에서 연결 할 노드가 3개이상
        else:                                                                           
            
            for k in range ( int(len(nets[net_number]) ) - 1):                        # k는 net의 연결path의 개수        
                
                path = A_star1(grid,nets[net_number][k], nets[net_number][k+1], net_number+1 )
                if path==None:
                    return 0
                save_path.append(path[0])
                save_cost.append(int(path[1]))
                path = A_star2(grid,nets[net_number][k], nets[net_number][k+1], net_number+1 )
                if path==None:
                    return 0
                save_path.append(path[0])
                save_cost.append(int(path[1]))
                
                if k==int((len(nets[net_number])) - 2):               # 모든 path저장이 끝나고 n
                    all_path=[]
                    all_cost=[]
                    all_path.append([0])
                    all_cost.append([0])
                    
                    for collection in range(  1,int(len(nets[net_number])) ):                          # path개수를 받아 all_path 보관시에 사용 net2에서 0-6
                        for elements in range( 1, int(math.pow(2,collection)+1) ):                                       # 2*n으로 나눠진 값 반복 회수 용 
                            for repeat in range( 1,int( math.pow(2, int(len(nets[net_number]))-1) / int(math.pow(2,collection))  +1) ):    # save_path에서 나타낼 좌표를 반복회수
                                if collection==1:
                                    all_path.append(save_path[2*(collection-1)+((elements)%2)] )
                                    all_cost.append(save_cost[2*(collection-1)+((elements)%2)] )
                                else:
                                    all_path[int( math.pow(2, int(len(nets[net_number]))-1) / int(math.pow(2,collection))  )*(elements-1) + repeat]= all_path[int( math.pow(2, int(len(nets[net_number]))-1) / int(math.pow(2,collection))  )*(elements-1) + repeat]+save_path[2*(collection-1)+((elements)%2) ]
                                    all_cost[int( math.pow(2, int(len(nets[net_number]))-1) / int(math.pow(2,collection))  )*(elements-1) + repeat]= all_cost[int( math.pow(2, int(len(nets[net_number]))-1) / int(math.pow(2,collection))  )*(elements-1) + repeat]+save_cost[2*(collection-1)+((elements)%2) ]
                    
                    #이제 여기에 sort시키기
                    
                    tmp_min_cost_path=[]
                    tmp_min_cost=[]
                    save_path.clear()
                    save_cost.clear()
                    
                    for i_path in range(1, int(len(all_path))): 
                        tmp_min_cost_path.clear()
                        tmp_min_cost.clear()
                        if i_path==1:                                            
                            save_cost.append(all_cost[i_path])
                        else:
                            tmp_min_cost.append(all_cost[i_path])
                        sort=0
                        for value in all_path[i_path]:
                            
                            if i_path==1:
                                
                                if value not in save_path:
                                    save_path.append(value)
                                else:
                                    if all_path[i_path][sort][2]==0:        
                                        save_cost[0]=save_cost[0]-1                                     # z좌표가 0일 때
                                    else:
                                        save_cost[0]=save_cost[0]-5                                     # z좌표가 1일 때
                            else:
                                
                                if value not in tmp_min_cost_path:
                                    tmp_min_cost_path.append(value)
                                else:
                                    if all_path[i_path][sort][2]==0:        
                                        tmp_min_cost[0]=tmp_min_cost[0]-1                                     # z좌표가 0일 때
                                    else:
                                        tmp_min_cost[0]=tmp_min_cost[0]-5                                     # z좌표가 1일 때    
                            sort=sort+1
                        if i_path>1:
                            if save_cost[0]>tmp_min_cost[0]:
                                save_cost.clear()
                                save_path.clear()
                                save_cost.extend(tmp_min_cost)
                                save_path.extend(tmp_min_cost_path)
                        sort=sort+1
                        
                    print("----------최적 경로를 찾았습니다.---------")
                    print(save_path)
                    print(save_cost)
                    every_thing.append(str(save_path))
                    print("----------연결 되었습니다.---------")
                    Draw_grid(save_path,net_number)
                    print(grid)
                    print("-----------블록배치 되었습니다.---------")
                    Draw_block(save_path)
                    print(grid)
                    
                    
    # print(every_thing)
    return 1
    #path찾기완전끝

def select_pin(every_nets):
    for net in range(len(every_nets)):
        pp = 0
        nets.insert(net, [])
        for pin in range(1, len(every_nets[net])):
            if pin == (int(len(every_nets[net])) - 1):
                tmp_same_pin = every_nets[net][pp:pin + 1]
                nets[net].append(tmp_same_pin[random.randrange(0, len(tmp_same_pin))])

            if every_nets[net][pin][0] != every_nets[net][pin - 1][0]:
                tmp_same_pin = every_nets[net][pp:pin]
                nets[net].append(tmp_same_pin[random.randrange(0, len(tmp_same_pin))])
                pp = pin
    nets[pin].sort()

#net들을 오름차순으로 정렬한다(연결시에 효율적인 연결을 위해서)
def sort_nets(nets):                                
    tmp_to_sort=nets[int(len(nets)-1)]
    nets.pop()
    nets.insert(0,tmp_to_sort)

# 중복되는 pin들을 제거합니다.
def remove_duplicates(every_nets):
    result = []
    for sublist in every_nets:
        new_sublist = []
        for item in sublist:
            if item not in new_sublist:
                new_sublist.append(item)
        result.append(new_sublist)
    return result

n_cnt=2
while 1:
    tmp_cell_name=lines[n_cnt-2].split(":")    
    cell_name=tmp_cell_name[1]
    
    grid_scale = re.split("[ \n]",lines[n_cnt-1])     # 1번라인 값 저장( 그리드 그리기 )
    grid_scale.pop()                            # 마지막 값 뽑기
    grid_scale.pop() 
    int_grid_scale = list(map(int,grid_scale))  # int타입 변화 

    number_nets=re.split("[ \n]",lines[n_cnt])           # 2번라인 값 저장 ( 넷 개수 )
    number_nets.pop()                           # 마지막 값 뽑기
    number_nets.pop()   
    int_number_nets=list(map(int,number_nets))  # int타입 변화 

    nets_list=[]
    nets_list.clear()
    
    every_nets=[]
    every_nets.clear() 
    
    nets=[]             # 연결 할 넷 위치 값  
    nets.clear()
    for count in range(int_number_nets[0]):             # n번의 넷 위치 값 추출
        tmp_nets= re.split("[ \n]",lines[n_cnt+1+count])      # 3,4번 라인의 net위치들 추출하고 정리
        tmp_nets.pop()                                  # 마지막 값 뽑기   
        tmp_nets.pop()         
        nets_list.insert(count, list(map(int,tmp_nets)))     # int타입 변화 
    
    zyx = [int_grid_scale[2], int_grid_scale[1], int_grid_scale[0]]     # zyx순으로 해야 (x,y,z)로 읽기 편함
    grid = np.zeros((zyx), int)                                    # int타입 배열생성 
    
    #튜플값으로 nets의 정보들 저장
    for num in range(len(nets_list)):
        every_nets.insert(num,[])
        for y in range(int(len(nets_list[num]) / 3 )):
            every_nets[num].append(tuple(nets_list[num][3*y:3*y+3]))
    
    every_nets = remove_duplicates(every_nets)
    for i in range(len(every_nets)):
        every_nets[i] = sorted(every_nets[i], key=lambda coord: (coord[0], coord[1], coord[2]))

    select_pin(every_nets) #pin뽑아냄
    
    print("전체 좌표")
    print(every_nets)
    print("연결 좌표")
    print(nets)

    every_thing=[]
    every_thing.clear()
    
    save_path_list=[]
    
    # break

    for i in range(int(number_nets[0])):                                    
        for ii in range(int(len(nets[i]) )):
            grid[int(nets[i][ii][2])][len(grid[0])-int(nets[i][ii][1])-1][int(nets[i][ii][0])]=i+1
    
    print("--------초기 그리드 입니다.-----------"'\n')
    print(grid)
    print(n_cnt)

    if main() == 0 :
        for repeat in range(len(nets) - 1):
            grid = np.zeros((zyx), int)
            every_thing.clear()
            sort_nets(nets)
            for i in range(int(number_nets[0])):
                for ii in range(int(len(nets[i]))):
                    grid[int(nets[i][ii][2])][len(grid[0])-int(nets[i][ii][1])-1][int(nets[i][ii][0])]=i+1
            print("--------재배치 초기 그리드 입니다.-----------"'\n')
            print(grid)
            if main()==1:
                break

    print(every_thing)

    f.write(cell_name)
    for out in range(len(every_thing)):
        f.write(every_thing[out])
        if out==len(every_thing)-1:
            f.write('\n')
        else:
            f.write(","'\n')
        
    f.write('\n')
    
    
    if int_number_nets[0]+n_cnt+4>int(len(lines)):
        break
    else:
        n_cnt=int_number_nets[0]+4+n_cnt
    
    

f.close()