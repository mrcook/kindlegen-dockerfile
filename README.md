# KindleGen Dockerfile for macOS (M2, M3, M4)

Here is a Dockerfile for running a Linux version of Amazon's `kindlegen`
program (32-bit Intel) on an Apple ARM computer: M1, M2, M3, and M4.

**NOTE: this repository does not contain a copy of the `kindlegen` binary.**

You will need to start docker with the `x86_64` architecture and with Apple
Rosetta enabled. If you're using `colima` this can be done with:

    colima start --cpu 4 --memory 4 --arch x86_64 --vm-type vz --vz-rosetta


## What is KindleGen?

KindleGen will convert an EPUB ebook to the Amazon ebook format.


## Build the Container

First, build the Docker image:

    docker build -t kindlegen .

and check everything works:

    docker run kindlegen

    *************************************************************
     Amazon kindlegen(Linux) V2.9 build 1028-0897292
     A command line e-book compiler
     Copyright Amazon.com and its Affiliates 2014
    *************************************************************

    Usage : kindlegen [filename.opf/.htm/.html/.epub/.zip or directory] [-c0 or -c1 or c2] [-verbose] [-western] [-o <file name>]


A `/source` directory is created in the container, which can be mapped for use
with relative file paths. `kindlegen` will always be run from the `/source`
directory in the container.


## Using KindleGen

To convert an EPUB ebook, run the following:

    docker run -v `pwd`:/source kindlegen input.epub


## LICENSE

The files inside this repository are Public Domain.
