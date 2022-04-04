def fact(x):
    if x == 1:
        return 1
    else:
        return x * fact(x-1)


if __name__ == "__main__":
    rek = fact(5)
    print(rek)
