# Data Structures and Algorithms (DSA)

This is a data structures and algorithms (DSA) guidelines with a strong focus on passing coding interviews for software engineering jobs.

## Topics

- `Stacks`
  - A stack is a collection of elements that allows adding and removing items only from one end, known as the top.
  - It follows the Last-In, First-Out (LIFO) principle, meaning the last element added is the first one to be removed.
- `Queues`
  - A queue is a data structure that follows the First-In, First-Out (FIFO) principle, where elements are added at one end, known as the rear, and removed from the other end, known  as the front.
  - It maintains the order in which elements are added, ensuring that the oldest element is dequeued first.
- `Linked Lists`
  - A linked list is a linear data structure consisting of nodes where each node contains a data element and a reference (or pointer) to the next node in the sequence.
  - Unlike arrays, linked lists do not have a fixed size, and elements can be efficiently inserted or removed from any position within the list.
- `Hashing`
  - Hashing involves efficiently mapping data elements to unique keys using a hash function, allowing for fast retrieval, insertion, and deletion of values in data structures like hash tables.
  - It facilitates quick access to stored information by converting keys into indices, reducing search time complexity to nearly constant time on average.
- `Trees`
- `Graphs`
- `Heaps`
- `Greedy`
- `Searching`
  - `Binary Search`
  - `Depth First Search`
  - `Breadth First Search`

## Big O

`Big O` notation in DSA is a way to measure the efficiency of algorithms.
It provides a standardized method to express how the time or space taken by an algorithm grows with the size of the input.

- `Time Complexity:` Describes how the runtime of an algorithm scales with input size.
  - `O(1)` -> Constant time
  - `O(log n)` -> Logarithmic time
  - `O(n)` -> Linear time
  - `O(n^2), O(n^3)` -> Polynomial time
  - `O(2^n), O(n!)` -> Exponential time
- `Space Complexity:` Describes how the memory usage of an algorithm scales with input size.
  - `O(1)` -> Constant space
  - `O(n)` -> Linear space
  - `O(n^2), O(n^3)` -> Polynomial space
  - `O(log n), O(n log n)` -> Logarithmic or linearithmic space

Understanding `Big O` helps in choosing efficient algorithms and data structures,
crucial for optimizing performance, especially with large datasets or performance-critical applications.
