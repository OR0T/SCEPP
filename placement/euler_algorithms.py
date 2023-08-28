import copy
import numpy as np
from itertools import combinations
from collections import Counter

def euler_path(matrix, start, vertex, path_cand):
   for next in range(len(vertex)):
       while matrix[start][next]:
           matrix[start][next] -= 1
           matrix[next][start] -= 1
           euler_path(matrix, next, vertex, path_cand)
   path_cand.append(start)

def make_matrix(Cell_info, pfet = 0, nfet = 1):
    for Cellnum in range(len(Cell_info)):
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

def count_odd_degree(Cell_info, pfet = 0, nfet = 1):
    for Cellnum in range(len(Cell_info)):
        Cell_info[Cellnum].p_odd_cnt = 0
        Cell_info[Cellnum].p_start_point = []
        Cell_info[Cellnum].n_odd_cnt = 0
        Cell_info[Cellnum].n_start_point = []
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


def add_dummy(Cell_info, dummy_cell_info, dummy_cell_num = 0, pfet = 0, nfet = 1):
    for Cellnum in range(len(Cell_info)):
        if (Cell_info[Cellnum].p_odd_cnt >= 3) | (Cell_info[Cellnum].n_odd_cnt >= 3):
            Cell_info[Cellnum].is_dummy_need = True

            if (Cell_info[Cellnum].n_odd_cnt < 3): # P graph에만 더미가 필요한 경우
                if (Cell_info[Cellnum].p_odd_cnt == 4): # 6개의 Cell 정보 추가
                    dummy_cell_num += 6
                    for _ in range(6):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    combos = list(combinations(Cell_info[Cellnum].p_start_point, 2))
                    tmp_num = dummy_cell_num - 1
                    for i in range(len(combos)):
                        dummy_cell_info[tmp_num].edge.append('dummy')
                        dummy_cell_info[tmp_num].p_dummy_cnt = 1
                        dummy_cell_info[tmp_num].p_matrix[combos[i][0]][combos[i][1]] += 1
                        dummy_cell_info[tmp_num].p_matrix[combos[i][1]][combos[i][0]] += 1
                        dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[combos[i][1]]])
                        dummy_cell_info[tmp_num].is_dummy_need = False
                        tmp_num -= 1

                elif (Cell_info[Cellnum].p_odd_cnt == 6): # 15개의 Cell 정보 추가
                    dummy_cell_num += 15
                    for _ in range(15):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    combos = list(combinations(Cell_info[Cellnum].p_start_point, 4))
                    for i in range(len(combos)):
                        dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy'])
                        dummy_cell_info[tmp_num].p_dummy_cnt = 2
                        dummy_cell_info[tmp_num].p_matrix[combos[i][0]][combos[i][1]]
                        dummy_cell_info[tmp_num].p_matrix[combos[i][1]][combos[i][0]]
                        dummy_cell_info[tmp_num].p_matrix[combos[i][2]][combos[i][3]]
                        dummy_cell_info[tmp_num].p_matrix[combos[i][3]][combos[i][2]]
                        dummy_cell_info[tmp_num].tr_info[pfet].append(dummy_cell_info[tmp_num].p_vertex[combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[combos[i][1]])
                        dummy_cell_info[tmp_num].tr_info[pfet].append(dummy_cell_info[tmp_num].p_vertex[combos[i][2]], 'dummy', dummy_cell_info[tmp_num].p_vertex[combos[i][3]])
                        dummy_cell_info[tmp_num].is_dummy_need = False
                        tmp_num -= 1
                        
                else : # 28개의 Cell 정보 추가
                    dummy_cell_num += 28
                    for _ in range(28):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    combos = list(combinations(Cell_info[Cellnum].p_start_point, 6))
                    for i in range(len(combos)):
                        dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy', 'dummy'])
                        dummy_cell_info[tmp_num].p_dummy_cnt = 3
                        dummy_cell_info[tmp_num].p_matrix[combos[i][0]][combos[i][1]] += 1
                        dummy_cell_info[tmp_num].p_matrix[combos[i][1]][combos[i][0]] += 1
                        dummy_cell_info[tmp_num].p_matrix[combos[i][2]][combos[i][3]] += 1
                        dummy_cell_info[tmp_num].p_matrix[combos[i][3]][combos[i][2]] += 1
                        dummy_cell_info[tmp_num].p_matrix[combos[i][4]][combos[i][5]] += 1
                        dummy_cell_info[tmp_num].p_matrix[combos[i][5]][combos[i][4]] += 1
                        dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[combos[i][1]]])
                        dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[combos[i][2]], 'dummy', dummy_cell_info[tmp_num].p_vertex[combos[i][3]]])
                        dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[combos[i][4]], 'dummy', dummy_cell_info[tmp_num].p_vertex[combos[i][5]]])
                        dummy_cell_info[tmp_num].is_dummy_need = False
                        tmp_num -= 1

            elif (Cell_info[Cellnum].p_odd_cnt < 3): # N graph에만 더미가 필요한 경우
                if (Cell_info[Cellnum].n_odd_cnt == 4): # 5개의 Cell 정보 추가
                    dummy_cell_num += 6
                    for _ in range(6):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    combos = list(combinations(Cell_info[Cellnum].n_start_point, 2))
                    tmp_num = dummy_cell_num - 1
                    for i in range(len(combos)):
                        dummy_cell_info[tmp_num].edge.append('dummy')
                        dummy_cell_info[tmp_num].n_dummy_cnt = 1
                        dummy_cell_info[tmp_num].n_matrix[combos[i][0]][combos[i][1]] += 1
                        dummy_cell_info[tmp_num].n_matrix[combos[i][1]][combos[i][0]] += 1
                        dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[combos[i][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[combos[i][1]]])
                        dummy_cell_info[tmp_num].is_dummy_need = False
                        tmp_num -= 1

                elif (Cell_info[Cellnum].n_odd_cnt == 6): # 15개의 Cell 정보 추가
                    dummy_cell_num += 15
                    for _ in range(15):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    combos = list(combinations(Cell_info[Cellnum].n_start_point, 4))
                    for i in range(len(combos)):
                        dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy'])
                        dummy_cell_info[tmp_num].n_dummy_cnt = 2
                        dummy_cell_info[tmp_num].n_matrix[combos[i][0]][combos[i][1]]
                        dummy_cell_info[tmp_num].n_matrix[combos[i][1]][combos[i][0]]
                        dummy_cell_info[tmp_num].n_matrix[combos[i][2]][combos[i][3]]
                        dummy_cell_info[tmp_num].n_matrix[combos[i][3]][combos[i][2]]
                        dummy_cell_info[tmp_num].tr_info[nfet].append(dummy_cell_info[tmp_num].n_vertex[combos[i][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[combos[i][1]])
                        dummy_cell_info[tmp_num].tr_info[nfet].append(dummy_cell_info[tmp_num].n_vertex[combos[i][2]], 'dummy', dummy_cell_info[tmp_num].n_vertex[combos[i][3]])
                        dummy_cell_info[tmp_num].is_dummy_need = False
                        tmp_num -= 1

                else : # 28개의 Cell 정보 추가
                    dummy_cell_num += 28
                    for _ in range(28):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    combos = list(combinations(Cell_info[Cellnum].n_start_point, 6))
                    for i in range(len(combos)):
                        dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy', 'dummy'])
                        dummy_cell_info[tmp_num].n_dummy_cnt = 3
                        dummy_cell_info[tmp_num].n_matrix[combos[i][0]][combos[i][1]] += 1
                        dummy_cell_info[tmp_num].n_matrix[combos[i][1]][combos[i][0]] += 1
                        dummy_cell_info[tmp_num].n_matrix[combos[i][2]][combos[i][3]] += 1
                        dummy_cell_info[tmp_num].n_matrix[combos[i][3]][combos[i][2]] += 1
                        dummy_cell_info[tmp_num].n_matrix[combos[i][4]][combos[i][5]] += 1
                        dummy_cell_info[tmp_num].n_matrix[combos[i][5]][combos[i][4]] += 1
                        dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[combos[i][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[combos[i][1]]])
                        dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[combos[i][2]], 'dummy', dummy_cell_info[tmp_num].n_vertex[combos[i][3]]])
                        dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[combos[i][4]], 'dummy', dummy_cell_info[tmp_num].n_vertex[combos[i][5]]])
                        dummy_cell_info[tmp_num].is_dummy_need = False
                        tmp_num -= 1

            if (Cell_info[Cellnum].p_odd_cnt >= 3) & (Cell_info[Cellnum].n_odd_cnt >= 3): # P N graph 모두 dummy가 필요한 경우
                if (Cell_info[Cellnum].p_odd_cnt == 4) & (Cell_info[Cellnum].n_odd_cnt == 4):
                    dummy_cell_num += 36
                    for _ in range(36):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1

                    p_combos = list(combinations(Cell_info[Cellnum].p_start_point, 2))
                    n_combos = list(combinations(Cell_info[Cellnum].n_start_point, 2))

                    for i in range(len(p_combos)):
                        for j in range(len(n_combos)):
                            dummy_cell_info[tmp_num].edge.append('dummy')
                            dummy_cell_info[tmp_num].p_dummy_cnt = 1
                            dummy_cell_info[tmp_num].n_dummy_cnt = 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][0]][p_combos[i][1]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][1]][p_combos[i][0]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][0]][n_combos[j][1]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][1]][n_combos[j][0]] += 1
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][1]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][1]]])
                            dummy_cell_info[tmp_num].is_dummy_need = False
                            tmp_num -= 1

                elif (Cell_info[Cellnum].p_odd_cnt == 4) & (Cell_info[Cellnum].n_odd_cnt == 6):
                    dummy_cell_num += 90
                    for _ in range(90):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    
                    p_combos = list(combinations(Cell_info[Cellnum].p_start_point, 2))
                    n_combos = list(combinations(Cell_info[Cellnum].n_start_point, 4))

                    for i in range(len(p_combos)):
                        for j in range(len(n_combos)):
                            dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy'])
                            dummy_cell_info[tmp_num].p_dummy_cnt = 1
                            dummy_cell_info[tmp_num].n_dummy_cnt = 2
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][0]][p_combos[i][1]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][1]][p_combos[i][0]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][0]][n_combos[j][1]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][1]][n_combos[j][0]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][2]][n_combos[j][3]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][3]][n_combos[j][2]] += 1
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][1]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][1]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][2]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][3]]])
                            dummy_cell_info[tmp_num].is_dummy_need = False
                            tmp_num -= 1

                elif (Cell_info[Cellnum].p_odd_cnt == 4) & (Cell_info[Cellnum].n_odd_cnt == 8):
                    dummy_cell_num += 168
                    for _ in range(168):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1

                    p_combos = list(combinations(Cell_info[Cellnum].p_start_point, 2))
                    n_combos = list(combinations(Cell_info[Cellnum].n_start_point, 6))

                    for i in range(len(p_combos)):
                        for j in range(len(n_combos)):
                            dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy', 'dummy'])
                            dummy_cell_info[tmp_num].p_dummy_cnt = 1
                            dummy_cell_info[tmp_num].n_dummy_cnt = 3
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][0]][p_combos[i][1]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][1]][p_combos[i][0]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][0]][n_combos[j][1]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][1]][n_combos[j][0]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][2]][n_combos[j][3]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][3]][n_combos[j][2]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][4]][n_combos[j][5]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][5]][n_combos[j][4]] += 1
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][1]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][1]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][2]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][3]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][4]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][5]]])
                            dummy_cell_info[tmp_num].is_dummy_need = False
                            tmp_num -= 1

                elif (Cell_info[Cellnum].p_odd_cnt == 6) & (Cell_info[Cellnum].n_odd_cnt == 4):
                    dummy_cell_num += 90
                    for _ in range(90):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    
                    p_combos = list(combinations(Cell_info[Cellnum].p_start_point, 4))
                    n_combos = list(combinations(Cell_info[Cellnum].n_start_point, 2))

                    for i in range(len(p_combos)):
                        for j in range(len(n_combos)):
                            dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy'])
                            dummy_cell_info[tmp_num].p_dummy_cnt = 2
                            dummy_cell_info[tmp_num].n_dummy_cnt = 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][0]][p_combos[i][1]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][1]][p_combos[i][0]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][2]][p_combos[i][3]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][3]][p_combos[i][2]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][0]][n_combos[j][1]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][1]][n_combos[j][0]] += 1
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][1]]])
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][2]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][3]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][1]]])
                            dummy_cell_info[tmp_num].is_dummy_need = False
                            tmp_num -= 1

                elif (Cell_info[Cellnum].p_odd_cnt == 6) & (Cell_info[Cellnum].n_odd_cnt == 6):
                    dummy_cell_num += 225
                    for _ in range(225):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    
                    p_combos = list(combinations(Cell_info[Cellnum].p_start_point, 4))
                    n_combos = list(combinations(Cell_info[Cellnum].n_start_point, 4))

                    for i in range(len(p_combos)):
                        for j in range(len(n_combos)):
                            dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy'])
                            dummy_cell_info[tmp_num].p_dummy_cnt = 2
                            dummy_cell_info[tmp_num].n_dummy_cnt = 2
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][0]][p_combos[i][1]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][1]][p_combos[i][0]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][2]][p_combos[i][3]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][3]][p_combos[i][2]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][0]][n_combos[j][1]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][1]][n_combos[j][0]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][2]][n_combos[j][3]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][3]][n_combos[j][2]] += 1
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][1]]])
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][2]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][3]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][1]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][2]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][3]]])
                            dummy_cell_info[tmp_num].is_dummy_need = False
                            tmp_num -= 1

                elif (Cell_info[Cellnum].p_odd_cnt == 6) & (Cell_info[Cellnum].n_odd_cnt == 8):
                    dummy_cell_num += 420
                    for _ in range(420):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    
                    p_combos = list(combinations(Cell_info[Cellnum].p_start_point, 4))
                    n_combos = list(combinations(Cell_info[Cellnum].n_start_point, 6))

                    for i in range(len(p_combos)):
                        for j in range(len(n_combos)):
                            dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy', 'dummy'])
                            dummy_cell_info[tmp_num].p_dummy_cnt = 2
                            dummy_cell_info[tmp_num].n_dummy_cnt = 3
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][0]][p_combos[i][1]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][1]][p_combos[i][0]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][2]][p_combos[i][3]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][3]][p_combos[i][2]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][0]][n_combos[j][1]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][1]][n_combos[j][0]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][2]][n_combos[j][3]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][3]][n_combos[j][2]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][4]][n_combos[j][5]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][5]][n_combos[j][4]] += 1
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][1]]])
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][2]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][3]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][1]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][2]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][3]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][4]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][5]]])
                            dummy_cell_info[tmp_num].is_dummy_need = False
                            tmp_num -= 1

                elif (Cell_info[Cellnum].p_odd_cnt == 8) & (Cell_info[Cellnum].n_odd_cnt == 4):
                    dummy_cell_num += 168
                    for _ in range(168):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    
                    p_combos = list(combinations(Cell_info[Cellnum].p_start_point, 6))
                    n_combos = list(combinations(Cell_info[Cellnum].n_start_point, 2))

                    for i in range(len(p_combos)):
                        for j in range(len(n_combos)):
                            dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy', 'dummy'])
                            dummy_cell_info[tmp_num].p_dummy_cnt = 3
                            dummy_cell_info[tmp_num].n_dummy_cnt = 2
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][0]][p_combos[i][1]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][1]][p_combos[i][0]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][2]][p_combos[i][3]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][3]][p_combos[i][2]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][4]][p_combos[i][5]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][5]][p_combos[i][4]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][0]][n_combos[j][1]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][1]][n_combos[j][0]] += 1
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][1]]])
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][2]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][3]]])
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][4]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][5]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][1]]])
                            dummy_cell_info[tmp_num].is_dummy_need = False
                            tmp_num -= 1

                elif (Cell_info[Cellnum].p_odd_cnt == 8) & (Cell_info[Cellnum].n_odd_cnt == 6):
                    dummy_cell_num += 420
                    for _ in range(420):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    
                    p_combos = list(combinations(Cell_info[Cellnum].p_start_point, 6))
                    n_combos = list(combinations(Cell_info[Cellnum].n_start_point, 4))

                    for i in range(len(p_combos)):
                        for j in range(len(n_combos)):
                            dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy', 'dummy'])
                            dummy_cell_info[tmp_num].p_dummy_cnt = 3
                            dummy_cell_info[tmp_num].n_dummy_cnt = 2
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][0]][p_combos[i][1]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][1]][p_combos[i][0]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][2]][p_combos[i][3]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][3]][p_combos[i][2]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][4]][p_combos[i][5]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][5]][p_combos[i][4]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][0]][n_combos[j][1]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][1]][n_combos[j][0]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][2]][n_combos[j][3]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][3]][n_combos[j][2]] += 1
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][1]]])
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][2]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][3]]])
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][4]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][5]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][1]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][2]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][3]]])
                            dummy_cell_info[tmp_num].is_dummy_need = False
                            tmp_num -= 1

                elif (Cell_info[Cellnum].p_odd_cnt == 8) & (Cell_info[Cellnum].n_odd_cnt == 8):
                    dummy_cell_num += 784
                    for _ in range(784):
                        dummy_cell_info.append(copy.deepcopy(Cell_info[Cellnum]))
                    tmp_num = dummy_cell_num - 1
                    
                    p_combos = list(combinations(Cell_info[Cellnum].p_start_point, 6))
                    n_combos = list(combinations(Cell_info[Cellnum].n_start_point, 6))

                    for i in range(len(p_combos)):
                        for j in range(len(n_combos)):
                            dummy_cell_info[tmp_num].edge.extend(['dummy', 'dummy', 'dummy'])
                            dummy_cell_info[tmp_num].p_dummy_cnt = 3
                            dummy_cell_info[tmp_num].n_dummy_cnt = 3
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][0]][p_combos[i][1]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][1]][p_combos[i][0]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][2]][p_combos[i][3]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][3]][p_combos[i][2]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][4]][p_combos[i][5]] += 1
                            dummy_cell_info[tmp_num].p_matrix[p_combos[i][5]][p_combos[i][4]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][0]][n_combos[j][1]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][1]][n_combos[j][0]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][2]][n_combos[j][3]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][3]][n_combos[j][2]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][4]][n_combos[j][5]] += 1
                            dummy_cell_info[tmp_num].n_matrix[n_combos[j][5]][n_combos[j][4]] += 1
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][0]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][1]]])
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][2]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][3]]])
                            dummy_cell_info[tmp_num].tr_info[pfet].append([dummy_cell_info[tmp_num].p_vertex[p_combos[i][4]], 'dummy', dummy_cell_info[tmp_num].p_vertex[p_combos[i][5]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][0]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][1]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][2]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][3]]])
                            dummy_cell_info[tmp_num].tr_info[nfet].append([dummy_cell_info[tmp_num].n_vertex[n_combos[j][4]], 'dummy', dummy_cell_info[tmp_num].n_vertex[n_combos[j][5]]])
                            dummy_cell_info[tmp_num].is_dummy_need = False
                            tmp_num -= 1


