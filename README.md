codex-palindromes
=================

Codex M1 palindrome puzzle solution in Ruby

## Problem

You are given a list of non-unique items. A list of non-unique items implies that there is at least one duplicate. Such lists may themselves or their subsequences be palindromes. Develop an algorithm to find the longest palindrome subsequence(s).

Provide an answer for:

Find the largest palindrome(s) comprised of "A, C, T, G" which build the following DNA chains:

1) [A, T]

2) [G, A, G]

3) [C, A, C, A, T, A T]

4) [T, T, G, A, T, G, G, G, T] 

5) [C, A, C, A, A, T, T, C, C, C, A, T, G, G, G, T, T, G, T, G, G, A, G]

## Usage

    ruby palindrome.rb tacattaccgccgc

The examples listed in the original problem are built into the script, to run them:

    ruby palindrome.rb ? [problem number]
    ruby palindrome.rb ? 5
