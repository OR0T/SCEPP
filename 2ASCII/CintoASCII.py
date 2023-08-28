import time
import re

class Cell:
    def __init__(self, name):
        self.name = name
        self.polydiff = None
        self.poly = None
        self.diff = None
        self.rt = None
        self.net_cnt = None
        self.net = []
    
    def __repr__(self):
        return f"Cell(name={self.name}\npolydiff={self.polydiff}\npoly={self.poly}\ndiff={self.diff}\nrt={self.rt}\nnet count={self.net_cnt}\nnet={self.net}\n\n)"

class Layer:
    def __init__(self, name):
        self.name = name
        self.purpose = None
        self.layernum  = None
        self.purposenum = None

    def __repr__(self):
        return f"Layer(name={self.name}\nPurpose={self.purpose}\nLayerNum={self.layernum}\nPurpose#={self.purposenum}\n\n)"

cell_info = []
layer_info = {} # {layer name = ['Purpose', 'LayerNum', 'Purpose#']...}


pin_info = open("routing_pin_result.txt", "r", encoding="utf8")
routing_info = open("routing_result.txt", "r", encoding="utf8")
layer_map = open("NCSU_TechLib_FreePDK15.layermap", "r", encoding="utf8")
design_rule = open("FreePDK15.mipt", "r", encoding="utf8")

####################READ LAYERMAP##########################
lines = layer_map.readlines()
layer_map.close()

flag = False
line_tmp = 0
for line in lines:
    tmp = line.strip().split()
    if 'Layer' and 'Purpose' and 'LayerNum' and 'Purpose#' in line:
        flag = True
    if flag:
        line_tmp += 1
        if line_tmp == 3: # layermap 파일 내부에 추출하고자하는 내용의 위치를 조절한다.
            flag = False
    if line_tmp == 3 and len(tmp) == 4:
        # print(tmp)
        layer_info[tmp[0]] = (tmp[1:])
print(layer_info)
###############################################################

####################READ DESIGN RULE##########################
lines = design_rule.readlines()
design_rule.close()

for line in lines:
    pass
poly_width  = 20
poly_pitch = 44
ail1_width = 28
ail1_pitch = 36
M1_width = 28
M1_pitch = 36
track = 12

cell_height = int(track * (M1_width + M1_pitch))
# poly_center_point = (poly_pitch/2 + poly_pitch/2 + poly_width)/2
# diff_center_point = (poly_pitch/2 + ail1_width + poly_pitch/2 + ail1_width + ail1_width)/2
poly_center_point = int((poly_pitch + poly_width)/2)
diff_center_point = int((poly_pitch + 3*ail1_width)/2)
y_center_point = int(1.5*M1_pitch + M1_pitch/2)
###############################################################

now = time.strftime("%m-%d-%Y:%H:%M")
userunits = "1.000000e-03"
physunits = "1.000000e-09"

BGNcontent = f"""\
HEADER 5;
BGNLIB;
 LASTMOD {{{now}}};
 LASTACC {{{now}}};
LIBNAME Ours;
UNITS;
 USERUNITS {userunits};
 PHYSUNITS {physunits};

"""

BGNSTR = f"""\
BGNSTR;
 CREATION {{{now}}};
 LASTMOD {{{now}}};
"""

####################READ PIN INFO##########################
lines = pin_info.readlines()
pin_info.close()

line_num = 0
cell_num = -1

for line in lines:
    if 'Name' in line:
        tmp = line.strip().split()
        cell_info.append(Cell(tmp[2]))

for line in lines:
    tmp = line.strip().split()
    if 'Name' in line:
        cell_num += 1
        line_num = 2
        cell_flag = True
    elif (cell_flag) & (line_num == 2):
        cell_info[cell_num].polydiff = int(tmp[0])
        cell_info[cell_num].rt = int(tmp[1])
        cell_info[cell_num].poly = int(int(tmp[0]) / 2)
        cell_info[cell_num].diff = int(cell_info[cell_num].polydiff - cell_info[cell_num].poly)
        # cell_info[cell_num].layer = int(tmp[2])
        line_num = 3
    elif (cell_flag) & (line_num == 3):
        cell_info[cell_num].net_cnt = int(tmp[0])
        line_num = 0
        cell_flag = False

# print(cell_info)
###############################################################

####################READ ROUTING INFO##########################
lines = routing_info.readlines()
routing_info.close()

cell_num = -1

for line in lines:
    tmp = line.strip().split()
    if "name" in line:
        cell_num += 1
    elif len(tmp) > 0:
        matches = re.findall(r'\((.*?)\)', line)
        numbers = [int(num) for match in matches for num in match.split(", ")]

        tuples = [tuple(numbers[i:i+3]) for i in range(0, len(numbers), 3)]
        cell_info[cell_num].net.append(tuples)

print(cell_info)
###############################################################

