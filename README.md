Simple example of a Makefile
================
David Gerard

<!-- README.md is generated from README.Rmd. Please edit that file -->

## Introduction

This is a simple example of using a Makefile to organize the pipeline of
a basic data analysis.

The files after everything is evaluated are:

- Makefile
- Readme.qmd
- Readme.md
- analysis
  - add_alt_sims.R
  - null_sims.R
  - panal.qmd
- output
  - add_alt_sims.Rout
  - null_sims.Rout
  - panal.html
  - pdat.csv
  - pnull.RDS

These files have the following dependency structure:

![](README-dependency-graph-1.png)<!-- -->

See the
[Makefile](https://github.com/data-science-master/pvalue_sims/blob/master/Makefile)
for how to organize this dependency structure.
