# Phase 1 — Core Foundations (20 Problems)

## HashMap / Counting
- **✅ 1. Two Sum**
- **✅ 217. Contains Duplicate**
- **✅ 242. Valid Anagram**
- **✅ 169. Majority Element**
- **✅ 219. Contains Duplicate II**

## Two Pointers
- **✅ 283. Move Zeroes**
- **✅ 344. Reverse String**
- **✅ 125. Valid Palindrome**
- **✅ 167. Two Sum II – Input Array Is Sorted**
- **✅ 977. Squares of a Sorted Array**

## Sliding Window
- **✅ 121. Best Time to Buy and Sell Stock**
- **✅ 53. Maximum Subarray**
- **✅ 643. Maximum Average Subarray I**
- **✅ 3. Longest Substring Without Repeating Characters**

## Stack
- **✅ 20. Valid Parentheses**
- **✅ 232. Implement Queue using Stacks**
- **✅ 155. Min Stack**

## Math
- **7. Reverse Integer**
- **9. Palindrome Number**
- **66. Plus One**


# Phase 2 — Pattern Mastery (35 Problems)

## HashMap Advanced
- **49. Group Anagrams**
- **✅ 383. Ransom Note**
- **✅ 387. First Unique Character in a String**
- **✅ 389. Find The Difference**
- **✅ 409. Longest Palindrome**
- **451. Sort Characters By Frequency**
- **560. Subarray Sum Equals K**
- **454. 4Sum II**
- **205. Isomorphic Strings**

## Sliding Window Advanced
- **76. Minimum Window Substring**
- **438. Find All Anagrams in a String**
- **567. Permutation in String**
- **424. Longest Repeating Character Replacement**
- **209. Minimum Size Subarray Sum**

## Two Pointers Advanced
- **15. 3Sum**
- **18. 4Sum**
- **11. Container With Most Water**
- **349. Intersection of Two Arrays**
- **✅ 202. Happy Number**

## Prefix Sum
- **303. Range Sum Query**
- **724. Find Pivot Index**
- **525. Contiguous Array**
- **560. Subarray Sum Equals K**

## Math / Number
- **50. Pow(x, n)**
- **43. Multiply Strings**


# Phase 3 — Linked Lists & Recursion (15 Problems)

- **✅ 206. Reverse Linked List**
- **✅ 141. Linked List Cycle**
- **142. Linked List Cycle II**
- **✅ 21. Merge Two Sorted Lists**
- **19. Remove Nth Node From End of List**
- **234. Palindrome Linked List**
- **2. Add Two Numbers**
- **160. Intersection of Two Linked Lists**

## Recursion
- **✅ 509. Fibonacci Number**
- **70. Climbing Stairs**
- **231. Power of Two**
- **50. Pow(x, n)**


# Phase 4 — Trees (25 Problems)

- **✅ 226. Invert Binary Tree**
- **✅ 104. Maximum Depth of Binary Tree**
- **✅ 111. Minimum Depth of Binary Tree**
- **✅ 543. Diameter of Binary Tree**
- **✅ 100. Same Tree**
- **101. Symmetric Tree**
- **112. Path Sum**
- **113. Path Sum II**
- **110. Balanced Binary Tree**
- **257. Binary Tree Paths**
- **235. Lowest Common Ancestor of BST**
- **236. Lowest Common Ancestor of Binary Tree**
- **199. Binary Tree Right Side View**
- **102. Binary Tree Level Order Traversal**
- **103. Binary Tree Zigzag Level Order Traversal**
- **124. Binary Tree Maximum Path Sum**
- **129. Sum Root to Leaf Numbers**


# Phase 5 — Binary Search Mastery (15 Problems)

- **✅ 704. Binary Search**
- **✅ 35. Search Insert Position**
- **✅ 278. First Bad Version**
- **33. Search in Rotated Sorted Array**
- **81. Search in Rotated Sorted Array II**
- **153. Find Minimum in Rotated Sorted Array**
- **34. Find First and Last Position**
- **✅ 875. Koko Eating Bananas**
- **✅ 1011. Capacity To Ship Packages Within D Days**
- **✅ 410. Split Array Largest Sum**
- **GFG: Allocate Minimum Number of Pages**


# Phase 6 — Heap / Priority Queue (10 Problems)

- **✅ 215. Kth Largest Element in an Array**
- **703. Kth Largest Element in a Stream**
- **347. Top K Frequent Elements**
- **973. K Closest Points to Origin**
- **295. Find Median from Data Stream**
- **621. Task Scheduler**


# Phase 7 — Monotonic Stack (10 Problems)

- **739. Daily Temperatures**
- **496. Next Greater Element I**
- **503. Next Greater Element II**
- **901. Online Stock Span**
- **84. Largest Rectangle in Histogram**
- **42. Trapping Rain Water**


# Phase 8 — Greedy (10 Problems)

- **122. Best Time to Buy and Sell Stock II**
- **455. Assign Cookies**
- **860. Lemonade Change**
- **55. Jump Game**
- **45. Jump Game II**
- **134. Gas Station**
- **435. Non-overlapping Intervals**


# Phase 9 — Backtracking (10 Problems)

- **78. Subsets**
- **90. Subsets II**
- **46. Permutations**
- **47. Permutations II**
- **77. Combinations**
- **39. Combination Sum**
- **40. Combination Sum II**
- **131. Palindrome Partitioning**


# Phase 10 — Graphs (15 Problems)

- **200. Number of Islands**
- **133. Clone Graph**
- **207. Course Schedule**
- **210. Course Schedule II**
- **994. Rotting Oranges**
- **417. Pacific Atlantic Water Flow**
- **695. Max Area of Island**
- **684. Redundant Connection**
- **743. Network Delay Time**


