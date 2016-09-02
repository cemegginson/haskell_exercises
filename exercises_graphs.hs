module Exercises where
-- Problem 80 - Conversions
-- Write predicates to convert between the different graph representations. With these predicates,
-- all representations are equivalent; i.e. for the following problems you can always pick freely
-- the most convenient form. The reason this problem is rated (***) is not because it's particularly
-- difficult, but because it's a lot of work to deal with all the special cases.


-- Problem 81 - Path from one node to another one
-- Write a function that, given two nodes a and b in a graph, returns all the acyclic paths from a
-- to b.


-- Problem 82 - Cycle from a given node
-- Write a predicate cycle(G,A,P) to find a closed path (cycle) P starting at a given node A in the
-- graph G. The predicate should return all cycles via backtracking.


-- Problem 83 - Construct all spanning trees
-- Write a predicate s_tree(Graph,Tree) to construct (by backtracking) all spanning trees of a given
-- graph. With this predicate, find out how many spanning trees there are for the graph depicted to
-- the left. The data of this example graph can be found in the file p83.dat. When you have a
-- correct solution for the s_tree/2 predicate, use it to define two other useful predicates:
-- is_tree(Graph) and is_connected(Graph). Both are five-minutes tasks!


-- Problem 84 - Construct the minimal spanning tree
-- Write a predicate ms_tree(Graph,Tree,Sum) to construct the minimal spanning tree of a given
-- labelled graph. Hint: Use the algorithm of Prim. A small modification of the solution of P83 does
-- the trick. The data of the example graph to the right can be found in the file p84.dat.


-- Problem 85 - Graph isomorphism
-- Two graphs G1(N1,E1) and G2(N2,E2) are isomorphic if there is a bijection f: N1 -> N2 such that
-- for any nodes X,Y of N1, X and Y are adjacent if and only if f(X) and f(Y) are adjacent.
-- Write a predicate that determines whether two graphs are isomorphic. Hint: Use an open-ended list
-- to represent the function f.


-- Problem 86 - Node degree and graph coloration
-- a) Write a predicate degree(Graph,Node,Deg) that determines the degree of a given node.
-- b) Write a predicate that generates a list of all nodes of a graph sorted according to decreasing
-- degree.
-- c) Use Welch-Powell's algorithm to paint the nodes of a graph in such a way that adjacent nodes
-- have different colors.


-- Problem 87 - Depth-first order graph traversal (alternative solution)
-- Write a predicate that generates a depth-first order graph traversal sequence. The starting point
-- should be specified, and the output should be a list of nodes that are reachable from this
-- starting point (in depth-first order).


-- Problem 88 - Connected components (alternative solution)
-- Write a predicate that splits a graph into its connected components.


-- Problem 89 - Bipartite graphs
-- Write a predicate that finds out whether a given graph is bipartite.