def find_loop(Cell_info):
    # P, N graph에 loop형태를 찾는다.
    for cand in range(len(Cell_info.p_euler_path_cand)):
        counter = Counter(Cell_info.p_euler_path_cand[cand])
        Cell_info.p_loop_num.append([])
        Cell_info.p_loop_cnt.append([])
        for num, count in counter.items():
            if count > 1:
                Cell_info.is_p_loop = True
                Cell_info.p_loop_num[cand].append(num)
                Cell_info.p_loop_cnt[cand].append(count)
    for cand in range(len(Cell_info.n_euler_path_cand)):
        counter = Counter(Cell_info.n_euler_path_cand[cand])
        Cell_info.n_loop_num.append([])
        Cell_info.n_loop_cnt.append([])
        for num, count in counter.items():
            if count > 1:
                Cell_info.is_n_loop = True
                Cell_info.n_loop_num[cand].append(num)
                Cell_info.n_loop_cnt[cand].append(count)

def loop_start_point(Cell_info):
    if Cell_info.is_p_loop:
        for cand in range(len(Cell_info.p_euler_path_cand)):
            Cell_info.p_loop_start_point.append([])
            for loop_num in Cell_info.p_loop_num[cand]:
                Cell_info.p_loop_start_point[cand].append([index for index, value in enumerate(Cell_info.p_euler_path_cand[cand]) if value == loop_num])
    if Cell_info.is_n_loop:
        for cand in range(len(Cell_info.n_euler_path_cand)):
            Cell_info.n_loop_start_point.append([])
            for loop_num in Cell_info.n_loop_num[cand]:
                Cell_info.n_loop_start_point[cand].append([index for index, value in enumerate(Cell_info.n_euler_path_cand[cand]) if value == loop_num])

