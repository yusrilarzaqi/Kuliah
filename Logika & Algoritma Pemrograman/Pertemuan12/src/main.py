def main(num1, num2):
    print(f'hasil : {(num1 + num2) /2}')


if __name__ == '__main__':
    ulang = True
    while ulang:
        num1 = int(input(">> "))
        num2 = int(input(">> "))
        main(num1, num2)
        ulang = input("[y/n]")
        if ulang == 'y' & ulang == 'Y':
            ulang = True
        else:
            ulang = False
