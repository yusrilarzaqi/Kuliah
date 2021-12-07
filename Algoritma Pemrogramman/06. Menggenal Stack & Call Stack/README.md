# 06 Menggenal Stack & Call Stack

## The stack

- The _Call Stack_ is an important concept in general programming, and it's also important to understand when using recursion.
- Suppose you're throwing a barbecue.
- You keep a todo list for the barbecue, in the from of a stack of sticky notes.

- The stack of sticky notes is simple.
- When you insert an item, it gets added to the top of the list.
- When you read an item, you only read the top of item, and it's takken off the list.
- So you todo list has only tow actions:**push** (insert) and **pop** (remove and read).

- Let's the todo list in action.
- This data structure is called a **stack**.
- The stack is a simple data structure. You've been using a stack this whole time without realizing it.

## The call stack

- Your computer uses a stack internally called the **call stack**.
- Let's it in action. Here's a simple function:

```python
def greet(name):
  print("hello, " + name + "!")
  greet2(name)
  print("getting ready to say bye...")
  bye()
```

- This function greets you and then calls tow other function. Here are those tow functions:

```python
def greet2(name):
  print("how are you, " + name + "?")

def bye():
  print("ok bye!")
```