def completion(Cell_info, Cellnum, pfet = 0, nfet = 1):
        for cand in range(len(Cell_info[Cellnum].p_loop_start_point)):
            for i in range(len(Cell_info[Cellnum].p_loop_start_point[cand])):
                if len(Cell_info[Cellnum].p_loop_start_point[cand][i]) > 2:
                    p_combos = list(combinations(Cell_info[Cellnum].p_loop_start_point[cand][i], 2))
                    for j in range(len(p_combos)):
                        loop_path = Cell_info[Cellnum].p_euler_path_cand[cand][p_combos[j][0] + 1 : p_combos[j][1]]
                        if len(loop_path) > 1:
                            tmp_path_cand = copy.deepcopy(Cell_info[Cellnum].p_euler_path_cand[cand])
                            tmp_path_cand[p_combos[j][0] + 1 : p_combos[j][1]] = loop_path[::-1]
                            Cell_info[Cellnum].p_euler_path_cand.append(tmp_path_cand)
                elif len(Cell_info[Cellnum].p_loop_start_point[cand][i]) == 2:
                    loop_path = Cell_info[Cellnum].p_euler_path_cand[cand][Cell_info[Cellnum].p_loop_start_point[cand][i][0] + 1 : Cell_info[Cellnum].p_loop_start_point[cand][i][1]]
                    if len(loop_path) > 1:
                        tmp_path_cand = copy.deepcopy(Cell_info[Cellnum].p_euler_path_cand[cand])
                        tmp_path_cand[Cell_info[Cellnum].p_loop_start_point[cand][i][0] + 1 : Cell_info[Cellnum].p_loop_start_point[cand][i][1]] = loop_path[::-1]
                        Cell_info[Cellnum].p_euler_path_cand.append(tmp_path_cand)

        for cand in range(len(Cell_info[Cellnum].n_loop_start_point)):
            for i in range(len(Cell_info[Cellnum].n_loop_start_point[cand])):
                if len(Cell_info[Cellnum].n_loop_start_point[cand][i]) > 2:
                    n_combos = list(combinations(Cell_info[Cellnum].n_loop_start_point[cand][i], 2))
                    for j in range(len(n_combos)):
                        loop_path = Cell_info[Cellnum].n_euler_path_cand[cand][n_combos[j][0] + 1 : n_combos[j][1]]
                        if len(loop_path) > 1:
                            tmp_path_cand = copy.deepcopy(Cell_info[Cellnum].n_euler_path_cand[cand])
                            tmp_path_cand[n_combos[j][0] + 1 : n_combos[j][1]] = loop_path[::-1]
                            Cell_info[Cellnum].n_euler_path_cand.append(tmp_path_cand)
                elif len(Cell_info[Cellnum].n_loop_start_point[cand][i]) == 2:
                    loop_path = Cell_info[Cellnum].n_euler_path_cand[cand][Cell_info[Cellnum].n_loop_start_point[cand][i][0] + 1 : Cell_info[Cellnum].n_loop_start_point[cand][i][1]]
                    if len(loop_path) > 1:
                        tmp_path_cand = copy.deepcopy(Cell_info[Cellnum].n_euler_path_cand[cand])
                        tmp_path_cand[Cell_info[Cellnum].n_loop_start_point[cand][i][0] + 1 : Cell_info[Cellnum].n_loop_start_point[cand][i][1]] = loop_path[::-1]
                        Cell_info[Cellnum].n_euler_path_cand.append(tmp_path_cand)


        # Euler path를 기반으로 poly ordering을 찾는다.
        for cand in range(len(Cell_info[Cellnum].p_euler_path_cand)):
            tmp_ordering = []
            # Cell_info[Cellnum].p_poly_ordering.append([])
            tmp_tr_info = Cell_info[Cellnum].tr_info[pfet][:]
            for vertex_num in range(len(Cell_info[Cellnum].p_euler_path_cand[cand]) - 1):
                for tr_num in range(len(tmp_tr_info)):
                    if ((Cell_info[Cellnum].p_vertex[Cell_info[Cellnum].p_euler_path_cand[cand][vertex_num]] == tmp_tr_info[tr_num][0])\
                    & (Cell_info[Cellnum].p_vertex[Cell_info[Cellnum].p_euler_path_cand[cand][vertex_num + 1]] == tmp_tr_info[tr_num][2]))\
                    | ((Cell_info[Cellnum].p_vertex[Cell_info[Cellnum].p_euler_path_cand[cand][vertex_num]] == tmp_tr_info[tr_num][2])\
                    & (Cell_info[Cellnum].p_vertex[Cell_info[Cellnum].p_euler_path_cand[cand][vertex_num + 1]] == tmp_tr_info[tr_num][0])):
                        tmp_ordering.append(tmp_tr_info[tr_num][1])
                        # Cell_info[Cellnum].p_poly_ordering[cand].append(tmp_tr_info[tr_num][1])
                        tmp_tr_info[tr_num] = ['used', 'used', 'used']
                        break
            Cell_info[Cellnum].p_poly_ordering.extend([tmp_ordering])

        # 역방향 탐색
        for cand in range(len(Cell_info[Cellnum].p_euler_path_cand)):
            tmp_ordering = []
            # Cell_info[Cellnum].p_poly_ordering.append([])
            tmp_tr_info = Cell_info[Cellnum].tr_info[pfet][:]
            for vertex_num in range(len(Cell_info[Cellnum].p_euler_path_cand[cand]) - 1):
                for tr_num in range(len(tmp_tr_info)-1, -1, -1):
                    if ((Cell_info[Cellnum].p_vertex[Cell_info[Cellnum].p_euler_path_cand[cand][vertex_num]] == tmp_tr_info[tr_num][0])\
                        & (Cell_info[Cellnum].p_vertex[Cell_info[Cellnum].p_euler_path_cand[cand][vertex_num + 1]] == tmp_tr_info[tr_num][2]))\
                        | ((Cell_info[Cellnum].p_vertex[Cell_info[Cellnum].p_euler_path_cand[cand][vertex_num]] == tmp_tr_info[tr_num][2])\
                        & (Cell_info[Cellnum].p_vertex[Cell_info[Cellnum].p_euler_path_cand[cand][vertex_num + 1]] == tmp_tr_info[tr_num][0])):
                        tmp_ordering.append(tmp_tr_info[tr_num][1])
                        # Cell_info[Cellnum].p_poly_ordering[cand].append(tmp_tr_info[tr_num][1])
                        tmp_tr_info[tr_num] = ['used', 'used', 'used']
                        break
            Cell_info[Cellnum].p_poly_ordering.extend([tmp_ordering])
            Cell_info[Cellnum].p_euler_path_cand.extend([Cell_info[Cellnum].p_euler_path_cand[cand]])

        for cand in range(len(Cell_info[Cellnum].n_euler_path_cand)):
            tmp_ordering = []
            # Cell_info[Cellnum].n_poly_ordering.append([])
            tmp_tr_info = Cell_info[Cellnum].tr_info[nfet][:]
            for vertex_num in range(len(Cell_info[Cellnum].n_euler_path_cand[cand]) - 1):
                for tr_num in range(len(tmp_tr_info)):
                    if ((Cell_info[Cellnum].n_vertex[Cell_info[Cellnum].n_euler_path_cand[cand][vertex_num]] == tmp_tr_info[tr_num][0])\
                        & (Cell_info[Cellnum].n_vertex[Cell_info[Cellnum].n_euler_path_cand[cand][vertex_num + 1]] == tmp_tr_info[tr_num][2]))\
                        | ((Cell_info[Cellnum].n_vertex[Cell_info[Cellnum].n_euler_path_cand[cand][vertex_num]] == tmp_tr_info[tr_num][2])\
                        & (Cell_info[Cellnum].n_vertex[Cell_info[Cellnum].n_euler_path_cand[cand][vertex_num + 1]] == tmp_tr_info[tr_num][0])):
                        tmp_ordering.append(tmp_tr_info[tr_num][1])
                        # Cell_info[Cellnum].n_poly_ordering[cand].append(tmp_tr_info[tr_num][1])
                        tmp_tr_info[tr_num] = ['used', 'used', 'used']
                        break
            Cell_info[Cellnum].n_poly_ordering.extend([tmp_ordering])

        # 역방향 탐색
        for cand in range(len(Cell_info[Cellnum].n_euler_path_cand)):
            tmp_ordering = []
            # Cell_info[Cellnum].n_poly_ordering.append([])
            tmp_tr_info = Cell_info[Cellnum].tr_info[nfet][:]
            for vertex_num in range(len(Cell_info[Cellnum].n_euler_path_cand[cand]) - 1):
                for tr_num in range(len(tmp_tr_info)-1, -1, -1):
                    if ((Cell_info[Cellnum].n_vertex[Cell_info[Cellnum].n_euler_path_cand[cand][vertex_num]] == tmp_tr_info[tr_num][0])\
                        & (Cell_info[Cellnum].n_vertex[Cell_info[Cellnum].n_euler_path_cand[cand][vertex_num + 1]] == tmp_tr_info[tr_num][2]))\
                        | ((Cell_info[Cellnum].n_vertex[Cell_info[Cellnum].n_euler_path_cand[cand][vertex_num]] == tmp_tr_info[tr_num][2])\
                        & (Cell_info[Cellnum].n_vertex[Cell_info[Cellnum].n_euler_path_cand[cand][vertex_num + 1]] == tmp_tr_info[tr_num][0])):
                        tmp_ordering.append(tmp_tr_info[tr_num][1])
                        # Cell_info[Cellnum].n_poly_ordering[cand].append(tmp_tr_info[tr_num][1])
                        tmp_tr_info[tr_num] = ['used', 'used', 'used']
                        break
            Cell_info[Cellnum].n_poly_ordering.extend([tmp_ordering])
            Cell_info[Cellnum].n_euler_path_cand.extend([Cell_info[Cellnum].n_euler_path_cand[cand]])
        # NP ordering 찾기 완료

        # NP ordering candidates중에서 겹치는 poly ordering을 최종 Cell의 ordering으로 추가한다.
        for p_ordering in range(len(Cell_info[Cellnum].p_poly_ordering)):
            for n_ordering in range(len(Cell_info[Cellnum].n_poly_ordering)):
                if ('dummy' not in Cell_info[Cellnum].p_poly_ordering[p_ordering]) & ('dummy' not in Cell_info[Cellnum].n_poly_ordering[n_ordering]):
                    # 정방향 vs 정방향 비교
                    if (Cell_info[Cellnum].p_poly_ordering[p_ordering] == Cell_info[Cellnum].n_poly_ordering[n_ordering]) \
                        & (Cell_info[Cellnum].n_poly_ordering[n_ordering] not in Cell_info[Cellnum].poly_ordering):
                        Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                        # Diffusion chaining도 저장한다.
                        tmp_p_chain = []
                        tmp_n_chain = []
                        for i, j in zip(Cell_info[Cellnum].p_euler_path_cand[p_ordering], Cell_info[Cellnum].n_euler_path_cand[n_ordering]):
                            tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                            tmp_n_chain.append(Cell_info[Cellnum].n_vertex[j])
                        Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                        Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)
                    # 역방향 vs 정방향 비교
                    elif (Cell_info[Cellnum].p_poly_ordering[p_ordering][::-1] == Cell_info[Cellnum].n_poly_ordering[n_ordering]): # \
                        # & (Cell_info[Cellnum].n_poly_ordering[n_ordering] not in Cell_info[Cellnum].poly_ordering):
                        # Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                        # Diffusion chaining 저장
                        tmp_p_chain = []
                        tmp_n_chain = []
                        for i, j in zip(Cell_info[Cellnum].p_euler_path_cand[p_ordering][::-1], Cell_info[Cellnum].n_euler_path_cand[n_ordering]):
                            tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                            tmp_n_chain.append(Cell_info[Cellnum].n_vertex[j])
                        if (tmp_p_chain not in Cell_info[Cellnum].p_diff_chain) | (tmp_n_chain not in Cell_info[Cellnum].n_diff_chain):
                            Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                            Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                            Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)
                    # # 정방향 vs 역방향 비교
                    # elif (Cell_info[Cellnum].p_poly_ordering[p_ordering] == Cell_info[Cellnum].n_poly_ordering[n_ordering][::-1]): # \
                    #     # & (Cell_info[Cellnum].n_poly_ordering[n_ordering] not in Cell_info[Cellnum].poly_ordering):
                    #     # Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                    #     # Diffusion chaining 저장
                    #     tmp_p_chain = []
                    #     tmp_n_chain = []
                    #     for i, j in zip(Cell_info[Cellnum].p_euler_path_cand[p_ordering], Cell_info[Cellnum].n_euler_path_cand[n_ordering][::-1]):
                    #         tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                    #         tmp_n_chain.append(Cell_info[Cellnum].n_vertex[j])
                    #     if (tmp_p_chain not in Cell_info[Cellnum].p_diff_chain) | (tmp_n_chain not in Cell_info[Cellnum].n_diff_chain):
                    #         Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                    #         Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                    #         Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)

                # dummy추가가 N, P 대칭형 및 비대칭형 (N graph와 P graph의 dummy의 갯수가 다른 경우)
                elif ('dummy' in Cell_info[Cellnum].p_poly_ordering[p_ordering]) & ('dummy' in Cell_info[Cellnum].n_poly_ordering[n_ordering]):
                    # N, P에 추가된 dummy의 갯수가 동일할 경우 -> dummy도 함께 포함하여 poly ordering을 진행한다.
                    if Cell_info[Cellnum].p_dummy_cnt == Cell_info[Cellnum].n_dummy_cnt:
                        if (Cell_info[Cellnum].p_poly_ordering[p_ordering] == Cell_info[Cellnum].n_poly_ordering[n_ordering]) \
                            & (Cell_info[Cellnum].n_poly_ordering[n_ordering] not in Cell_info[Cellnum].poly_ordering):
                            Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                            # Diffusion chaining도 저장한다.
                            tmp_p_chain = []
                            tmp_n_chain = []
                            for i, j in zip(Cell_info[Cellnum].p_euler_path_cand[p_ordering], Cell_info[Cellnum].n_euler_path_cand[n_ordering]):
                                tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                                tmp_n_chain.append(Cell_info[Cellnum].n_vertex[j])
                            Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                            Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)
                        # 역방향 vs 정방향 비교
                        elif (Cell_info[Cellnum].p_poly_ordering[p_ordering][::-1] == Cell_info[Cellnum].n_poly_ordering[n_ordering]): # \
                            # & (Cell_info[Cellnum].n_poly_ordering[n_ordering] not in Cell_info[Cellnum].poly_ordering):
                            # Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                            # Diffusion chaining 저장
                            tmp_p_chain = []
                            tmp_n_chain = []
                            for i, j in zip(Cell_info[Cellnum].p_euler_path_cand[p_ordering][::-1], Cell_info[Cellnum].n_euler_path_cand[n_ordering]):
                                tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                                tmp_n_chain.append(Cell_info[Cellnum].n_vertex[j])
                            # if (tmp_p_chain not in Cell_info[Cellnum].p_diff_chain) | (tmp_n_chain not in Cell_info[Cellnum].n_diff_chain):
                            Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                            Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                            Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)
                    elif Cell_info[Cellnum].p_dummy_cnt > Cell_info[Cellnum].n_dummy_cnt:
                        if (Cell_info[Cellnum].p_dummy_cnt - Cell_info[Cellnum].n_dummy_cnt) == 1:
                            pass
                        elif (Cell_info[Cellnum].p_dummy_cnt - Cell_info[Cellnum].n_dummy_cnt) == 2:
                            pass
                    elif Cell_info[Cellnum].p_dummy_cnt < Cell_info[Cellnum].n_dummy_cnt:
                        if (Cell_info[Cellnum].n_dummy_cnt - Cell_info[Cellnum].p_dummy_cnt) == 1:
                            pass
                        elif (Cell_info[Cellnum].n_dummy_cnt - Cell_info[Cellnum].p_dummy_cnt) == 2:
                            pass


                # P에만 dummy가 존재할 때 => N graph에는 dummy가 추가된 p poly ordering에 맞추어 placement
                elif ('dummy' in Cell_info[Cellnum].p_poly_ordering[p_ordering]) & ('dummy' not in Cell_info[Cellnum].n_poly_ordering[n_ordering]):
                    filtered_ordering = [item for item in Cell_info[Cellnum].p_poly_ordering[p_ordering] if item != 'dummy']
                    if (filtered_ordering == Cell_info[Cellnum].n_poly_ordering[n_ordering]) \
                        & (Cell_info[Cellnum].p_poly_ordering[p_ordering] not in Cell_info[Cellnum].poly_ordering):
                        Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].p_poly_ordering[p_ordering])
                        # Diffusion chaining도 저장한다.
                        tmp_p_chain = []
                        tmp_n_chain = []
                        indexes_of_dummy = [index for index, item in enumerate(Cell_info[Cellnum].p_poly_ordering[p_ordering]) if item == 'dummy']
                        for i in Cell_info[Cellnum].p_euler_path_cand[p_ordering]:
                            tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                        for i, j in zip(Cell_info[Cellnum].n_euler_path_cand[n_ordering], range(len(Cell_info[Cellnum].n_euler_path_cand[n_ordering]))):
                            tmp_n_chain.append(Cell_info[Cellnum].n_vertex[i])
                            x = 0
                            if j == indexes_of_dummy[x]:
                                x += 1
                                tmp_n_chain.append(Cell_info[Cellnum].n_vertex[i])
                        Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                        Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)
                    # 역방향 vs 정방향 비교
                    elif (filtered_ordering[::-1] == Cell_info[Cellnum].n_poly_ordering[n_ordering]): # \
                        # & (Cell_info[Cellnum].p_poly_ordering[p_ordering][::-1] not in Cell_info[Cellnum].poly_ordering):
                        # Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].p_poly_ordering[p_ordering][::-1])
                        # Diffusion chaining
                        tmp_p_chain = []
                        tmp_n_chain = []
                        indexes_of_dummy = [index for index, item in enumerate(Cell_info[Cellnum].p_poly_ordering[p_ordering][::-1]) if item == 'dummy']
                        for i in Cell_info[Cellnum].p_euler_path_cand[p_ordering][::-1]:
                            tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                        for i, j in zip(Cell_info[Cellnum].n_euler_path_cand[n_ordering], range(len(Cell_info[Cellnum].n_euler_path_cand[n_ordering]))):
                            tmp_n_chain.append(Cell_info[Cellnum].n_vertex[i])
                            x = 0
                            if j == indexes_of_dummy[x]:
                                x += 1
                                tmp_n_chain.append(Cell_info[Cellnum].n_vertex[i])
                        if (tmp_p_chain not in Cell_info[Cellnum].p_diff_chain) | (tmp_n_chain not in Cell_info[Cellnum].n_diff_chain):
                            Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].p_poly_ordering[p_ordering][::-1])
                            Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                            Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)
                    # 정방향 vs 역방향 비교
                    # elif (filtered_ordering == Cell_info[Cellnum].n_poly_ordering[n_ordering][::-1]): # \
                    #     # & (Cell_info[Cellnum].p_poly_ordering[p_ordering] not in Cell_info[Cellnum].poly_ordering):
                    #     # Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].p_poly_ordering[p_ordering])
                    #     # Diffusion chaining
                    #     tmp_p_chain = []
                    #     tmp_n_chain = []
                    #     indexes_of_dummy = [index for index, item in enumerate(Cell_info[Cellnum].p_poly_ordering[p_ordering]) if item == 'dummy']
                    #     for i in Cell_info[Cellnum].p_euler_path_cand[p_ordering]:
                    #         tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                    #     for i, j in zip(Cell_info[Cellnum].n_euler_path_cand[n_ordering][::-1], range(len(Cell_info[Cellnum].n_euler_path_cand[n_ordering]))):
                    #         tmp_n_chain.append(Cell_info[Cellnum].n_vertex[i])
                    #         x = 0
                    #         if j == indexes_of_dummy[x]:
                    #             tmp_n_chain.append(Cell_info[Cellnum].n_vertex[i])
                    #     if (tmp_p_chain not in Cell_info[Cellnum].p_diff_chain) | (tmp_n_chain not in Cell_info[Cellnum].n_diff_chain):
                    #         Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].p_poly_ordering[p_ordering])
                    #         Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                    #         Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)

                # N에만 dummy가 존재할 때 => P graph에는 dummy가 추가된 n poly ordering에 맞추어 placement
                elif('dummy' not in Cell_info[Cellnum].p_poly_ordering[p_ordering]) & ('dummy' in Cell_info[Cellnum].n_poly_ordering[n_ordering]):
                    filtered_ordering = [item for item in Cell_info[Cellnum].n_poly_ordering[n_ordering] if item != 'dummy']
                    if (filtered_ordering == Cell_info[Cellnum].p_poly_ordering[p_ordering]) \
                        & (Cell_info[Cellnum].n_poly_ordering[n_ordering] not in Cell_info[Cellnum].poly_ordering):
                        Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                        # Diffusion chaining도 저장한다.
                        tmp_p_chain = []
                        tmp_n_chain = []
                        indexes_of_dummy = [index for index, item in enumerate(Cell_info[Cellnum].n_poly_ordering[n_ordering]) if item == 'dummy']
                        for i in Cell_info[Cellnum].n_euler_path_cand[n_ordering]:
                            tmp_n_chain.append(Cell_info[Cellnum].n_vertex[i])
                        for i, j in zip(Cell_info[Cellnum].p_euler_path_cand[p_ordering], range(len(Cell_info[Cellnum].p_euler_path_cand[p_ordering]))):
                            tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                            x = 0
                            if j == indexes_of_dummy[x]:
                                x += 1
                                tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                        Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                        Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)
                    # 역방향 vs 정방향 비교
                    elif (Cell_info[Cellnum].p_poly_ordering[p_ordering][::-1] == filtered_ordering): # \
                        # & (Cell_info[Cellnum].n_poly_ordering[n_ordering] not in Cell_info[Cellnum].poly_ordering):
                        # Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                        # Diffusion chaining
                        tmp_p_chain = []
                        tmp_n_chain = []
                        indexes_of_dummy = [index for index, item in enumerate(Cell_info[Cellnum].n_poly_ordering[n_ordering]) if item == 'dummy']
                        for i in Cell_info[Cellnum].n_euler_path_cand[n_ordering]:
                            tmp_n_chain.append(Cell_info[Cellnum].n_vertex[i])
                        for i, j in zip(Cell_info[Cellnum].p_euler_path_cand[p_ordering][::-1], range(len(Cell_info[Cellnum].p_euler_path_cand[p_ordering]))):
                            tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                            x = 0
                            if j == indexes_of_dummy[x]:
                                tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                        if (tmp_p_chain not in Cell_info[Cellnum].p_diff_chain) | (tmp_n_chain not in Cell_info[Cellnum].n_diff_chain):
                            Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering])
                            Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                            Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)
                    # 정방향 vs 역방향 비교
                    # elif (Cell_info[Cellnum].p_poly_ordering[p_ordering] == filtered_ordering[::-1]): # \
                    #     # & (Cell_info[Cellnum].n_poly_ordering[n_ordering][::-1] not in Cell_info[Cellnum].poly_ordering):
                    #     # Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering][::-1])
                    #     # Diffusion chaining
                    #     tmp_p_chain = []
                    #     tmp_n_chain = []
                    #     indexes_of_dummy = [index for index, item in enumerate(Cell_info[Cellnum].n_poly_ordering[n_ordering][::-1]) if item == 'dummy']
                    #     for i in Cell_info[Cellnum].n_euler_path_cand[n_ordering][::-1]:
                    #         tmp_n_chain.append(Cell_info[Cellnum].n_vertex[i])
                    #     for i, j in zip(Cell_info[Cellnum].p_euler_path_cand[p_ordering], range(len(Cell_info[Cellnum].p_euler_path_cand[p_ordering]))):
                    #         tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                    #         x = 0
                    #         if j == indexes_of_dummy[x]:
                    #             tmp_p_chain.append(Cell_info[Cellnum].p_vertex[i])
                    #     if (tmp_p_chain not in Cell_info[Cellnum].p_diff_chain) | (tmp_n_chain not in Cell_info[Cellnum].n_diff_chain):
                    #         Cell_info[Cellnum].poly_ordering.append(Cell_info[Cellnum].n_poly_ordering[n_ordering][::-1])
                    #         Cell_info[Cellnum].p_diff_chain.append(tmp_p_chain)
                    #         Cell_info[Cellnum].n_diff_chain.append(tmp_n_chain)

        # Diffusion sharing count
        Cell_info[Cellnum].diff_sharing = [0 for _ in range(len(Cell_info[Cellnum].poly_ordering))]
        for i in range(len(Cell_info[Cellnum].poly_ordering)):
            for j in range(len(Cell_info[Cellnum].p_diff_chain[i])):
                if Cell_info[Cellnum].p_diff_chain[i][j] == Cell_info[Cellnum].n_diff_chain[i][j]:
                    Cell_info[Cellnum].diff_sharing[i] += 1

