Programming Background
================
Chien-Lan Hsueh
2022-06-09

-   [My R Programming Experience](#my-r-programming-experience)
-   [Example R Markdown Output](#example-r-markdown-output)

## My R Programming Experience

In this blog, I will share my experience with R and my thoughts about R
comparing to other programming languages I have came across.

### Background and My Learning Experience

I have been using `Fortran` and `C/C++` to solve equations and process
data since my undergraduate years. They are powerful enough doing both
algebraically and numerical calculations but not great in generating a
nice report and sharing works with other collaborators. This forces me
to use some commercial software like `Mathematica`, `Matlab` and
`Maple`. Very often I found I have to use multiple tools (both
programming languages and GUI software) to complete a task and spend a
lot of time to make them work seamlessly.

When working in the Silicon Valley, I started to use `JMP` and
`Excel with VBA` because these two are the most commonly used in most
process and material R&D department. JMP Scripting Language and
spreadsheets with VBA macro are easy to pick up for most of the
engineers and scientists. The work can be done in a reproducible way and
the reports can be generated in a nice looking `PowerPoint` and `Word`
format. The only drawback is they are not capable with big-sized data.
Also a `JMP` license is expensive and it is not practical to expect all
of your customers and vendors have it. Additionally, those basic
statistic tools and my statistics knowledge are not sufficient to do my
jobs.

### Why I like `R`

That’s when I started to alternative solutions and `R` came into my
life. Not only it is open source but also it has a huge community. There
are tons of quality packages developed by professionals and researchers
in all different fields. The best thing is, most of time, they are well
documented. As a SSBB with OCD, you cannot image how important this is
to me!!!

On the way I learn it and gradually rewrite my toolkit in `R`, I
discover more good things about `R`. First, I like the consistency of
the language as well as the packages people developed. To compute an
average of some data, you have the same interface to call `mean()` even
the data is stored in various objects. In some programming languages,
sometime you use a function call and sometimes you use a class method.

Second, I enjoy the vectorization and piping. This not only make codes
clean and neat but also increase computing efficiency. BTW, starting
from `R 4.1`, it supports a [native pipe
operator](https://yihui.org/en/2022/04/magrittr-native-pipe/) and you
might want to check it out.

Third, the wonder of `tidyverse`. Marvel is not the only one knowing the
secret tip to a huge success by creating an universe.

Fourth but not the least, a data frame is a built-in data type. There
are many statistic tools are built-in or provided in base packages. You
can complete EDA, testings and modeling tasks right out of a box.

### Compared to Other Programming Languages and My Wish List for `R`

Now it’s time to say something about the disadvantages of using `R`.
First, `R` is an interpreted computer language and be slow compared to
other programming languages like `C/C++`.

Second, its learning curve is steeper too. It looks intimidate to many
of the young colleagues I work with. This makes it difficult to share my
works easily but nowadays there are workaround solutions including
interactive `R Markdown` notebooks and `Shiny` dashboards. There are
`R GUI` available too. Some of them are actively being developed and
updated including [`Rcmdr`: R
Commander](https://socialsciences.mcmaster.ca/jfox/Misc/Rcmdr/),
[`RKWard`](https://rkward.kde.org/),
[`jamovi`](https://www.jamovi.org/), [`JASP`](https://jasp-stats.org/),
[`Rattle`](https://rattle.togaware.com/) and
[`BlueSky Statistics`](https://www.blueskystatistics.com/default.asp).

Third, *grass is greener in the other side*. In the last decade, there
are new ML algorithms being developed everyday and many of them are
written in other popular programming language like `Python`. Quite
often, at the beginning, there is little or none supports in `R`. Their
community is very creative on inventing novel tools and applications
too. For example, Dr. Grant Sanderson (aka
[3Blue1Brown](https://www.3blue1brown.com/)) has created [Manim
engine](https://github.com/3b1b/manim), originally designed for making
educational math videos, to produce animations using programming codes.
This makes the process of making a video more precisely, reusable and
reproducible.

Fourth, related to the example above, `R` is not a general purpose
language. It would be nice if we can do more beyond statistics and data
analysis, but maybe we shouldn’t be so greedy. After all, that is its
strength and what it is designed for.

If I can wish for two things to be added into the current `R`, I would
propose to have **list comprehension** and **dictionary** data type like
`Python` has. These two features with `R`’s strengths like vectorization
and piping can really move `R` to next level in the era of big data and
machine learning.

## Example R Markdown Output

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdChpcmlzKSBcbmBgYCJ9 -->

``` r
plot(iris) 
```

<!-- rnb-source-end -->
