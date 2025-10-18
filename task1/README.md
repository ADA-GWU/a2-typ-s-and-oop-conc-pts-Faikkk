**Case 1: Declaring an array statically**

In C, static variables are stored in the data segment.One notable feature of static variables<br>
is that they live through the entire execution of the program, meaning that the values are retained <br>
 between the function calls.

**Case 2: Declaring an array on stack**

Local variables are stored on stack and should be allocated on each call, which obviously takes <br>
more time than persisting values through function calls (like in Case 1). <br>
The issue might arise when trying to declare very large arrays - stack overflow.

**Case 3: Declaring an array on heap**
The slowest among all, due to the heap allocation and deallocation being more expensive. <br>
The same operations are done faster on the stack, where only the stack pointer should be changed. <br>

However, when running the test code, I have observed that statically declaring array is the slowest option. <br>
The results are the following:<br>
Time of execution for statically declared array is 19.309569 seconds<br>
Time of execution for array on stack is 19.165923 seconds<br>
Time of execution for array on heap is 19.266719 seconds<br>