# Phase 11 — Dynamic Programming (20 Problems)

## 1D DP
- **70. Climbing Stairs**
- **198. House Robber**
- **213. House Robber II**
- **746. Min Cost Climbing Stairs**

## 2D DP
- **62. Unique Paths**
- **63. Unique Paths II**
- **64. Minimum Path Sum**
- **1143. Longest Common Subsequence**
- **72. Edit Distance**

## DP on Strings
- **392. Is Subsequence**
- **516. Longest Palindromic Subsequence**
- **5. Longest Palindromic Substring**

## Knapsack Style
- **322. Coin Change**
- **518. Coin Change II**
- **416. Partition Equal Subset Sum**



--------------------------------------------------------------------


# DSA Pattern Recognition Guide

This document lists the most important algorithmic patterns used in coding interviews.

Goal:
- Recognize patterns quickly
- Avoid memorizing solutions
- Build reusable mental templates

---

# Part 1 — The 7 Patterns That Solve ~50% of LeetCode Medium Problems

These patterns appear extremely frequently in interviews.

---

## 1. HashMap / Frequency Counting

### When to Use
- Counting frequency
- Detect duplicates
- Mapping value → index

### Signals
- "Find duplicates"
- "Count occurrences"
- "Check if two structures match"

### Key Idea
Use a hash table for O(1) lookups.

### Example Problems
1. Two Sum  
49. Group Anagrams  
242. Valid Anagram  
560. Subarray Sum Equals K  
347. Top K Frequent Elements

---

## 2. Sliding Window

### When to Use
Subarray or substring problems involving a contiguous range.

### Signals
- "Longest substring"
- "Minimum window"
- "Maximum sum subarray of size k"

### Key Idea
Maintain a window `[left, right]` and expand/shrink it.

### Example Problems
3. Longest Substring Without Repeating Characters  
76. Minimum Window Substring  
424. Longest Repeating Character Replacement  
438. Find All Anagrams in a String

---

## 3. Two Pointers

### When to Use
When processing arrays from both ends or solving pair problems.

### Signals
- Sorted array
- Pair/triplet sums
- Removing duplicates

### Key Idea
Use two indices moving toward each other.

### Example Problems
11. Container With Most Water  
15. 3Sum  
125. Valid Palindrome  
167. Two Sum II

---

## 4. Binary Search (Including Answer Search)

### When to Use
- Sorted data
- Finding minimum/maximum valid value

### Signals
- "Find smallest value"
- "Minimum possible X"
- Monotonic conditions

### Example Problems
704. Binary Search  
33. Search in Rotated Sorted Array  
875. Koko Eating Bananas  
410. Split Array Largest Sum

---

## 5. DFS / Tree Traversal

### When to Use
Tree or graph traversal problems.

### Signals
- Path exploration
- Tree depth or recursion

### Key Idea
Explore nodes recursively.

### Example Problems
104. Maximum Depth of Binary Tree  
226. Invert Binary Tree  
200. Number of Islands  
236. Lowest Common Ancestor

---

## 6. Heap / Top-K

### When to Use
When you must find top K largest/smallest elements.

### Signals
- "K largest"
- "K smallest"
- Streaming data

### Example Problems
215. Kth Largest Element in an Array  
347. Top K Frequent Elements  
295. Median from Data Stream

---

## 7. Dynamic Programming (1D Basics)

### When to Use
Optimization problems with overlapping subproblems.

### Signals
- Minimum/maximum result
- Multiple decisions
- Repeating states

### Example Problems
70. Climbing Stairs  
198. House Robber  
322. Coin Change  
746. Min Cost Climbing Stairs

---

# Part 2 — The 12 Core DSA Patterns (~80% Problems)

These are the complete foundational patterns.

---

## 1. HashMap / Frequency Counting

### Core Idea
Store value → count/index.

### Example Problems
Two Sum  
Group Anagrams  
Valid Anagram  
Subarray Sum Equals K

---

## 2. Two Pointers

### Core Idea
Use two indices to reduce complexity.

### Example Problems
3Sum  
Container With Most Water  
Valid Palindrome

---

## 3. Sliding Window

### Core Idea
Maintain a dynamic window over the array.

### Example Problems
Longest Substring Without Repeating Characters  
Minimum Window Substring  
Permutation in String

---

## 4. Prefix Sum

### Core Idea
Precompute cumulative sums.

### Example Problems
Range Sum Query  
Subarray Sum Equals K  
Pivot Index

---

## 5. Fast & Slow Pointer

### Core Idea
Use two speeds to detect cycles.

### Example Problems
Linked List Cycle  
Linked List Cycle II  
Happy Number

---

## 6. Binary Search

### Core Idea
Divide search space in half.

### Example Problems
Binary Search  
Search in Rotated Sorted Array  
First Bad Version

---

## 7. DFS (Depth-First Search)

### Core Idea
Explore deeply before backtracking.

### Example Problems
Maximum Depth of Binary Tree  
Number of Islands

---

## 8. BFS (Breadth-First Search)

### Core Idea
Traverse level by level.

### Example Problems
Binary Tree Level Order Traversal  
Rotting Oranges

---

## 9. Heap / Priority Queue

### Core Idea
Maintain ordered elements efficiently.

### Example Problems
Kth Largest Element  
Top K Frequent Elements

---

## 10. Monotonic Stack

### Core Idea
Stack with increasing/decreasing order.

### Example Problems
Daily Temperatures  
Largest Rectangle in Histogram  
Trapping Rain Water

---

## 11. Backtracking

### Core Idea
Try all possibilities with pruning.

### Example Problems
Subsets  
Permutations  
Combination Sum

---

## 12. Dynamic Programming

### Core Idea
Store results of subproblems.

### Example Problems
House Robber  
Coin Change  
Longest Common Subsequence