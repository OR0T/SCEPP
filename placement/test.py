# Poly ordering : [['x2', 'A1', 'A2', 'dummy', 'A1', 'A2', 'x1'],
#                   ['x1', 'A2', 'A1', 'dummy', 'A2', 'A1', 'x2'],
#                     ['x1', 'A2', 'A1', 'dummy', 'A2', 'A1', 'x2'],
#                       ['x1', 'x2', 'A1', 'A2', 'dummy', 'A1', 'A2'],
#                         ['A2', 'A1', 'dummy', 'A2', 'A1', 'x2', 'x1'],
#                           ['A2', 'A1', 'dummy', 'A2', 'A1', 'x2', 'x1'],
#                             ['x1', 'x2', 'A1', 'A2', 'dummy', 'A1', 'A2'],
#                               ['x2', 'A1', 'A2', 'dummy', 'A1', 'A2', 'x1']]
# P diffusion chain : [['VDD', 'net_2', 'x1', 'net_2', 'x2', 'net_0', 'VDD', 'ZN'],
#                       ['ZN', 'VDD', 'net_0', 'x2', 'net_2', 'x1', 'net_2', 'VDD'],
#                         ['ZN', 'VDD', 'net_0', 'x2', 'net_2', 'x1', 'net_2', 'VDD'],
#                           ['ZN', 'VDD', 'net_2', 'x1', 'net_2', 'x2', 'net_0', 'VDD'],
#                             ['VDD', 'net_0', 'x2', 'net_2', 'x1', 'net_2', 'VDD', 'ZN'],
#                               ['VDD', 'net_0', 'x2', 'net_2', 'x1', 'net_2', 'VDD', 'ZN'],
#                                 ['ZN', 'VDD', 'net_2', 'x1', 'net_2', 'x2', 'net_0', 'VDD'],
#                                   ['VDD', 'net_2', 'x1', 'net_2', 'x2', 'net_0', 'VDD', 'ZN']]
# N diffusion chain : [['VSS', 'x1', 'net_1', 'VSS', 'VSS', 'x2', 'VSS', 'ZN'],
#                       ['ZN', 'VSS', 'x2', 'VSS', 'VSS', 'net_1', 'x1', 'VSS'],
#                         ['ZN', 'VSS', 'x2', 'VSS', 'VSS', 'net_1', 'x1', 'VSS'],
#                           ['ZN', 'VSS', 'x1', 'net_1', 'VSS', 'VSS', 'x2', 'VSS'],
#                             ['VSS', 'x2', 'VSS', 'VSS', 'net_1', 'x1', 'VSS', 'ZN'],
#                               ['VSS', 'x2', 'VSS', 'VSS', 'net_1', 'x1', 'VSS', 'ZN'],
#                                 ['ZN', 'VSS', 'x1', 'net_1', 'VSS', 'VSS', 'x2', 'VSS'],
#                                   ['VSS', 'x1', 'net_1', 'VSS', 'VSS', 'x2', 'VSS', 'ZN']]
import numpy as np

lst = []
if lst == False:
    print('yes')