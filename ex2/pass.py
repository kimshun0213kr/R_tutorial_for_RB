from random import randint as rd
num = [1,2,3,4,5,6,7,8,9,0,"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","@","_","$"]

for i in range(12):
    res = rd(0,len(num)-1)
    print(num[res],end="")

print("\n")