# *fixBib.pl*

**What this is for:** For finding-and-replacing `title=` and `booktitle=` lines in BibTeX `.bib` files that do not contain doubles braces `{{`.  This is to override the behavior of some LaTeX style guides which automatically force non double-braced strings to lower case.

`<I will put a picture here of the before and after...>`


For example, if you have a `.bib` file like the following.

```
@book{hello,
    title={This is a Sentence That I will fix},
    author={Hello Friend},
    year={2015},
    publisher={hmm}
}

@incollection{yo,
    author={Yo There},
    title={This is an Example of a Nice Sentence},
    booktitle={This is an Example of a BookTitle},
    editor={Friend McFriend},
    year={2016}
}
```

This script will write a new `.bib` file that looks like the following:

```
@book{hello,
    title={{This is a Sentence That I will fix}},
    author={Hello Friend},
    year={2015},
    publisher={hmm}
}

@incollection{yo,
    author={Yo There},
    title={{This is an Example of a Nice Sentence}},
    booktitle={{This is an Example of a BookTitle}},
    editor={Friend McFriend},
    year={2016}
}
```

If you are inconsistent in whether or not your include double braces, it will only replaces titles that are delimited in single braces.  I.e. it will leave `title={{My Nice Title}}` as is, it *will not* do `title={{{My Nice Title}}}`.


## Using the script

0. Make sure you have Perl installed on your computer.
    - To check, open command prompt (PowerShell, Bash, etc.) and type `perl --version`.  If it's installed, it will say something like ``This is perl version...``.  If you don't have it, download from the [Perl website here](https://www.perl.org/get.html).
1. download the script and save it as a `.pl` file: [script link](fixBib.pl).  Here I've named the file `fixBib.pl`, though 
2. Run the script by navigating to the directory that you've put it in and the `.bib` file you want to correct by typing `perl fixBib.pl MyBibName.bib` (where '`MyBibName.bib` is whatever you have saved your file as.).  It will automatically write to a new file called `MyBibName_out.bib`.
3. Put the new `.bib` file into your LaTeX project (making sure you've pointed towards the correct name in your `.tex` document.)

If you encounter any errors, please email me at `ian@ilkirby.com`.
