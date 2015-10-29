The Sieve of Eratosthenes in Brainfuck

(I use semicolons instead of commas and periods so that I don't break the validity of the code)
The program prints primes up to N; which it reads from input (terminated by 0)
Memory cells are divided into groups of five; each group represents one number
Each cell of the group has a certain function:
1: The number itself
2: Number of divisors of this number minus 2; this value is 0 for primes and more for composite numbers
3: Whether the number is in range from 1 to N; 1 if yes; 0 if no
4: Temporary value
5: Temporary value

THE PROGRAM ITSELF
>>>>>>>>>>>>>
Print "Enter a number:" and read input
+++++++++++[->++++++>++++++++++>+++++++++>+++<<<<]>+++.>.++++
++.>++.<--.>>-.<----.>.<<----.+++++++.--------.>+.+++.<+++++.
<-----------.>>>.[-]<[-]<[-]<[-]+[[-]>[-],[+[-----------[>[-]
++++++[-<------>]<--<<[->>++++++++++<<]>>[-<<+>>]<+>]]]<]<
Initialization
[->+>+<<]>>[-<<+>>]<-
[<<+>
    [->>>>+>+<<<<<]
    >>>>[-<<<<+>>>>]<<<
    [->>>>>+<<<<<]>>>>>-
]<<+>
Assign numbers to the groups
[-<<<+>>>]<<<-
[+<<[-]>>[-<+<<<<+>>>>>]<[->+<]<<<<--]

>>->>>
>>[
<[->>+>+<<<]>>>[-<<<+>>>]+<
[[-]>[-]<]
>[[-]
Copy data from current number
Moving to the "index" cell in the group
<<<<
[->+>>+>+<<<<]>[-<+>]>
[>
    [ We haven't jumped enough
        [->>>>>+<<<<<]>>>>>-<<<<<
        >[->>>>>+<<<<<]<<->
    ]<[ Mark as composite
        <+>->>[-<+<+>>]<<[->>+<<]>
        [->>>>>+<<<<<]>>>>>-<<<<<
        >[->>>>>+<<<<<]<
        <
    ]
    [-]+>>>>>
]
Go back
>[->-<]>+[[-<<<<<+>>>>>]<<<<<-]
<<[<<<<<]>>>>>>>]
<<
Go to next number
[-]>>>>>
]<<
Output (printing ASCII as numbers adapted from elsewhere)
<<<<<[<<<<<]>>>>>
[>>[-]+<[[-]>-<]>[
<<
<[-]<[-]<[-]<[-]<[-]<[-]<[-]<[-]<[-]++++++++++.[-] Newline before the number
>>>>>>>
++++++++++>>[-<+<-[<+<<]<[+[->+<]<+<<]>>>>>>]<<[-]<<<++++++++++>[-<-[<+<<]<[+[- >+<]<+<<]>>>>>]<[-]<<[<++++++[->++++++++<]>.>>+<+<[-]]>[>[-<->]++++++[-<++++++++>]<.[-]]>>++++++[->++++++++<]>.[-]>>[->+<]>
>
>-]
>>>]