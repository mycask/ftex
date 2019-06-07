Stanford Fortran Tutorials
==========================

This project contains the famous Stanford tutorials on Fortran 77 and
Fortran 90 converted to LaTeX source code and then compiled to PDFs.
Here are the URLs of the original tutorials that were published as HTML
pages:

  - <https://web.stanford.edu/class/me200c/tutorial_77/>
  - <https://web.stanford.edu/class/me200c/tutorial_90/>


Content
-------

* [Differences from the Originals](#differences-from-the-originals)
* [Fortran 77 Tutorial: Fixes](#fotran-77-tutorial-fixes)
* [Fortran 77 Tutorial: Errata](#fotran-77-tutorial-errata)


Differences from the Originals
------------------------------

The LaTeX source code has been written in such a manner that the content
of the compiled PDFs is as close to the original content as possible.
However, in the interest of better typography and correctness, a few
changes are present:

  - Add syntax highlighting to code examples.
  - Update all headings to use title case consistently. The original
    tutorials use title case for some headings and sentence case for
    others.
  - Remove trailing colon from heading.
  - Display any inline code fragment, file names, commands, etc. in
    monospace font. The original tutorials use either regular or italic
    font.
  - Fix typos.
  - Render mathematical expressions in the text (not the ones in the
    code examples) using LaTeX math mode.
  - Slightly more vertical space the copyright notice at the bottom of
    every section and the text above the copyright notice.


Fortran 77 Tutorial: Fixes
--------------------------

This section documents all fixes for typos. The fixed text is emphasized
in italics.

### Section 4: How to Use Fortran on the Unix Computers at Stanford

#### Original

> ..., you have translate the program into machine readable form.

#### Fix

> ..., you have *to* translate the program into machine readable form.

#### Original

> You can separate these two step by using ...

#### Fix

> You can separate these two *steps* by using ...


### Section 5: Variables, Types, and Declarations

The entry for `double precision` in the original tutorial is misaligned.
It has been fixed in the LaTeX and PDF versions of the tutorial in this
project.



Fortran 77 Tutorial: Errata
---------------------------

The following errors found in the original tutorial occur intact in
the LaTeX and PDF version of the tutorial in this project. Here is a
list of the errors:


### Section 5: Variables, Types, and Declarations

The tutorial mentions,

> The words which make up the Fortran language are called reserved words
> and cannot be used as names of variable. Some of the reserved words
> which we have seen so far are "program", "real", "stop" and "end".

In reality, these keywords can be used as variable names. Here is an
example program:

```fortran
      program variables

      integer program
      integer real
      integer stop
      integer end

      program = 10
      real = 20
      stop = 30
      end = 40

      write (*,*) program, real, stop, end

      stop
      end
```
