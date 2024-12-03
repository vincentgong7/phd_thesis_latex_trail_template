================================================
Instructions for using my PhD thesis LaTeX files
================================================
June 2009
Rudy Negenborn
================================================

* Copy all files to a directory without spaces,
  e.g.: C:\my_thesis\
  or: /user0/home/rnegenborn/my_thesis/

* The main latex file is thesis.tex.

* To get started: in thesis.tex, replace at the top of the file
  the directory defined as \basedir, i.e.,:

  \newcommand{\basedir}{/user0/home/rnegenborn/work/2007-thesis/thesis_template/}

  by the directory in which you unpacked the thesis files of this
  .zip. (Note that you should use '/' instead of '\', and that
  the directory name should end with a '/'.)

* You should now be able to latex thesis.tex.

  If you latex thesis.tex for the first time and are missing some
  styles, look in the style files subdirectory. If the missing
  style file is there, you can just copy it to your main thesis
  directory.

* The main directory contains per chapter a subdirectory, e.g.,
  1-intro, 2-survey, ..., 6-conc, etc. Each subdirectory contains
  files related to that particular chapter only.

  The special subdirectory 0-misc contains miscellaneous files not
  directly linked to one of the main chapters, e.g., title page,
  glossary, etc.

* IMPORTANT: Each subdirectory contains a subdirectory 'images'
  in which the images of that chapter should be placed. In order
  to let latex know from which image directory it should take images
  when compiling a particular .tex file (e.g., a chapter), each .tex
  file should redefine the following two statements at the top of that
  .tex file:

  \renewcommand{\imagepath}[1]{\fname{1-intro/images/#1}}
  \graphicspath{{./1-intro/images/}}

  to reflect the path in which the images for that .tex can be found,
  relative to the path in which the thesis .zip file has been unpacked.

  Note that the \imagepath should end in /#1 and that the \graphicspath
  should end in /.

* The files part of this thesis template themselves contain further
  information in comments.

If you have further questions, contact Rudy Negenborn,
rudy@negenborn.net.
