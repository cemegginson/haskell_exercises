module Exercises where
-- Problem 70B - Check whether a given term represents a multiway tree.
-- In Prolog or Lisp, one writes a predicate to check this.


-- Problem 70C - Count the nodes of a multiway tree.


-- Problem 70 - Tree construction from a node string.
-- We suppose that the nodes of a multiway tree contain single characters. In the depth-first order
-- sequence of its nodes, a special character ^ has been inserted whenever, during the tree
-- traversal, the move is a backtrack to the previous level.
-- By this rule, the tree below (tree5) is represented as: afg^^c^bd^e^^^
-- (Check image on website)
-- Define the syntax of the string and write a predicate tree(String,Tree) to construct the Tree
-- when the String is given. Make your predicate work in both directions.


-- Problem 71 -  Determine the internal path length of a tree.
-- We define the internal path length of a multiway tree as the total sum of the path lengths from
-- the root to all nodes of the tree. By this definition, tree5 has an internal path length of 9.


-- Problem 72 - Construct the bottom-up order sequence of the tree nodes.
-- Write a predicate bottom_up(Tree,Seq) which constructs the bottom-up sequence of the nodes of the
-- multiway tree Tree.


-- Problem 73 - Lisp-like tree representation.
