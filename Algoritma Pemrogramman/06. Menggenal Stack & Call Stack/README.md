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

## The call stack [1]

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

## The Call Stack [2]

- Let's walk trough what happens when you call a function.
- Suppose you call `greet("maggie");`
- Frist, your computer allocates a box of memory for that function call.
- Now let's use the memory. The variable name is set to "maggie". That needs to be saved in memory.
- Every time you make a function call, you computer saves the values for all the variable for that in memory like this.
- Next, you print `hello, maggie!` Then you call `greet2("maggie")`. Again, your computer allocates a box of memory for this function call.
- Your computer is using a stack those boxes.
- The second box is added one, You print `how are you, maggie?`
- Then your *return* from the *function call*, When this happens, the box on top of the stack gets popped off.
- Now the top most box on the stack is for the `greet` function, which means you returned back to the `greet` function.
- Whrn you called the `greet2` function, the `greet` function was *partially*.
- *When you call a function from another function, the calling function is paused in a partially completed state.*
- All the values of the variable for that functions are still stored in memory.
- Now that you're done with the *greet2* function, you're back to the greet function, and you pick up where you left off.
- First you print **gretting ready to say bye ...**,
- You call the **bye** function.
- A box for that function is added to the tpo of the stack, Then you print **ok bye!** and return from the *function call*.
- And you're back to the *greet* function.
- There's nothing else to be done, so you return from the *greet* function too.
- This stack, used to save the variable for multiple function, is called the **call stack**.

## The call stack with recursion [1]

- Recursive funciton use the call stack too!
- Let's look at this in action with the factorical function.
- `factorical(5)` is writen as `5!`, and it's defined like this:
- 5! = 5 x 4 x 3 x 2 x 1.
- Similarly, `factorical(3)` is 3 x 2 x 1.
- Here's a recursive function the factorical of a number:

```python
def fact(x);
  if x == 1:
    return 1
  else 
    return x * fact(x - 1)

print(fact(3))
```

## The call stack with recursion [2]

- Now you call `fact(3)`.
- Let\'s step trough this call line by line and see how the stack changes.
- Remember, the top most box in the stack tells you what call to fact you\'re currently on.
- Notice that each call to **fact** has its own copy of **x**.
- You can't access a different function's copy of **x**.

