def search(a, b, x):
    if abs(((a+b)/2)**2 - x) <= 0.001:
        return (a+b)/2
    elif ((a+b)/2)**2 < x:
        return search((a+b)/2, b, x)
    else:
        return search(a, (a+b)/2, x)
def root(x):
    if x == 0:
        return 0
    elif x == 1:
        return 1
    elif x < 0:
        return None
    else:
        return search(0, x, x)


print(root(9))
