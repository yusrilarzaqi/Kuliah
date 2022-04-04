def sort(arr):
    for i in range(len(arr)):
        if arr[i] < arr[1]:
            return arr
        else:
            arr[i]


print(sort([33, 15, 10]))
