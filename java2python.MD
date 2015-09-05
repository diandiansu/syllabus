# Quick primer on Java to Python mappings

This document is a _very_ quick primer that compares the basic constructs and 
data structures between Java and Python.

Python is a great language because there is an incredible wealth of documentation and 
tutorials for the language.

* [Python tutorial](https://docs.python.org/2/tutorial/)
* [Learn Python The Hard Way](http://learnpythonthehardway.org/book/)


## Main program structure

Java main classes have a special method called `main` that denotes an executable class.
They are also typically defined in a file with the same name as the class name. 
For example, the file `HelloWorld.java` may contain class `HelloWorld`:

        class HelloWorld {
          public static void main(String[] args) {
            System.out.println("Hello World");
          }
        }

In contrast, every python file is a script that can be run by typing `python <filename>` in the 
shell.  The script is then executed from top to bottom.  For example, `helloworld.py` may look like:

        print "Hello World"



### Functions

Java requires that functions are defined as part of Class definitions:

        class HelloWorld {
          public void f() {
            System.out.println("Hello World");
          }
        }

In python, functions can be directly defined independent of class definitions:

        def f():
          print "Hello World"

        f()

### Indentation

In Java, statement grouping is defined by using curly braces `{ }`.  However Python groups statements based on
_indentation level_.  This is why in the above function definition, the `print "Hello World"` statement is
indented -- so it is grouped as part of the `def f()` statement.   You will see this for the other control structures below.


## Control structures

### If statements

Java: 

        int n = 0;
        if (1 > 1) {
          n = 1;
        } else if (1 < 1) {
          n = 2;
        } else {
          n = 3;
        }

Python:

        n = 0
        if 1 > 1:
          n = 1
        elif 1 < 1:
          n = 2
        else:
          n = 3
          
### Switch statements

Java:

        switch(i) {
          case 0: 
            i = 0;
            break;
          case 1: 
            i = 1;
          default: 
            i = 2;
        }

Python doesn't have a switch statement, so you need to use
if/else.

        if i == 0: 
          i = 0;
        elif i == 1: 
          i = 1
          i = 2
        else: 
          i = 2

### for loops


Java has a for loop:

        for (int i = 0; i < 100; i++) {
        }

Python has a very powerful and flexible `for` loop structure.  The above
can be mechanically translated to:

        i = 0
        while i < 100:
          # note: python doesn't have the ++ shorthand, 
          # but has the += shorthand
          i += 1    


Java has a more convenient `for` loop for iterables:

        List<Integer> l = ...;
        for (int i : l) {
          System.out.println(i);
        }

Python's for loop is similar

        l = [0,1,2]
        for i in l:
          print i

But has a powerful `for-comprehension` capabilitiy:

        l = [0, 1, 2]
        r = range(3)
        # l and r contain the same values

        for i in l:
          print i

        # prints: [0, 2, 4]
        l2 = [i*2 for i in l]
        print l2

        # prints: [0, 2, 4]
        print [i*2 for i in range(3)]


The `for-comprehension` also accepts boolean conditions in the `if`
clause:

        # prints: [0, 4]
        print [i*2 for i in range(3) if i != 1]



## Maps and Dictionaries

Java has Maps that map keys to values:

        Map<String, String> map = new HashMap<String, String>();
        map.put("hello", "world");

Python has a similar data structure called a dictionary.  
There are multiple ways to instantiate it:

        # Method 1
        d1 = dict()
        d1["hello"] = "world"


        # Method 2, passing key values in constructor
        d2 = dict(hellor="world")

        # Method 3, using {}
        d3 = {}
        d3["hello"] = "world"

        # Method 4, initializing {}.  Note that the key has string quotes around it
        d4 = {"hello": "world"}

It can be accesses easily:

        # "world"
        print d4["hello"]


The `collections~ package that comes with Python has a useful `defaultdict`
data structure.  Instead of throwing an error when trying to access 
a key that doesn't exist, it calls a user defined method:

        from collections iport defaultdict
        d = defaultdict(lambda: list())
        d[1] = 99
        d[2].append(3)

        # { 1: 99, 2: [3] }
        print d

## Lists 

Python uses the following syntax for lists

        l1 = [0, 1, 2]

Python also has a useful `range()` function:

        # [0, 1, 2]
        print range(3)

        # [0, 2, 4]
        print range(0, 5, 2)

        # [0, 1, 2]
        print [0, 1, 2]

