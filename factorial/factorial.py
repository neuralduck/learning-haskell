def factorial(n, acc = 1):
    if n == 0:
        return acc
    return factorial(n-1, n*acc)

if __name__ == "__main__":
    print(factorial(12))