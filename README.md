# Objective-C MRC Memory Leak: Retain/Release Mismatch

This repository demonstrates a subtle memory leak in Objective-C that can occur when using manual reference counting (MRC). The bug involves improper handling of retain and release calls, leading to a retained object when the owner is deallocated.

## Bug Description
The bug is demonstrated in `bug.m`.  A class instance retains a string object, but the string isn't properly released when the class instance is deallocated. This results in a memory leak.

## Solution
The solution is demonstrated in `bugSolution.m`. The `dealloc` method is correctly updated to release the string, solving the memory leak.  The solution also highlights the importance of using `@property` attributes such as `copy` and `strong` in modern Objective-C development (ARC) to avoid this type of error.