def weighting_DSBPR(Cell_info, Cellnum):
    for cand in range(len(Cell_info[Cellnum].poly_ordering)):
        Cell_info[Cellnum].p_diff_w.append([])
        for diff in Cell_info[Cellnum].p_diff_chain[cand]:
            if diff == 'VDD':
                Cell_info[Cellnum].p_diff_w[cand].append(1)
            else :
                Cell_info[Cellnum].p_diff_w[cand].append(3)
        Cell_info[Cellnum].n_diff_w.append([])
        for diff in Cell_info[Cellnum].n_diff_chain[cand]:
            if diff == 'VSS':
                Cell_info[Cellnum].n_diff_w[cand].append(3)
            else :
                Cell_info[Cellnum].n_diff_w[cand].append(1)
    Cell_info[Cellnum].p_diff_w = [np.sum(row) for row in Cell_info[Cellnum].p_diff_w]
    Cell_info[Cellnum].n_diff_w = [np.sum(row) for row in Cell_info[Cellnum].n_diff_w]

    for cand in range(len(Cell_info[Cellnum].poly_ordering)):
        Cell_info[Cellnum].total_w.append(Cell_info[Cellnum].p_diff_w[cand] + Cell_info[Cellnum].n_diff_w[cand] - Cell_info[Cellnum].diff_sharing[cand])

# 삭제 예정
def euler_setup(Cell_info, pfet = 0, nfet = 1):
    for Cellnum in range(len(Cell_info)):
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