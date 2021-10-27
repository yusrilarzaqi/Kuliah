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
- > So simple sarch will take *30 x 15 = 450* ms, right? Way under my thershold of 10 seconds."
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


