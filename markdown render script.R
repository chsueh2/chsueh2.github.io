# R script to render Rmarkdown file
# ----------------------------------------------- 



# Make sure to have a image folder created
# Include this in the rmarkdown file to specify the image folder
# ----------------------------------------------- 
#
#```{r include=FALSE}
#knitr::opts_chunk$set(fig.path = "./images/")
#```
#
# ----------------------------------------------- 


library(here)
library(rmarkdown)
library(knitr)


# input rmarkdown file
# ----------------------------------------------- 
input <- here("_Rmd", "2022-07-16-ML.Rmd")


# run the following codes to render the file
# ----------------------------------------------- 

rmarkdown::render(
  input = input, 
  output_format = github_document(html_preview = FALSE), 
  #output_file = "README.md"
  output_dir = here("_posts")
)