with open("test.ascii", "w", encoding="utf8") as f:
    f.write(BGNcontent)
    for cell in range(len(cell_info)):
        f.write(BGNSTR)
        f.write("STRNAME " + cell_info[cell].name + ";")
        f.write('\n\n')

        #########################PIM###########################
        f.write("BOUNDARY;\n")
        f.write("LAYER 5;\n")
        f.write("DATATYPE 0;\n")
        f.write("XY 5;\n")
        f.write(" X: -10;\t\t Y: " + str(int(cell_height/2)) + ";\n")
        f.write(" X: " + str(int((cell_info[cell].poly + 2) * poly_pitch + (cell_info[cell].poly + 2) * poly_width + 10)) + ";\t\t Y: " + str(int(cell_height/2)) + ";\n")
        f.write(" X: " + str(int((cell_info[cell].poly + 2) * poly_pitch + (cell_info[cell].poly + 2) * poly_width + 10)) + ";\t\t Y: -" + str(int(M1_width + M1_pitch/2)) + ";\n")
        f.write(" X: -10;\t\t Y: -" + str(int(M1_width + M1_pitch/2)) + ";\n")
        f.write(" X: -10;\t\t Y: " + str(int(cell_height/2)) + ";\nENDEL;\n\n")
        #########################NIM###########################
        f.write("BOUNDARY;\n")
        f.write("LAYER 6;\n")
        f.write("DATATYPE 0;\n")
        f.write("XY 5;\n")
        f.write(" X: -10;\t\t Y: " + str(int(cell_height/2)) + ";\n")
        f.write(" X: " + str(int((cell_info[cell].poly + 2) * poly_pitch + (cell_info[cell].poly + 2) * poly_width + 10)) + ";\t\t Y: " + str(int(cell_height/2)) + ";\n")
        f.write(" X: " + str(int((cell_info[cell].poly + 2) * poly_pitch + (cell_info[cell].poly + 2) * poly_width + 10)) + ";\t\t Y: " + str(int(cell_height + poly_width + poly_pitch/2)) + ";\n")
        f.write(" X: -10;\t\t Y: " + str(int(cell_height + poly_width + poly_pitch/2)) + ";\n")
        f.write(" X: -10;\t\t Y: " + str(int(cell_height/2)) + ";\nENDEL;\n\n")
        #######################################################
        #######################################################

        #########################POLY##########################
        x_last_point = poly_pitch/2
        for poly in range(cell_info[cell].poly + 2):
            f.write("BOUNDARY;\n")
            f.write("LAYER 10;\n")
            f.write("DATATYPE 0;\n")
            f.write("XY 5;\n")
            f.write(" X: " + str(int(x_last_point)) + ";\t\t Y: -" + str(poly_width) + ";\n")
            f.write(" X: " + str(int(x_last_point)) + ";\t\t Y: " + str(int(cell_height + poly_width)) + ";\n") # Y 값 수정필요
            f.write(" X: " + str(int(x_last_point + poly_width)) + ";\t\t Y: " + str(int(cell_height + poly_width)) + ";\n")
            f.write(" X: " + str(int(x_last_point + poly_width)) + ";\t\t Y: -" + str(poly_width) + ";\n")
            f.write(" X: " + str(int(x_last_point)) + ";\t\t Y: -" + str(poly_width) + ";\nENDEL;\n\n")
            x_last_point += poly_width + poly_pitch
        #######################################################

        ########################AIL1###########################
        x_last_point = poly_pitch/2 + ail1_width
        for ail1 in range(cell_info[cell].diff):
            f.write("BOUNDARY;\n")
            f.write("LAYER 11;\n")
            f.write("DATATYPE 0;\n")
            f.write("XY 5;\n")
            f.write(" X: " + str(int(x_last_point)) + ";\t\t Y: " + str(int(cell_height - M1_width - M1_pitch/2)) + ";\n")
            f.write(" X: " + str(int(x_last_point) + ail1_width) + ";\t\t Y: " + str(int(cell_height - M1_width - M1_pitch/2)) + ";\n")
            f.write(" X: " + str(int(x_last_point) + ail1_width) + ";\t\t Y: " + str(int(cell_height/2 + M1_width + M1_pitch/2)) + ";\n")
            f.write(" X: " + str(int(x_last_point)) + ";\t\t Y: " + str(int(cell_height/2 + M1_width + M1_pitch/2)) + ";\n")
            f.write(" X: " + str(int(x_last_point)) + ";\t\t Y: " + str(int(cell_height - M1_width - M1_pitch/2)) + ";\nENDEL;\n\n")
            x_last_point += ail1_pitch + ail1_width

        x_last_point = poly_pitch/2 + ail1_width
        for ail1 in range(cell_info[cell].diff):
            f.write("BOUNDARY;\n")
            f.write("LAYER 11;\n")
            f.write("DATATYPE 0;\n")
            f.write("XY 5;\n")
            f.write(" X: " + str(int(x_last_point)) + ";\t\t Y: " + str(int(M1_width + M1_pitch/2)) + ";\n")
            f.write(" X: " + str(int(x_last_point) + ail1_width) + ";\t\t Y: " + str(int(M1_width + M1_pitch/2)) + ";\n")
            f.write(" X: " + str(int(x_last_point) + ail1_width) + ";\t\t Y: " + str(int(cell_height/2 - M1_width - M1_pitch/2)) + ";\n")
            f.write(" X: " + str(int(x_last_point)) + ";\t\t Y: " + str(int(cell_height/2 - M1_width - M1_pitch/2)) + ";\n")
            f.write(" X: " + str(int(x_last_point)) + ";\t\t Y: " + str(int(M1_width + M1_pitch/2)) + ";\nENDEL;\n\n")
            x_last_point += ail1_pitch + ail1_width
        #######################################################

        ###########################M1########################## 미완성
        for net_num in range(cell_info[cell].net_cnt):
            f.write("BOUNDARY;\n")
            f.write("LAYER 49;\n")
            f.write("DATATYPE 0;\n")
            f.write("XY " + str(int(5 * len(cell_info[cell].net[net_num]))) + ";\n")
            for cor in range(len(cell_info[cell].net[net_num])):
                if cell_info[cell].net[net_num][cor][0] % 2 != 0: # x 좌표가 홀수 == diffusion
                    x_cor_point = int(diff_center_point * (int(cell_info[cell].net[net_num][cor][0]) + 2))
                    y_cor_point = int(y_center_point * (int(cell_info[cell].net[net_num][cor][1]) + 2))
                    f.write(" X: " + str(int(x_cor_point - M1_width/2)) + ";\t\t Y: " + str(int(y_cor_point + M1_width/2)) + ";\n")
                    f.write(" X: " + str(int(x_cor_point + M1_width/2)) + ";\t\t Y: " + str(int(y_cor_point + M1_width/2)) + ";\n")
                    f.write(" X: " + str(int(x_cor_point + M1_width/2)) + ";\t\t Y: " + str(int(y_cor_point - M1_width/2)) + ";\n")
                    f.write(" X: " + str(int(x_cor_point - M1_width/2)) + ";\t\t Y: " + str(int(y_cor_point - M1_width/2)) + ";\n")
                    f.write(" X: " + str(int(x_cor_point - M1_width/2)) + ";\t\t Y: " + str(int(y_cor_point + M1_width/2)) + ";\n")
                # elif cell_info[cell].net[net_num][cor][0] % 2 == 0: # diff
                else : 
                    x_cor_point = int(poly_center_point * (int(cell_info[cell].net[net_num][cor][0]) + 2))
                    y_cor_point = int(y_center_point * (int(cell_info[cell].net[net_num][cor][1]) + 2))
                    f.write(" X: " + str(int(x_cor_point - M1_width/2)) + ";\t\t Y: " + str(int(y_cor_point + M1_width/2)) + ";\n")
                    f.write(" X: " + str(int(x_cor_point + M1_width/2)) + ";\t\t Y: " + str(int(y_cor_point + M1_width/2)) + ";\n")
                    f.write(" X: " + str(int(x_cor_point + M1_width/2)) + ";\t\t Y: " + str(int(y_cor_point - M1_width/2)) + ";\n")
                    f.write(" X: " + str(int(x_cor_point - M1_width/2)) + ";\t\t Y: " + str(int(y_cor_point - M1_width/2)) + ";\n")
                    f.write(" X: " + str(int(x_cor_point - M1_width/2)) + ";\t\t Y: " + str(int(y_cor_point + M1_width/2)) + ";\n")
            f.write("ENDEL;\n\n")

            ####if 문으로 IO pin인지 확인 이후에######
            # if 
            #     f.write("TEXT;\n")
            #     f.write("LAYER 49;\n")
            #     f.write("TEXTTYPE 20;\n")
            #     f.write("PRESENTATION 0,1,1;\n")


        #######################################################

        #################prBoundary############################
        f.write("BOUNDARY;\n")
        f.write("LAYER 200;\n")
        f.write("DATATYPE 0;\n")
        f.write("XY 5;\n")
        f.write(" X: 0;\t\t Y: 0;\n")
        f.write(" X: " + str((cell_info[cell].poly + 2) * poly_width + (cell_info[cell].poly + 2) * poly_pitch) + ";\t\t Y: 0;\n")
        f.write(" X: " + str((cell_info[cell].poly + 2) * poly_width + (cell_info[cell].poly + 2) * poly_pitch) + ";\t\t Y: " + str(cell_height) + ";\n") # Y 값 수정 필요
        f.write(" X: 0;\t\t Y: " + str(cell_height) + ";\n") # Y 값 수정 필요
        f.write(" X: 0;\t\t Y: 0;\nENDEL;\n\n")
        #######################################################
        f.write("ENDSTR;\n\n")

    ##맨 마지막
    f.write("ENDLIB;\n")