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



# input rmarkdown file
# ----------------------------------------------- 
input <- here("_Rmd", "2022-06-26-ST558-1st-project-ideas.Rmd")




# run the following codes to render the file
# ----------------------------------------------- 
library(here)
library(rmarkdown)
library(knitr)

rmarkdown::render(
  input = input, 
  output_format = github_document(html_preview = FALSE), 
  #output_file = "README.md"
  output_dir = here("_posts")
)
