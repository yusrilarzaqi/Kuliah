## Chapter Overview

- We continue the discussion of graphs, and you learn about weighted graphs: a way to assign more or less weight to some edges.
- You learn Djikstra's algorithm. which let's you answer "What's the shortest path to X?" for weighted graphs.
- You learn about cycles in graphs, where Djikstra's algorithm doesn't work.

## Background

- In the last chapter, you figured out a way to get from point A to point B.
- ![Background 1](img/background-1.png)
- It's not necessarily the fastest path.
- It's the shortest path, because it has the latest number of segments (three segments).

---

- But suppose you add travel times to those segments. Now you see that there's a fastest path.
- ![Background 2](img/background-2.png)
- You used breadth-first search in the last chapter. Breadth-first search will find you the path with fewest segments (the first graph shown here).
- What if you want the fastest path instead (the second graph)? You can do that fastest with different algorithm called **Djikstra's algorithm**.

## Working with Djikstra's algorithm

- Let's see how it works with this graph.
- ![Working with Dijkstra's algorithm](img/Working-with-1.png)
- Each segment has a travel time in minutes.
- You'll use. Djikstra's algorithm to go from start to finish in the shortest possible time.

---

- If you ran breadth-first search on this graph, you'd get this shortest path.
- ![Working with Dijkstra's algorithm](img/Working-with-2.png)
- But that path takes 7 minutes.
- Let's see if you can find a path that takes less time.

---

There are four steps to Djikstra's algorithm:

- Find the "cheapest" node. This is the node you can get in the least amount of time.
- Update the cost of the neighbors of this node.
- Repeat until you've done this for every node in the graph.
- Calculate the final path.

## Step 1

- Find the cheapest node.
- You're standing at the start, wondering if you should go to node A or node B.
- How long does it take to get to each node?
- ![Step 1](img/step-1.png)
- It takes 6 minutes to get to node A and 2 minutes to get to node B.
- The rest of the nodes, you don't know yet.
- Because you don't how log it takes to get to the finish yet, you put down infinity (you'll see why soon)
- Node B is the closet node ... it's 2 minutes away.

## Step 2

- Calculate how long it takes to get to all of node B's neighbors by following an edge from B.
- ![Step 2](img/step-2-1.png)
- Hey, you just found a shorter path to node A! it used to take 6 minutes to get to node A.
- ![Step 2](img/step-2-2.png)
- But if you go through node B, there's a path that only takes 5 minutes!

## Step 3

Step 1 again:

- Find the node that takes the least amount of time to get to.
- You're done with node B, so node A has the next smallest time estimated
- ![Step 3](img/step-3.png)

---

Step 2 again:

- Update the cost for node A's neighbors
- Woo, it takes 6 minutes to get to the finish now!
- You've run Dijkstra's algorithm for every node (you don't need to run it for the finish node).
- At this point, you know:

  - It takes 2 minutes to get to node B.
  - It takes 5 minutes to get to node A.
  - It takes 6 minutes to get to the finish.
  
## Step 4

- I'll save the last step, calculating the final path.
- For now, I'll just show you what the final path is.
- ![Step 4](img/step-4.png) 
- Breadth-first search wouldn't have found this as the shortest path, because it has three segments.
- And there's a way to get from the start to the finish in two segments.
- ![Step 4](img/step-4-1.png) 

## Recap: Dijkstra's algorithm

- In the last chapter, you used breadth-first search to find the shortest path between two point.
- Back then, "shortest"
- But in Dijkstra's algorithm, you assign a number or weight to each segment.
- Then Dijkstra's algorithm find the path with whe smallest total weight.
- ![Recap](img/recap.png) 

---

To recap, Dijkstra's algorithm

- Find the cheapest node. This is the node you can get to in the least amount of time.
- Check whether there's cheaper path to the neighbors of this node. If so, update their costs.
- Repeat until you've done this for every node in the graph.
- Calculate the final path. (Coming up in the next solution!)

## Terminology

- When you work with Dijkstra's algorithm, each edge in the graph has a number associated with it.
- These are called **weight** 
- ![Terminology](img/terminology.png) 

---

- A graph with weight's is called a **weighted graph**.
- A graph without weights is called an **unweighted graph**.
- ![Terminology](img/terminology-1.png) 
- To calculate the shortest path in an **unweighted graph**, use **breadth-first search** .
- To calculate the shortest path in a **weighted graph**, use **Dijkstra's algorithm**.

---

- Graphs can also have cycles. A cycle looks like this.
- ![Terminology](img/terminology-2.png)
- It means you can start at a node, travel around, and end up at the same node.

---

- Suppose you're trying to find the shortest path this graph that has a cycle.
- ![Terminology](img/terminology-3.png) 
- Would it make sense to follow the cycle? Well, you can see use the path that avoids the cycle.
- ![Terminology](img/terminology-4.png) 

---

- Or you can follow the cycle.
- ![Terminology](img/terminology-5.png) 
- You end up at node A either way, but the cycle adds more weight.

---

- You could even follow the cycle twice if you wanted.
- ![Terminology](img/terminology-6.png) 
- But every time you follow cycle, you're just adding 8 to the total weight.
- So following the cycle will never give you the shortest path.

---

- Finally, remember our conversation about **directed** versus **undirected** graphs from chapter 6? 
- ![Terminology](img/terminology-7.png) 
- An undirected graph means that nodes point to each other. That's a **cycle**!
- ![Terminology](img/terminology-8.png) 
- With an undirected graph, each edge adds another cycle.
- Dijkstra's algorithm only works with **directed acyclic graphs**, called **DAGs** for short.

## Trading for a piano

- Enough terminology, let's look at another example! This is Rama.
- Rama is trying to trade a music book for a piano.

---

- "I'll give you this poster for your book," says Alex. "it's poster of my favorite band, Destroyer. Or I'll give you this rare LP of Rick Astley for you book and $5 more."
- "Ooh, I've heard that LP has a really great song," says Amy. "I'll trade you my guitar or drum set for the poster or the LP."
- "I've been meaning to get into guitar!" exclainms Beethoven. "Hey, I'll trade you my piano for either of Amy's things."

---

- Perfect! With a little bit of money, Rama can trade his way from a piano book to a real piano.
- Now he just needs to figure out how to spend the least amount of money to make those trades.
- Let's graph out what he's been offered.
- ![Trading for a piano](img/trading-1.png)

---

- In this graph, the nodes are all the items Rama can trade for.
- The weights on the edges are the amount of money he would have to pay to make the trade.
- So he can trade the poster for the guitar for $30, or trade the LP for the guitar for $15.
- How is Rama going to figure out the path from the book to the piano where he spends the least dough?
- Dijkstra's algorithm to the rescue! Remember, Dijkstra's algorithm has four steps.
- In this example, you'll do all four steps, so you'll calculate the final path at the end, too.

---

- Before you start, you need some setup.
- Make a table of the cost for each node.
- The cost of a node is how expensive it is to get to.
- ![Trading for a piano](img/trading-1.png)
- You'll keep updating this table as the algorithm goes on.

---

- To calculate the final path, you also need a parent column on this table.
- I'll show you how this column works soon. Let's start the algorithm.

## Step 1: Find the cheapest node

- In this case, the poster is the cheapest trade, at $0.
- Is there a cheaper way to trade for the poster? This is a really important point, so think about it.
- Can you see a series of trades that will get Rama the poster for less than $0? Read on when you're ready.
- Answer: No. Because the poster is the poster is the cheapest node Rama can get to, there's no way to make it any cheaper.

---

- Here's a different way to look at it. Suppose you're traveling from home to work.
- ![Find The cheapest node](./img/find-the-cheapes-node.png) 
- If you take the path toward park, that takes 6 minutes.
- Is there any way you can take the path toward the park, and end up at the school, in  less than 2 minutes?
- It's impossible, because it takes longer than 2 minutes just to get to the park.

---

- On the other hand, can you find a faster path to the park? Yup.
- ![Find The cheapest node](./img/find-the-cheapes-node-1.png) 
- This is the key idea behind Dijkstra's algorithm: Look at the cheapest node on your graph.
- There is no cheaper way get to this node!
- Back to the music example. The poster is the cheapest trade.

## Step 2: Figure out the cost

- Figure out how long it takes to get to its neighbors (the cost).
- ![Find The cheapest node](./img/find-the-cheapes-node-2.png) 
- You have prices for the bass guitar and the drum set in the table.
- Their value was set when you went through the poster, so the poster gets set as their parent.

---

- That means, to get to the bass guitar, you follow edge from the poster, and the same for the drums.
- ![Find The cheapest node](./img/find-the-cheapes-node-3.png) 

## Step 3: Repeat

Step 1 again: The LP is the next cheapest node at $5.
Step 2 again: Update the values of all of its neighbors.

![Step 3 Repeat](./img/Repeat.png)

- Hey, you updated the price of both the drums and the guitar!
- That means it's cheaper to get drums and guitar by following the edge from the LP.
- So you set the LP as the new parent for both instruments.

---

- The bass guitar is the next cheaper item. Update its neighbors.
- ![Step 3 Repeat](./img/Repeat-1.png)
- Ok, you finally have a price for the piano, by trading the guitar for the piano.
- So you set the guitar as the parent.

---

- Finally, the last node, the drum set.
- ![Step 3 Repeat](./img/Repeat-2.png)
- Rama can get the piano even cheaper by trading the drum set for the piano instead.
- So the cheapest set of trades will cost Rama $35.

## Step 4: Calculate the final path

- Node, as I promised, you need to figure out the path.
- So far, you know that the shortest path cost $35, but how do you figure out the path?
- To start with, look at the parent for piano.
- ![Calculate the final path](./img/Calculate-the-final-path.png)
- The piano has drums as this parent.
- That means Rama trades the drums for the piano.
- So you follow this edge.

---

- Let's see how you'd follow the edges. Piano has drums as its parent.
- ![Calculate the final path](./img/Calculate-the-final-path-1.png)
- And drums has the LP as its parent.
- ![Calculate the final path](./img/Calculate-the-final-path-2.png)
- So Rama will trade the LP for the drums. And of course, he'll trade the book for the LP.

---

- By following the parent backward, you now have the complete path.
- ![Calculate the final path](./img/Calculate-the-final-path-3.png)
- Here's the series of trades Rama needs to make.

---

- So far, I've been using the term shortest path pretty literally: calculating the shortest path between two locations or between two peaple.
- I hope this example showed you that the shortest path doesn't have to be about physical distance.
- It can be about minimizing something. In this case, Ramaa wanted to minimize the amount of money he spent.
- Thanks, Dijkstra's!

## Negative Weight Edges

- In the trading example, Alex offered to trade the book for two items.
- ![Negative weight edges](./img/Negative-weight.png) 

---

- Suppose Sarah offers to trade the LP for the poster, and she'll 
- It doesn't cost Rama anything to make this trade; instead, he gets $7 back.
- How would you show this on the graph?
- ![Negative weight edges](./img/Negative-weight-1.png) 

---

- The edge from the LP to the poster has a negative weight!
- Rama gets $7 back if he makes that trade.
- Now Rama has two ways to get to the poster.
- ![Negative weight edges](./img/Negative-weight-2.png) 

---

- So it makes sense to do the second trade Rama gets $2 back that way!
- Now, if you remember, Rama can trade the poster for the drums.
- There are two paths he could take.
- The second path costs him $2 less, so he should take the path, right? Well, guess what?
- If you run Dijkstra's algorithm on this graph, Rama will take the wrong path. He'll take the longer path.

---

- You can't use Dijkstra's algorithm if you have negative weight edges.
- Negative weight edge break the algorithm.
- Let's see what happends when you run Dijkstra's algorithm on this.
- First, make the table of cost.
- ![Negative weight edges](./img/Negative-weight-3.png) 

---

- Next, find the lowest cost node, and update the costs for its neighbors.
- In this case, the poster is the lowest cost node.
- So, according to Dijkstra's algorithm, there is no cheaper way to get to the poster than paying $0 (you know that's wrong).
- Any, let's update the costs for its neighbors.
- ![Negative weight edges](./img/Negative-weight-4.png) 
- OK, the drums have a cost of $35 now.

---

- Let's get the next-cheapest node than hasn't already been processed.
- ![Negative weight edges](./img/Negative-weight-5.png) 
- Update the costs for its neighbors.
- ![Negative weight edges](./img/Negative-weight-6.png) 
- You already processed the poster node, but you're updating the cost for it.

---

- This is a big red flag. Once you processs a node, it means there's no cheaper way to get to that node.
- But you just found a cheaper way to the poster! Drums doesn't have any neighbors, so that's the end of the algorithm.
- Here are the final costs.
- ![Negative weight edges](./img/Negative-weight-7.png) 
- It costs $35 to get to the drums.
- You know that there's a path that costs only $33, but Dijkstra's algorithm didn't find it.

---

- Dijkstra's algorithm assumed that because you were processed the poster node, there was no faster way to get to that node.
- That assumption only works if you have no negative weight edges.
- So you cant's use negative weight edges with Dijkstra's algorithm.
- If you want to find the shortest path in a graph that has negative weight edges, there's an algorithm for that! It's called the **Bellman Ford algorithm**.
- Bellman Ford is out of the scope of this book, but you can find some great explanations online.

