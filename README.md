![aether logo](http://i.imgur.com/uf36eRD.jpg)
======
##Purpose
**aether** aims to make it easy for people to learn and write CoffeeScript and JavaScript by helping them catch and fix bugs, 
letting them see and more easily understand the execution of their program [(like Brett Victor commanded!)](http://youtu.be/PUv66718DII?t=17m25s), 
and giving them tips on how they can improve their code. [CodeCombat](http://codecombat.com/) is behind it.

##Functionality

###Compilation
The program should determine whether a given piece of code compiles.
####Successful Compilation
If compilation is successful, **aether** will compare the generated AST to the last AST generated by the user to avoid unnecessary computation.

####Unsuccessful Compilation
#####Syntax Errors
**aether** should return a list of syntax errors and warnings coupled with the line and column information.
#####Additional Errors and Error Modification
**aether** should allow custom errors and modification of errors generated by the parser.

For example, spell checking could be ran at compile time (and configured at runtime), and detailed compile errors thrown. 

In addition, validation of method arguments and return values should be performed, catching many imminent runtime errors.

By giving the user more detailed errors than those generated by the parser, a gentler educational experience can be provided.
#####Syntax manipulation
On certain errors, **aether** should manipulate the syntax to conform and throw a warning instead. For instance, if the user forgets a "this." while calling a method, it should be corrected, and the user educated about the mistake they made.

###Strict compilation
The code shall be compiled with the "use strict;" option to prevent the user from breaking the code with unsafe actions, such as accessing the global object, as well as catch some runtime errors before they happen.

##Runtime Error Detection
The code should catch common runtime errors as they happen, and instead of crashing, present configurable error messages that match up to the original, not compiled, source code.

###Instrumentation
**aether** should provide advanced code instrumentation features. 

####Performance
**aether** should report:
* How many times each function was called
* How many statements were executed
	* Assign a cost to each statement for more detailed performance metrics
* How deeply nested the execution was
* How much time was spent in execution

####Style
**aether** should report:
* SLOC
* Whether the code takes advantage of languages features such as objects, arrays, strings, regex, the Math library, recursion, functions, function passing, loops (including type), classes, etc. to provide a detailed picture of code complexity and style
* The user's style choices such as:
	* The user's variable naming style
	* Bracket positions

####Flow
**aether** should generate all of the info needed to step forwards and backwards (or to an arbitrary point) in code execution

####Context
**aether** should generate the values of any variables accessible to the function for each executed statement, so the user may see and understand how they change through the execution of the program.


###Piecewise Execution
Automatic continuations should be generated so that functions can be branched arbitrarily during execution 

###Sandboxing
**aether** should have complete control over the context and scope of code execution to prevent users from hacking out. Ideally, the main thread should be made safe, but if not, web workers should be safe.

####Infinite Loop Prevention
**aether** will terminate execution of code after a configurable amount of statements or execution time. 

####Read-only objects
**aether** will prevent users from making changes to read-only objects in the context.

####Variable persistence
**aether** will preserve local variables and non-read-only changes from execution to execution to enable stepping backwards and forwards, as well as more advanced "undo" features.

###Visualization
A nice feature for **aether** would be code visualization, for instance a rendering of the AST in graph form.

###Customizability
**aether** will be highly customizable and configurable in order to facilitate use by other projects.

##License
The MIT License (MIT)

Copyright (c) 2013 CodeCombat, Inc. and other contributors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.