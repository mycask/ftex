Stanford Fortran Tutorials
==========================

This project contains the famous Stanford tutorials on Fortran 77 and
Fortran 90 converted to LaTeX source code and then compiled to PDFs:

  - [![Download Fortran 77 Tutorial (A4 PDF)][F77_A4_IMG]][F77_A4_PDF]
  - [![Download Fortran 77 Tutorial (A6 PDF)][F77_A6_IMG]][F77_A6_PDF]
  - [![Download Fortran 90 Tutorial (A4 PDF)][F90_A4_IMG]][F90_A4_PDF]
  - [![Download Fortran 90 Tutorial (A6 PDF)][F90_A6_IMG]][F90_A6_PDF]

Here are the URLs of the original tutorials that were published as HTML
pages:

  - <https://web.stanford.edu/class/me200c/tutorial_77/>
  - <https://web.stanford.edu/class/me200c/tutorial_90/>

[F77_A4_IMG]: https://img.shields.io/badge/download-Fortran%2077%20Tutorial%20(A4%20PDF)-brightgreen.svg 
[F77_A6_IMG]: https://img.shields.io/badge/download-Fortran%2077%20Tutorial%20(A6%20PDF)-brightgreen.svg 
[F90_A4_IMG]: https://img.shields.io/badge/download-Fortran%2090%20Tutorial%20(A4%20PDF)-brightgreen.svg 
[F90_A6_IMG]: https://img.shields.io/badge/download-Fortran%2090%20Tutorial%20(A6%20PDF)-brightgreen.svg 

[F77_A4_PDF]: https://github.com/susam/stanford-fortran-tutorials/releases/download/0.1.0/stanford-fortran-77-tutorial-a4.pdf
[F77_A6_PDF]: https://github.com/susam/stanford-fortran-tutorials/releases/download/0.1.0/stanford-fortran-77-tutorial-a6.pdf
[F90_A4_PDF]: https://github.com/susam/stanford-fortran-tutorials/releases/download/0.1.0/stanford-fortran-90-tutorial-a4.pdf
[F90_A6_PDF]: https://github.com/susam/stanford-fortran-tutorials/releases/download/0.1.0/stanford-fortran-90-tutorial-a6.pdf


Content
-------

* [Differences from the Originals](#differences-from-the-originals)
* [Fortran 77 Tutorial: Fixes](#fotran-77-tutorial-fixes)


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

  - Original:

    > ..., you have translate the program into machine readable form.

    Fix:

    > ..., you have *to* translate the program into machine readable form.

  - Original:

    > You can separate these two step by using ...

    Fix:

    > You can separate these two *steps* by using ...


### Section 5: Variables, Types, and Declarations

  - The original tutorial contains this incorrect paragraph:

    > The words which make up the Fortran language are called reserved
    > words and cannot be used as names of variable. Some of the
    > reserved words which we have seen so far are "program", "real",
    > "stop" and "end".

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

    This incorrect paragraph has been removed in this project. This
    incorrect paragraph is missing from this URL as well:
    <http://www.tat.physik.uni-tuebingen.de/~kley/lehre/ftn77/tutorial/variables.html>.
    The tutorial in this URL appears to be based on an older version of
    the original tutorial from 1995 (as opposed to the latest version of
    the original tutorial from 1997).

  - The entry for `double precision` in the original tutorial is
    misaligned. It has been fixed in this project.


### Section 7: Logical Expressions

  - In the original tutorial, The list of relational operators is
    misaligned and contains stray double-quotes due to incorrect HTML.
    This has been fixed in this project.

  - The original tutorial displays this incomplete sentence due to
    incorrect HTML in its source code:

    > So you *cannot* use symbols like

    This has been fixed to:

    > So you cannot use symbols like `<` or `=` for comparison in Fortran
    > 77, but you have to use the correct two-letter abbreviation enclosed
    > by dots!

    This fix was also found at
    <http://www.tat.physik.uni-tuebingen.de/~kley/lehre/ftn77/tutorial/logical.html>.
    which appears to be based on an older version of the original
    tutorial from 1995.
