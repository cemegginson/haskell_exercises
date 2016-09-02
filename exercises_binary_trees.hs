module Exercises where
-- Problem 54A - Check whether a given term represents a binary tree


-- Problem 55 - Construct completely balanced binary trees
-- In a completely balanced binary tree, the following property holds for every node: The number of
-- nodes in its left subtree and the number of nodes in its right subtree are almost equal, which
-- means their difference is not greater than one.
-- Write a function cbal-tree to construct completely balanced binary trees for a given number of
-- nodes. The predicate should generate all solutions via backtracking. Put the letter 'x' as
-- information into all nodes of the tree.


-- Problem 56 - Symmetric binary trees
-- Let us call a binary tree symmetric if you can draw a vertical line through the root node and
-- then the right subtree is the mirror image of the left subtree. Write a predicate symmetric/1 to
-- check whether a given binary tree is symmetric. Hint: Write a predicate mirror/2 first to check
-- whether one tree is the mirror image of another. We are only interested in the structure, not in
-- the contents of the nodes.


-- Problem 57 - Binary search trees (dictionaries)
-- Use the predicate add/3, developed in chapter 4 of the course, to write a predicate to construct
-- a binary search tree from a list of integer numbers.


-- Problem 58 - Generate-and-test paradigm
-- Apply the generate-and-test paradigm to construct all symmetric, completely balanced binary trees
-- with a given number of nodes.


-- Problem 59 - Construct height-balanced binary trees
-- In a height-balanced binary tree, the following property holds for every node: The height of its
-- left subtree and the height of its right subtree are almost equal, which means their difference
-- is not greater than one.
-- Construct a list of all height-balanced binary trees with the given element and the given maximum
-- height.


-- Problem 60 - Construct height-balanced binary trees with a given number of nodes
-- Consider a height-balanced binary tree of height H. What is the maximum number of nodes it can
-- contain?
-- Clearly, MaxN = 2**H - 1. However, what is the minimum number MinN? This question is more
-- difficult. Try to find a recursive statement and turn it into a function minNodes that returns
-- the minimum number of nodes in a height-balanced binary tree of height H. On the other hand, we
-- might ask: what is the maximum height H a height-balanced binary tree with N nodes can have?
-- Write a function maxHeight that computes this. Now, we can attack the main problem: construct all
-- the height-balanced binary trees with a given number of nodes. Find out how many height-balanced
-- trees exist for N = 15.


-- Problem 61 - Count the leaves of a binary tree
-- A leaf is a node with no successors. Write a predicate count_leaves/2 to count them.


-- Problem 61A - Collect the leaves of a binary tree in a list
-- A leaf is a node with no successors. Write a predicate leaves/2 to collect them in a list.

-- Problem 62 - Collect the internal nodes of a binary tree in a list
-- An internal node of a binary tree has either one or two non-empty successors. Write a predicate
-- internals/2 to collect them in a list.

-- Problem 62B - Collect the nodes at a given level in a list
-- A node of a binary tree is at level N if the path from the root to the node has length N-1. The
-- root node is at level 1. Write a predicate atlevel/3 to collect all nodes at a given level in a
-- list.


-- Problem 63 - Construct a complete binary tree
-- A complete binary tree with height H is defined as follows:
-- The levels 1,2,3,...,H-1 contain the maximum number of nodes (i.e 2**(i-1) at the level i)
-- In level H, which may contain less than the maximum possible number of nodes, all the nodes are
-- "left-adjusted". This means that in a levelorder tree traversal all internal nodes come first,
-- the leaves come second, and empty successors (the nil's which are not really nodes!) come last.
-- Particularly, complete binary trees are used as data structures (or addressing schemes) for
-- heaps.
-- We can assign an address number to each node in a complete binary tree by enumerating the nodes
-- in level-order, starting at the root with number 1. For every node X with address A the following
-- property holds: The address of X's left and right successors are 2*A and 2*A+1, respectively, if
-- they exist. This fact can be used to elegantly construct a complete binary tree structure.
-- Write a predicate complete_binary_tree/2.


-- Problem 64 - Write a function to annotate each node of the tree with a position, where (1,1) in
-- the top left corner or the rectangle bounding the drawn tree. (It's best to just read the
-- description on the website - https://wiki.haskell.org/99_questions/61_to_69)


-- Problem 65 - Find out the rules and write the corresponding function. Hint: On a given level, the
-- horizontal distance between neighboring nodes is constant.
-- Use the same conventions as in problem P64 and test your function in an appropriate way.
-- (Check the website again)


-- Problem 66 - The method yields a very compact layout while maintaining a certain symmetry in
-- every node. Find out the rules and write the corresponding Prolog predicate. Hint: Consider the
-- horizontal distance between a node and its successor nodes. How tight can you pack together two
-- subtrees to construct the combined binary tree?
-- Use the same conventions as in problem P64 and P65 and test your predicate in an appropriate way.
-- Note: This is a difficult problem. Don't give up too early!
-- (Just check the website again.)


-- Problem 67A - A string representation of binary trees
-- Somebody represents binary trees as strings of the following type:
-- a(b(d,e),c(,f(g,)))
-- a) Write a Prolog predicate which generates this string representation, if the tree is given as
-- usual (as nil or t(X,L,R) term). Then write a predicate which does this inverse; i.e. given the
-- string representation, construct the tree in the usual form. Finally, combine the two predicates
-- in a single predicate tree_string/2 which can be used in both directions.


-- Problem 68 - Preorder and inorder sequences of binary trees. We consider binary trees with nodes
-- that are identified by single lower-case letters, as in the example of problem P67.
-- a) Write predicates preorder/2 and inorder/2 that construct the preorder and inorder sequence of
-- a given binary tree, respectively. The results should be atoms, e.g. 'abdecfg' for the preorder
-- sequence of the example in problem P67.
-- b) Can you use preorder/2 from problem part a) in the reverse direction; i.e. given a preorder
-- sequence, construct a corresponding tree? If not, make the necessary arrangements.
-- c) If both the preorder sequence and the inorder sequence of the nodes of a binary tree are
-- given, then the tree is determined unambiguously. Write a predicate pre_in_tree/3 that does the
-- job.


-- Problem 69 - Dotstring representation of binary trees.
-- We consider again binary trees with nodes that are identified by single lower-case letters, as in
-- the example of problem P67. Such a tree can be represented by the preorder sequence of its nodes
-- in which dots (.) are inserted where an empty subtree (nil) is encountered during the tree
-- traversal. For example, the tree shown in problem P67 is represented as 'abd..e..c.fg...'. First,
-- try to establish a syntax (BNF or syntax diagrams) and then write a predicate tree_dotstring/2
-- which does the conversion in both directions. Use difference lists.
