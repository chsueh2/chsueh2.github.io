Automation on Reproting
================
Chien-Lan Hsueh
2022-07-10

## About the Project

This project is about using supervised learning algorithms to predict
how popular a [news
article](https://archive.ics.uci.edu/ml/datasets/Online+News+Popularity)
is. The popularity is measured by how many time of the article being
shared. We need to use linear regression as well as 2 ensemble methods
(random forests and boosted tree).

### Automation on Report Generation

Some EDA has to been done to get some understanding about the data
before we can start modeling. There is a special task for this project
is to automate the analysis report generation. With Rmarkdown, this can
be done with document parameters. In general, this project is fun to do
and I have learned a lot about the Github page and its very special
document type `github_document`.

There are several road blocks my partner and I encountered. The first
one is the extra time needed to render rmadkdown documents with child
documents. I break the tasks into 4 different parts including
introduction, data prep, eda and modeling so that we can have a better
focus on each part. This also greatly reduces the chance of creating
conflict copies in collaboration. The major trade-off is rendering a
document with child documents takes noticeably longer time. Also it
increases the complexity that one has to pay attention where to save the
rendered plots. Otherwise, the plots generated from same code chunks get
overwritten.

My biggest take-away is I have slightly more deeper understanding about
the mechanism of rmarkdown rendering and knitting. Before, I had been
confused by these two and didn’t appreciate their difference. I also
have learned more about how to control the rendering and knitting with
different levels of option control.
