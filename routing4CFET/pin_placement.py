def routing_all(pmos, nmos, gate):
    num_pmos = list(enumerate(pmos))
    num_nmos = list(enumerate(nmos))
    num_gate = list(enumerate(gate))
    ans_list = []
    used_plist = [False] * len(pmos)
    used_nlist = [False] * len(nmos)
    used_gate = [False] * len(gate)
    for value in range(len(pmos)):
        same_list = []
        tmp_list = [value]
        used_plist[value] = True
        for i, loc in num_pmos:
            if (pmos[value] == loc) and (loc != 'VDD') and (value != i) and (used_plist[i] == False):
                # print(value, i, pmos[value], loc)
                tmp_list.append(i)
                used_plist[i] = True
        same_list.append(tmp_list)

        tmp_list = []
        for i, loc in num_nmos:
            if (pmos[value] == loc) and (loc != 'VSS') and (used_nlist[i] == False):
                # print(value, i, pmos[value], loc)
                tmp_list.append(i)
                used_nlist[i] = True
        same_list.append(tmp_list)

        tmp_list = []
        for i, loc in num_gate:
            if (pmos[value] == loc) and (used_gate[i] == False):
                # print(value, i, pmos[value], loc)
                tmp_list.append(i)
                used_gate[i] = True
        same_list.append(tmp_list)

        none_cnt = 0
        for i in same_list:
            if len(i) == 0:
                none_cnt += 1
            elif len(i) > 1:
                none_cnt -= 1
        if none_cnt != 2:
            ans_list.append(same_list)

    used_plist = [False] * len(pmos)
    used_nlist = [False] * len(nmos)
    used_gate = [False] * len(gate)
    for value in range(len(nmos)):
        same_list = []
        tmp_list = []
        for i, loc in num_pmos:
            if (nmos[value] == loc) and (loc != 'VDD') and (used_plist[i] == False):
                # print(value, i, pmos[value], loc)
                tmp_list.append(i)
                used_plist[i] = True
        same_list.append(tmp_list)

        tmp_list = [value]
        used_nlist[value] = True
        for i, loc in num_nmos:
            if (nmos[value] == loc) and (loc != 'VSS') and (value != i) and (used_nlist[i] == False):
                # print(value, i, nmos[value], loc)
                tmp_list.append(i)
                used_nlist[i] = True
        same_list.append(tmp_list)

        tmp_list = []
        for i, loc in num_gate:
            if (nmos[value] == loc) and (used_gate[i] == False):
                # print(value, i, pmos[value], loc)
                tmp_list.append(i)
                used_gate[i] = True
        same_list.append(tmp_list)

        none_cnt = 0
        for i in same_list:
            if len(i) == 0:
                none_cnt += 1
            elif len(i) > 1:
                none_cnt -= 1
        if none_cnt != 2 and same_list not in ans_list:
            ans_list.append(same_list)
    return ans_list

def write_routing(routing_list, result):
    for p_n_gate in routing_list:
        print(p_n_gate)

        for p in p_n_gate[0]:
            for i in range(2):
                # print(f"[{2 * p}, {i * 4}]")
                # print(f"[{p}, {i}]")
                result.write("%s " % (2 * p))
                result.write("%s " % (i * 3))
                result.write("0 ")

        for n in p_n_gate[1]:
            for i in range(4):
                # print(f"[{2 * n}, {i}]")
                # print(f"[{n}, {i}]")
                result.write("%s " % (2 * n))
                result.write("%s " % (i))
                result.write("0 ")

        for gate in p_n_gate[2]:
            for i in range(4):
                # print(f"[{2 * gate + 1}, {i}]")
                result.write("%s " % (2 * gate + 1))
                result.write("%s " % (i))
                result.write("0 ")

        result.write('\n')

result = open('routing_pin_result.txt', mode = 'w', encoding="utf8")

file = open("placement_result.txt", "r")

lines = file.readlines()
pmos = []
nmos = []
gate = []
for data in lines:
    if ('Name' in data):
        tmp_data = data.strip().split(' ')
        result.write('Name :')
        result.write(" %s" % tmp_data[2])
        result.write("\n")
    elif ('PMOS' in data):
        tmp_data = data.strip().split(' ')[2:]
        pmos = data.strip().split(' ')[2:]
        p_cnt = len(tmp_data)

    elif ('NMOS' in data):
        tmp_data = data.strip().split(' ')[2:]
        nmos = data.strip().split(' ')[2:]
        n_cnt = len(tmp_data)

    elif ('POLY' in data):
        tmp_data = data.strip().split(' ')[2:]
        gate = data.strip().split(' ')[2:]
        gate_cnt = len(tmp_data)
        result.write("%s " %(gate_cnt + p_cnt))
        result.write("4 3 ")
        result.write("\n")

        routing_list = routing_all(pmos, nmos, gate)
        result.write("%s " %(len(routing_list)))
        #print(routing_list)
        result.write("\n")

        write_routing(routing_list, result)

        result.write("\n")
result.close()
