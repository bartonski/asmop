ASMOP
=====

Concept
-------

ASMOP stands for "A Small Matter Of Programming".

Computer programming has a number of large challenges that lie outside of coding:

* Design of the program
* Determining the balance between abstraction and readability
* Keeping documentation up to date
* Creating re-usable code which gets used because people can find it
* Keeping implementations in different programming languages in sync
* Communicating the concepts about what the code is supposed to do

ASMOP is a framework for de-coupling software design, testing and documentation from implementation. It uses a wiki-like tree of markdown formatted files to help define abstract concepts and documentation for both new users and those looking for reference.  The structure and contents of this tree informs individual implementations of the software.

ASMOP is intended to be lightweight and to provide enough structure to be useful, but not so much as to interfere with the implementation of software in different programming languages or environments.

Using ASMOP should amortize the cost of design, testing and documentation across multiple implementations of the software.

Discovery Documentation
-----------------------

    implementations/posix_shell/asmop TOPIC
   
If called with TOPIC

* copy template to 'topic file'
* open the topic file in $EDITOR
* create a link to the topic in the index markdown file

Traverse 'markdown' directory, render all markdown files to HTML in parallel 'html' directory tree.

Conventions
-----------
The template contains the following sections:

**Title**
:    The name of the program or project being being documented.

**Concept**
:    The idea or group of ideas governing the software being developed -- The 'thing' in the phrase 'Do one thing well'.

**Discovery Documentation**
:    The entry point for new users of the software. After reading this section, a new user should have some idea of what the software is used for, where it fits in a larger framework, and where to get more detailed information

**Conventions**
:    Document the philosophy of the software, and how that informs its default behavior

**Reference Documentation**
:    The nuts and bolts documentation; it should cover any implemented API, and command line switches, applicable standards and known limitations

**Design**
:    Documents the software design at an algorithm level

**Test**
:    A pointer to a TAP test suite that each implementation must pass

**Implementations**
:    A pointer to the implementation of the software in a variety of programming languages. Should contain pointers to the implementation of software within the ASMOP package as well as any downstream repositories, e.g. CPAN, PEAR.

**Orthogonal Concepts**
:    Related concepts, which should *not* be implemented in this software.

Reference Documentation
-----------------------

Design
------

#. If a topic exists, edit its markdown page.
    #. If the topic page doesn't exist, copy in template and create link in index.
#. Create HTML documentation
    #. Start with a clean html directory
    #. Create the directory tree
    #. Render markdown files to HTML.

Test
----

Implementations
---------------
* [posix_shell](../../../implementations/posix_shell/)
    * Dependency on 'pandoc'

Orthogonal Concepts
-------------------

To-do
-----

Populate

* Orthogonal Concepts
* Test
* Reference Documentation

Features

* Create hooks to export documentation and design to individual implementations
* Create method of propagating changes in template to already created topic pages.

