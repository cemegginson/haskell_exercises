module Exercises where
-- Problem 1 - Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "Empty List"
myLast (x:xs)
    | null xs   = x
    | otherwise = myLast xs

-- Problem 2 - Find the next to last element of a list.
nextToLast :: [a] -> a
nextToLast [] = error "Empty List"
nextToLast (x:xs)
    | length xs == 1 = x
    | otherwise      = nextToLast xs

-- Problem 3 - find the kth element of a list
elementAt :: [a] -> Int -> a
elementAt xs x = xs !! x

-- Problem 4 - Count the number of elements in a list
elementCount :: [a] -> Int
elementCount []     = 0
elementCount (_:xs) = 1 + elementCount xs

-- Problem 5 - Reverse a list
reverseList :: [a] -> [a]
reverseList [] = []
reverseList xs = last xs : reverseList (init xs)

-- Problem 6 - Identify if a list is a palindrome
palindromeTest :: (Eq a) => [a] -> Bool
palindromeTest [] = True
palindromeTest xs
    | length xs == 1        = True
    | firstItem == lastItem = palindromeTest center
    | otherwise             = False
    where firstItem = head xs
          lastItem  = last xs
          center    = init (tail xs)

-- Problem 7 - Flatten a nested list structure
-- flatten :: [a] -> [a]
-- flatten [] = []
-- flatten xs

-- Problem 8 - Eliminate consecutive duplicates of list elements
dedup :: (Eq a) => [a] -> [a]
dedup [] = []
dedup (x:xs)
    | null xs         = [x]
    | x == secondElem = dedup (x : tail xs)
    | otherwise       = x : dedup xs
    where secondElem = head xs

-- Problem 9 - Pack consecutive duplicates of list elements into sublists. If a
-- list contains repeated elements they should be placed in separate sublists.


-- Problem 10 - Run-length encoding of a list. Use the result of problem P09 to
-- implement the so-called run-length encoding data compression method.
-- Consecutive duplicates of elements are encoded as lists (N E) where N is the
-- number of duplicates of the element E.


-- Problem 11 - Modified run-length encoding.
-- Modify the result of problem 10 in such a way that if an element has no duplicates it is simply
-- copied into the result list. Only elements with duplicates are transferred as (N E) lists.


-- Problem 12 - Decode a run-length encoded list.
-- Given a run-length code list generated as specified in problem 11. Construct its uncompressed
-- version.


-- Problem 13 - Run-length encoding of a list (direct solution).
-- Implement the so-called run-length encoding data compression method directly. I.e. don't
-- explicitly create the sublists containing the duplicates, as in problem 9, but only count them.
-- As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.


-- Problem 14 - Duplicate the elements of a list.
duplicate :: [a] -> [a]
duplicate []     = []
duplicate (x:xs) = x : x : duplicate xs

-- Problem 15 - Replicate the elements of a list a given number of times.


-- Problem 16 - Drop every N'th element from a list.
-- dropNth :: [a] -> Int -> [a]
-- dropNth [] _ = []
-- dropNth (x:xs) n
--     |
--     where nth =

-- Problem 17 - Split a list into two parts; the length of the first part is given.
-- Do not use any predefined predicates.


-- Problem 18 - Extract a slice from a list.
-- Given two indices, i and k, the slice is the list containing the elements between the i'th and
-- k'th element of the original list (both limits included). Start counting the elements with 1.


-- Problem 19 - Rotate a list N places to the left.
-- Hint: Use the predefined functions length and (++).


-- Problem 20 - Remove the K'th element from a list.


-- Problem 21 - Insert an element at a given position into a list.


-- Problem 22 - Create a list containing all integers within a given range.


-- Problem 23 - Extract a given number of randomly selected elements from a list.


-- Problem 24 - Lotto: Draw N different random numbers from the set 1..M.


-- Problem 25 - Generate a random permutation of the elements of a list.


-- Problem 26 - Generate the combinations of K distinct objects chosen from the N elements of a list
-- In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there
-- are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients). For pure
-- mathematicians, this result may be great. But we want to really generate all the possibilities in
-- a list.


-- Problem 27 - Group the elements of a set into disjoint subsets.
-- a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons?
-- Write a function that generates all the possibilities and returns them in a list.
-- b) Generalize the above predicate in a way that we can specify a list of group sizes and the
-- predicate will return a list of groups.


-- Problem 28 - Sorting a list of lists according to length of sublists
-- a) We suppose that a list contains elements that are lists themselves. The objective is to sort
-- the elements of this list according to their length. E.g. short lists first, longer lists later,
-- or vice versa.
-- b) Again, we suppose that a list contains elements that are lists themselves. But this time the
-- objective is to sort the elements of this list according to their length frequency; i.e., in the
-- default, where sorting is done ascendingly, lists with rare lengths are placed first, others with
-- a more frequent length come later.
