# Mengenal Struktur Data Graph & Queue | Algoritma Breadth First Search

## Capter Overview

- You learn how to model a netowork using a new, abstract data structure, **graphs**.
- You learn breadth-first search, an algorithm you can run on graphs to answer questions like, "What's the shortest path to go X?"
- You learn about directed versus undirected graphs.

## Introduction to graphs

- Suppose you're in San Francisco, and you want to go Twin Peaks to the Golden Gate Bridge.
- You want to get there by using bus, with the minimum number of transfers. Here are you options.
- ![Introduction](img/introduction-1.png)

---

- What's your algorithm to find the path with the fewst steps?
- Well, can you get there in one steps? Here are all the place you can get to in one steps.
- ![Introduction](img/introduction-2.png)
- The bridge isn't highlighted, you can't get there in one step.

---

- Can you get there in two steps?
- ![Introduction](img/introduction-3.png)
- Again, the bridge isn't there, so you can't get to the bridge in two steps.

---

- What about three steps?
- ![Introduction](img/introduction-4.png)
- Aha! Now the Golden Gate Bridge shows up.

---

- So it takes three steps to get from Twin Peaks to the bridge using this route.
- ![Introduction](img/introduction-5.png)
- There are other routes that will get you to the bridge too, but they're longer (four steps).

---

- The algorithm found that the shortest route to the bridge is three steps long. This type of problem is called a *shortest-path problem*.
- The algorithm to solve a shortest-path problem is called *breadth-first search*.
- To figure out how to get from Twin Peaks to the Golden Gate Bridge, there are two steps:
  * Model the problem as a graph.
  * Solve the problem using breadth-first search.

## What is a graph?

- A graph models a set of connections.
- Suppose you and your friends are playing poker.

---

- You want to model who owes whom money.
- Here's  how you could say, "Alex owes Rama money."
- ![What is a graph](img/graph-1.png)
- The full graph could look something like this.
- ![What is a graph](img/graph-2.png)
- Alex owes Rama money, Tom owes Adit modey, and so on.

---

- Each graph is made up of *nodes* and *edges*.
- ![What is a graph](img/graph-3.png)
- A node can be directly connected to many other nodes.
- Those nodes are called it's neighbors.
- In this graph, RAma is Alex's neighbor. Adit isn't Alex's neighbor, because they aren't directly connected. But Adit is Rama's and Tom's neighbor.
- Graph are a way to model how different things are connected to one another.

## Breadth-first search

- We looked at a search algorithm in chapter 1 (binary search).
- Breadth-first is a different kind of search algorithm, one that runs on graph.
- It can help answer two types of questions:
  * Question type 1: Is there a path from node A to node B?
  * Question type 2: What is the shortest path from node A to node B?

































