REM MIT License

REM Copyright (c) 2020 Jean-Jacques François Reibel

REM Permission is hereby granted, free of charge, to any person obtaining a copy
REM of this software and associated documentation files (the "Software"), to deal
REM in the Software without restriction, including without limitation the rights
REM to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
REM copies of the Software, and to permit persons to whom the Software is
REM furnished to do so, subject to the following conditions:

REM The above copyright notice and this permission notice shall be included in all
REM copies or substantial portions of the Software.

REM THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
REM IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
REM FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
REM AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
REM LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
REM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
REM SOFTWARE.

Cls
REM OOP really cannot be done in BASIC, as the original version is
REM even more primitive than Pascal, but we can use an array to
REM define a primitive pseudo-class, and allow another array
REM to be created as a copy of the previous array, in effect using
REM the original array as a base class to define an object
REM using C to represent car. Although car can be used in more
REM recent versions of BASIC, the original Dartmouth BASIC only
REM permitted arrays to be named with single letters A-Z
REM and were only permitted to hold up to 10 elements unless
REM the DIM keyword was prefixed. Subscripts were 1-10 in Version 1
REM subscripts were changed to 0-9 in Version 2
REM Version 1: s[1]=4
REM Version 2: s[0]=4
REM Arrays would contain integers, floats, or strings
REM It is generally considered bad programming practice in the modern
REM era to name variables with C, because most code today runs atop
REM C and C++ programs, which have the letter C as a reserved
REM character
REM As a last thing to note, the ability to define functions in BASIC
REM was not added until Version 4, using the keyword DEF

ARRAY C
C[1] = 0
C[2] = 0
C[3] = 0

PRINT "Creating car."
ARRAY S
S = C
S[1] = 4
S[2] = 4
S[3] = 4
PRINT "Wheel check: " + S[1]
PRINT "Door check: " + S[2]
PRINT "Cylinder check: " + S[3]
PRINT ""

PRINT "Adding wheel directly to car object."
S[1] = 5
PRINT "Wheel check: " + S[1]
PRINT "Door check: " + S[2]
PRINT "Cylinder check: " + S[3]
PRINT ""

PRINT "Removing wheel directly from car object."
S[1] = S[1] - 1
PRINT "Wheel check: " + S[1]
PRINT "Door check: " + S[2]
PRINT "Cylinder check: " + S[3]
PRINT ""

End