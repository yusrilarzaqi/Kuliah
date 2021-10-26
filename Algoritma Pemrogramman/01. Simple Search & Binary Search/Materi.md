# Simple Search & Binary Search

## Chapter Overview

This chapter covers:

- Foundation for the rest of the book
- Write your first search algorithm (binary search)
- Learn about the runing time of an algorithm (Big O notation)

## Introduction

- An algorithm is a set of intructions for accomplishing a task
- Algorithms chosen in this book (for inclusion) because they're fast, or they solve intersting problems. or both
- The good news is, an implementaion of every algorithm in this book is probably available in your favorite language, so you don't have to write each algorithm yourself
- But those implementations are useless if you don't understand the trade-offs
- In this book, you'll learn to compare trade-offs between differnt algorithm

## Binary Search

- Suppose you're searching for a word in a dictionary, and it starts with k.
- You could start at the beginning and keep flipping pages until you ger to the Ks.
- But you're more likely to start at a page in the middle, because you kniw the Ks are going to be near the midddle of the dictionary
- This is a search problem
- Binary search is an algorithm; its input is a **sorted** list of elements.
- If an element you're looking for is in that list, binary search returns the position where it's located. Otherwise, binary search return *null*

## A Simple Search (Problem) Example

- i'm thinking of a number between 1 and 100.
- You have to try to guess my number in the fewest tries possible.
- With every guess, i'll tell you if your guess is too low, too high, or correct.

## Simple Search Way

- Suppose you start guessing like this: 1, 2, 3, 4, ...
- Here's how it would go.
- This is simple search (maybe stupid search would be a better term).
- With each guess, you're eliminating only one number.
- If my number was 99, it could take you 99 guess to ger there!

## A Better Way to Search (Binary Search)

- Here's a better technique.
- Start with 50.
- Too low, but you just eliminated half the numbers! 
- Now you know that 1-50 are all too low. Next guess: 75.
- Too high, but again you cut down half the remaining numbers!
- **Whith binary search, you guess the middle number and eliminated half the remaining numbers every time.**
- Next is 63 (halfway bettwen 50 and 75).

## Binary Search Performance Explained 

- This is binary search. You just learned you first algorithm!
- Here's how many numbers you can eliminate every time.
- Eliminate half the numbers every time with binary search.
- Whatever nuber i'm thingking of, you can guess in a maximum of seven guesses - because you eliminate so many numbers with every guess!
- Suppose you're looking for a world in the dictionary. The dictionary has 240.000 worlds.
- In the worst case, how many steps do you think each search will take?
- Simple search could take 240.000 steps if the word you're loonking for is the very last one in the book.
- With each step of binary search, you cut the number of worlds in half until you're left with only one word.
- So binary search will take 18 steps - a big difference!
- In general for any list of *n*, binary search will take *log2 n* steps to run in the worst case, whereas simple search will take ***n*** steps.

## Logarithm

- Logs are the flip of exponenials.
- in this book, when i talk about running time in Big O notation (explained a little leter), Log alwasys mean log2.
- When you serach for an element using simple search, in the worst case you might have to look at every single element.
- So for a list of 8 numbers, youd'd have to check 8 numbers at most.
- For binary search, you have to check ***log n*** elements in the worst case.
- For a list of 8 elements, *log 8 = 3*, because *2³ = 8*. So for a list of 8 numbers, you would have to check 3 numbers at most.
- For a list of 1024 elements, *log 1024* = 10, because *2¹⁰ == 1024*, So for a list of 1024 numbers, you'd have to check 10 numbers at most.

## Notes 

- I'll talk about log time a lot in this book. so you sould understand the concept of logarithms. If you don't , **Khan Academy** (khanacademy.org) has a nice video that makes it clear.
- Binary search only works when you list is in **sorted order**. For example, the names in a phone book are sorted in alphabetical order. So you can use binary search to look for a name.

## Binary Search in Python 

- Let's see how to write binary search in Python.
- The code sample here uses arrays.
- You can store a sequance of elements in a row of consecutice buckets called an array.
- The buckets are numbered starting with 0: the first bucket is at position #0, the second is #1, the third is #2, and so on.
- The binary search function takes a *sorted array* and an item. if the item is in the array,  the function returns its posirion.
- You'll keep track of what part of the array you have to search trough.
- At the beginning, this is the entry array.

> low = 0
> high = len(list) - 1

- Each time, you check the middle element:

> mid = (low + high) / 2\
> guess = list[mid]

- **mid** is rounded down by Python automatically if **(low + high)** isn't an even number
- if the guess is too low, you update **low** accordingly:

> if guess < item:
>   low = mid + 1

- And if the guess is too high, you update **high**.
- The book uses **Python 2** whereas in the class we use **Python 3**. There are few differences in the code.
- Here's the full code: [Main.py](Main.py)
