# Array & Linked List

## Chapter Overview

This chapter covers:
- Learn about arrays and linked list; tow of the most basic data structures.
- Learn your first sorting algorithm: selections sort.

## How memoryy works

- Imagine you go to a show and need to check your things.
- A chest of drawers in available.

- Each drawer can hold one element.
- You want to store two tings, so you ask for two drawes.

- You store your two things here.

- This is basically how your computer's memory works.
- Your computer looks like a giant set of drawers, and each drawer has an address.
- Each time you want to store an item in memory, you ask the computer for some space, and it gives you an address where you can store your item.

## Arrays

- Sometimes you need to store a list of elements in memory.
- Suppose you're writing an app to manage your tools.
- You'll want to store the todos as list in memory.

- Let's store the todos in an array.
- Using an array means all your taks are stored contiguosly (right next to each other) in memory.

- Now suppose you wwant to add a fourth task. BUtt the next drawer is taken up by someone else's stuff.
- You have to move to a new spot where you all fit.
- In this case, you need to ask your computer for a different chunk of memory that can fit four taks. Then you need to move all your taks there.

- Adding new items to an array can be a big pain.
- If you're out of space and neef to move to a new spot in memory every time, adding a new item will be really slow.
- One easy fix to **hold seats**:even if you have only 3 item your task list, you can ask the computer for 10 slots, just in case. Then you can add 10 items to your task list without having to move.
- But you sould be aware of a bouple downsides:
  - You may not need the extra slots; that memory will be wasted. You aren't using it, but no one else can use it either.
  - You may add more than 10 items to your task list and have to move anyway.

## Linked List

- With linked list, your items can be anywhrer in memory
- Each item stores the address of the next item in the list.
- Adding an item to linked list in easy: you stocl ot anywhere in memory and store the address with the previous item.
- With linked list, you never have to move your items.

## Arrays v.s. Linked List

- Suppose you want to read the last item in a linked list.
- You can't just read it, because you don't know what address it's at. Instead, you have to go to item #1 to get the address for item #2. Then you have to go to item #2 to get the address for item #3. And so on, until you get to the last item.
- Linked list are great if you're going to read all the items one at a time:you can read one item, follow the address to the next item, and so on.
- But if you're goiing to keep jumping around, linked list are terrible.

- Array are different. You know the address dor every item in your array.
- Suppose your arrary conatins five items, and you know it starts at address 00.
- What is the address of item #5? Simple math tells you: it's 04.
- Array are great if you want to read random elements, because you can look up any element in your array instanly.
- With a linked list, the elements aren't next to eeach other, so you can't instanly calculate the position of the fifth element in memory.

## Terminology

- The position of an element is called it's index.
- So instead of saying, "20 is at position 1", the correct terminlogy is, "20 is at index 1".
- I'll use index to mean position throughout this book.

## Exercises (Array and Linked List)

Please refer to **page 28** of the textbook for exrcises

## Inseting into the middle of a list

- Suppose you want your todo list to work more like a calendar.
- Earlier, you were adding things to the end of the list.
- Now you want to add them in the oreder in which they should be done.

- What's better if you want to insert elements in the middle: arrays or lists?
- With list, it's as easy as changing what the pervious element point to.

- But for array, you have to shift all the rest of the elements down.
- And  if there's no space, you might have to copy everything to anew location!
- List are better if you want to insert elements into the middle.

- Here are the times for insertion on arrays and list.

## Deletions

- What if you want to delete an element?
- List are better, because you just need to change what the pervious element points to.
- With arrays, everything needs to be moved up when you delete an element.
- Unlike insertions, deletions will always work.
- Insertions can fall somtimes when there's no space left in memory. But you can always delete an element.

- Here are the run times for deletion on array and linked list.
  -         Arrays| List
  - Reading   O(1)| O(n)
  - Insertion O(n)| O(1)
  - Deketion  O(n)| O(1)
- It's worth mentioning that inserions and deletions are ***O(1)*** time only if you can instanly access the element to be delete.
- It's common practice to keep track of the first and last items in a linked list, so it would take only ***O(1)*** time to delete those.

## Two different types of access

- There are two different type of access: random access and sequential access.
- Sequential access means reading the elements one by one, starting at the first element.
- Linked list can only do sequential access. IFf you want to read the 10th element of a linkes list, you have to read the first 9 elements and follow the links to the 10th element.
- Random access meands you can jump directly to the specific element.
- Array are faster ar reads. This is because the provide random access.
