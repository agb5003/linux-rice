# Exercise 6-1: var_pointer.c

<p align='center'> <img src='./ex6-1.png' width=75%> </p>

# Introduction to pointers and memory addresses

In C, memory and resource management are integral factors in writing efficient and effective code. To that end, pointers and memory addresses play an important role in doing these tasks.

## Pointers in C

A pointer is essentially a variable that contains the memory address of another variable, hence the name. It points to the location in the computer's memory where said variable is stored. In C, the declaration and dereferencing of pointers are denoted by an asterisk (*), and obtaining the memory address of a variable is done by using an ampersand (&). Pointers allow for dynamic memory allocation and modification, which allows for more efficient use of memory resources and more complex data structures.

Although the concept of pointers and memory addresses seem foreign to other, more popular languages, they are in fact not exclusive to C. For instance, the close derivative of C, C++, also uses pointers, although the language provides higher-level concepts like smart pointers, which manage memory automatically, as opposed to C where it has to be managed programatically by the programmer. Another language that makes use of pointers is Rust, which is quickly gaining popularity, in part due to its similar speed to C while improving memory safety significantly. Rust is special in that it guarantees memory safety without using garbage collection.

[comment]: <> (Below is CSS code for the output HTML and pdf files. Don't touch them unless you know what you're doing.)
<style>
    figcaption{
    text-align:center;
        font-size:9pt
    }
    img{
        filter: drop-shadow(0px 0px 7px );
    }
    .noshade{
        filter: none
    }
</style>