def quicksort(arr):
    if len(arr) < 2:
        return arr
    else:
        pivot = arr[0]
        less = [i for i in arr[1:] if i < pivot]
        grater = [i for i in arr[1:] if i > pivot]
        return quicksort(less) + [pivot] + quicksort(grater)


print(quicksort([9, 8, 3, 15, 1, 0]))
