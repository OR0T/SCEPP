import random

def sort_nets(nets):                                
    tmp_to_sort=nets[int(len(nets)-1)]
    nets.pop()
    nets.insert(0,tmp_to_sort)

every_nets = [[(0, 0, 0), (0, 1, 0), (0, 2, 0), (0, 3, 0)], 
              [(4, 0, 0), (4, 1, 0), (4, 2, 0), (4, 3, 0)],
              [(6, 0, 0), (6, 3, 0), (14, 0, 0), (14, 3, 0)], 
              [(3, 0, 0), (3, 1, 0), (3, 2, 0), (3, 3, 0), (8, 0, 0), (8, 1, 0), (8, 2, 0), (8, 3, 0), (23, 0, 0), (23, 1, 0), (23, 2, 0), (23, 3, 0)], 
              [(18, 0, 0), (18, 3, 0), (22, 0, 0), (22, 3, 0)], 
              [(1, 0, 0), (1, 1, 0), (1, 2, 0), (1, 3, 0), (24, 0, 0), (24, 1, 0), (24, 2, 0), (24, 3, 0)], 
              [(6, 0, 0), (6, 1, 0), (6, 2, 0), (6, 3, 0), (14, 0, 0), (14, 1, 0), (14, 2, 0), (14, 3, 0)], 
              [(18, 0, 0), (18, 1, 0), (18, 2, 0), (18, 3, 0), (22, 0, 0), (22, 1, 0), (22, 2, 0), (22, 3, 0)]]

nets = []

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

# print(tmp_same_pin)
print(nets)
for repeat in range(len(nets) - 1):
    sort_nets(nets)
print(nets)
print(len(nets))


        # if pin == (int(len(every_nets[net])) - 1):
        #     nets[net].append(every_nets[net][random.randrange(pp, pin + 1)])

        # if every_nets[net][pin][0] != every_nets[net][pin + 1][0]:
        #     nets[net].append(every_nets[net][random.randrange(pp, pin + 1)])
        #     pp = pin
        # elif abs(every_nets[net][pin][1] - every_nets[net][pin + 1][1]) > 1:
        #     nets[net].append(every_nets[net][random.randrange(pp, pin + 2)])
        #     pp = pin + 2


# print(nets)
