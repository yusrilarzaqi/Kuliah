# Chapter 2

## Selection Sort

- Suppose you have a bunch of music on your computer.
- For each artist, you have a play count.
- You want to sort this list from most to least played, so that you can rank your favorite artist.
- How can you do it?

---

- One way is to go through the list and find the most-played artist.
- Add that artist to a new list.
- Do it again to find the next-most-played aritst.
- Keep doing this, and you'll end up woth a sorted list.

## Selection Sort (run times)

- Remember that ***O***(*n*) time means you touch enery element in a list once.
- For example, running simple search over the list of artists means looking at each atrits once.

---

- To find the artist with the highest play cont, you have to check each item in the list.
- This takes ***O***(*n*) time, as you just saw.
- So you have an operation that takes ***O***(*n*) time, and you have to do tat *n* times.

## Checking fewer elements each time

- Maybee you're wondiring: as you go through the operations, the nunber of elements you have to check keeps decreasing.
- So how can the run time still be ***O(**n2)***?
- That's a good question, and the answer has to do with constants in Big O Notation.
- You check n elements, then *n*-1, *n* -2, ...2, 1.
- On avarage, you check a list that has 1/2 x *n* element. The runtime is ***O***(*nx1/2xn*).
- But constants like 1/2 are ignored in Big O notation, so you just write ***O***(*nxn*)or ***O***(*n2*).

 
## Eample Code Listing

```python
def findSmallest(arr):
  smallest = arr[0]
  smallest_index = 0;
  for i in range(1, len(arr)):
    if arr[i] < smallest:
      smallest = arr[i]
      smallest_index = i
  return smallest_index

def selectionSort(arr):
  newArr = []
  for i in range(len(arr)):
    smallest = findSmallest(arr)
    newArr.append(arr.pop(smallest))
  return newArr

print(selectionSort([5, 3, 6, 2, 10])
```

