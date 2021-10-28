# Running Time & Big O Notation

## Running Time

- Generally you want to chosen the most efficient algorithm; whether you're trying to optimize for time or space.
- Back to binary search. How mouch time do you guess by using it?
- Wll, the first approach was to check each number. one by one, of this is a list of 100 numbers, it takes up to 100 guesses. if it's a list of 4 billion numbers, it takes up to 4 billion guesses.
- So the maximux number of guesses is the same as the size of the list. This is calles **linear time**.
- Binary search is different. if the list is 100 items long. it takes at most 7 guess. if the list is 4 billion items, it takes at most 32 guesses.
- Binary search tuns in **logarithm time** (or log time, as the natives call it).

## Big O Notation

- Big O notation is special notation that tells you how fast an algorithm is.
- Who care? Well, it turns out that you'll use other peaple's algorithms often and when you do, it's nice to understand how fast or slow there are.
- In this section, i'll explain what Big O notation is and give you a list of the most common running thimes for algorithm using it.

## Algorithm running times geow at different rates

- Bob is writing a search alorithm for NASA.
- His algorithm will kick in when a rocket is about to land on the Moon, and it will help calculate where to land.
- And Bob as only 10 seconds to figure out where to land.

---

- Bob is trying to decide between simle search and binary search.
- The algorithm needs to be both fast and correct.
- On one hand, binary search is faster.
- On the other hand, simple search is easier to write, and there is less change of bugs being introduced. And Bob really doesn't want bugs in the code to land a rocet!

---

- Let's asssume it take 1 millisecond to check one element.
- To be extra carefull, Bob decides to time both algorithm with a list of 100 elements.
- Whih simle search, Bob has to check 100 elements, so the search takes 100 ms to run.
- On the other hand, he only has to check 7 elements with binary search (log₂ 100 is roughly 7), so that search takes 7 ms to run.

---

- Bob realistically, the list will have more link a billion elements.
- Bob runs binary search with 1 billion elements, and it takes 30 ms (log₂ 1.000.000.000 is roughly 30).
- >"Binary search is about 15 times faster than simple search, because simple search took 100 ks with 100 elements, and binary search took 7 ms.\
    So simple sarch will take *30 x 15 = 450* ms, right? Way under my thershold of 10 seconds."
- Bob decides to go with simple search.
- **Is that the right choise?**

---

- No, Turns out, Bob is worng. Dead Worng.
- The run time for simple search with 1 billion iterm will be 1 billion ms, which is 11 days!
- The problem is, the run times for binary search and simple search **don't grow at the same rate**

---

- As the number of items increases, binary search takes a little more time to run. But simple search takes a lot more time to run.
- So as the list of numbers gates bigger, binnary search suddenly becomes a lot faster than simple search.
- That's why it's not enough to know how long an alogithm takes to run -> you need to know how the running time increases as the list size increses.
- That's where Big O notation comes in.

## Big O Notation Explained

- Big O notation tells you how fast an alogithm is.
- For example, suppose you have a list size *n*.
- Simple search needs to check each element, so it will take *n* operations. The run in Big O notation is ***O***(*n*).
- Big O **doesn't tell you the speed in second**. Big O notation lets you compare the number of operations. it tells you how **how fast the algorithm grows**.

---

- Binary search needs log n operations to check a lisrt of size *n*.
- What's the runnung thime in Big O notation? it's *O(logn)*.
- In general, Big O notation is written as follows.
  - ***O(n)***
- This tell you number of operation an algorithm will make.
- it's called Big O notation because you put a "Big O" in front of the number of operations (it sound like a joke, but it's true!).

## Visualizing different Big O run times (another simple case study)

- Here's a practical example you can follow at home with a few pieces of paper and pencil.
- Suppose you have to draw a grid of 16 boxes.

`What's a good algorithm to draw this grid?`

### Algorithm 1

- One way to do it is to draw 16 boxs, one at a time
- Remember, Big O notation conuts the number of operations.
- in this example, drawing one box is one operation. You have to draw 16 boxes.
- How many operations will it take, drawing one box at a time?
- It takes 16 steps to draw 16 boxes, What's the running time for this algorithm?

### Algorithm 2

- Try this algorithm instead. Fold the paper
- In this examples, folding the paper once is an operation.
- You just made tow boxes with that operation!

---

- Fold the paper again, and again, and again.
- Unfold it after four fold, and you'll have a beautiful grid!

---

- Every fold doubles the number of boxes. You made 16 boxes with 4 operations!
- You can "draw" twice as many boxes with every fold, so you can draw 16 boxes in 4 steps.
- What's the running time for this algorithm?
- Come up with running times for both algorithms before moving on.
- Answer : Algorithm 1 take ***O***(*n*) time, and algorithm 2 takes ***O***(*logn*) time.

## Big O establishes a worst-case run time

- Suppose you're using simple search to look for a persoin in the phone book
- You  kniw thatmsimple search take ***O***(*n*) time to run, which means in the worst case, you'll have to loook trough every singgle entry in your phone book.
- In this case, you're looking for Adit. Tis guy is the fires entry in your phone book. So you didn't have to look at every entry-you found it on the first try.
- Did this algorithm ***O***(*n*) time ? Or did it take ***O***(*1*) time because you found the person on the first try?

---

- Simple search still takes ***O***(*n*) time.
- In this case you found what you were looking for instantly. That's the best-case scenario.
- But **Big I notation** is about **the worst-case scenario**.
- So you can say that, in the worst vase, you'll have to look at every entry in the phone book once. That's ***O***(*n*) time.
- It's reassurance you know that simple search will never be slower than ***O***(*n*) time.

## Some common Big O run times

Here are five Big O dun times that you'll encounter a lot, sorted from faster to slowest:
- ***O***(*logn*), also known as log time. Example :Binary search.
- ***O***(*n*), also known as linear time. Example :Simple search.
- ***O***(*n \* logn*). Example :A fast sorting algorithm, like quickshoot(smming up in chapter4).
- ***O***(*n²*). Example :A slow sorting algoritm, like selection sort (comming up in chapter2).
- ***O***(*n!*). Example :A really slow algorithm, like the traveling sales person (comming up next!).

---

- Suppose you're drawing a grid of 16 boxes again, and you can chosen from 5 different algorithms to do so.
- You con do 10 operations per second.
- If you user the first algorithm, it will take you ***O***(*logn*) time to draw the grid.
- With ***O***(*logn*) time, it will take you 4 operations to fraw a grid of 16 boxex (log 16 is 4). So it will take you 0.4 seconds to draw the grid.
- What if you have 1024 boxex? It will take you **log 1024 = 10** operations, or 1 second to draw a grid 1025 boxes.
- These numbers are using the first algorithm.

---

- The second algorithm is slower: it takes ***O***(*n*) time.
- It will take 16 operations to draw 16 boxes, and it will take 1024 operation to draw 1024 boxes.
- How much time is that in second ?
- 102,4 seconds

---

- Here's how long it would take to draw a grid for the rest of the algorithms, from fasttest to slowest:
- There are other run times, too, but these are the five most common.
- This is a simplifaction. In reality you can't convert from a Big O run time to a number of operations this neathly, but this is good enough for now.

## Big O Notation (recap)

For now, the main takeaways are follows:
- Alogithm speed isn't measured in seconds, but i growth of the number op operations.
- Instead, we talk about how quickly the run time of an algorithm increases as the size of the input increases.
- Run time of algorithms is expressed in Big O notation.
- ***O***(*logn*) is faster than ***O***(*n*), but it gets a lot faster as the list of items you're searching grows.
