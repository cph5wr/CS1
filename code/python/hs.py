n = 10
length = 0
while (n != 1):
    length = length + 1
    print(n)
    if (n % 2 == 0):
        n = n//2
    else:
        n = 3*n+1
print(n)
length = length + 1
print(length)
