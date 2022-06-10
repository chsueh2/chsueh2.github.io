# Build a Blog site with GitHub Page
 
Note: This blog was created two weeks ago but I missed to move the file to this repo. Below is a revised version with an update of my new puppy GoGo.
 
In the course ST588, we were introduced a quick and easy way to set up blog with GitHub Pages. Here is the instruction given by Chad Baldwin on his blog: [Building a Free Blog with GitHub Pages in Minutes](https://chadbaldwin.net/2021/03/14/how-to-build-a-sql-blog.html).
 
 1. Log in your GitHub account
 2. Clone the [template](https://github.com/chadbaldwin/simple-blog-bootstrap/generate)
 3. Create and name your repo following this format `{your_GitHub_username}.github.io` to ensure the GitHub Pages work
 4. Customize these two files `_config.yml` and `index.md`
 5. Create a markdwon file as a new post 

The blog post markdown files have to be named using this format: `yyyy-mm-dd-your-blog-post-name.md` and saved in `_posts` folder

## The other mthod 1: R Markdown
The method mentioned above creates static blog posts meaning the contents cannot be generated dynamically. We can use R Markdown and render the markdown files (`*.Rmd`) using `rmarkdown::render()` function. Here is an example to render a R markdwon file saved in the folder `_Rmd` to create a GitHub favored output format `github_document` with the option to disable html preview. 

```{r, eval = FALSE, echo = TRUE}
rmarkdown::render(
  here("_Rmd", "yyyy-mm-dd-your-blog-post-name.Rmd"), 
  output_format = github_document(html_preview = FALSE), 
  output_dir = here("_posts")
)
```

I like to use `here()` from `here` package to specify a file path so that the path can be OS independent and is more robust across different platforms.


## The other method 2: `workflowr`
You still need to take care of many things manually when using the rendering and knitting functions provided by `rmarkdown` and `knitr` packages. Therefore, I really appreciate if there is a tool kit taking care of these so that I can forcus on data analysis rather than building a website. 

I have be using a `R` package called [`workflowr`](https://github.com/workflowr/workflowr) by [Dr. John Blischak](https://jdblischak.com/workflowr.html). TIt actually is not designed for making blog posts. In fact, this package helps organize data analysis and reports, and make the task workflow reproducible and easy to share with collaborators.
> Reproducible research with workflowr
>
> The workflowr R package combines R Markdown and version control (Git) to create a website containing time-stamped, versioned, and documented results.

## Some updates about my new family member GoGo Pro
Today (June 5), we got the DNA report and that reveals the mysterious origin of our puppy GoGo. His mom is an Australia cattle dog (aka Australia Heeler) which is no mystery at all. However, no one knows for sure who his dad is. The DNA test has been done in his first vet visit. Couple weeks later, the report finally is here. It turns out he is a mix of Australia cattle dog (aka Australia Heeler) and Labrador Retriever.

According to Prof. Stanley Coren's book `The Intelligence of Dogs`[^1], Australian cattle dogs rank 10 and Labrador retrievers rank 7. Therefore, GoGo must rank 8.5 on dog intelligence. I feel so lucky I am now in a statistics master program to polish my stats knowledge and skill.

[^1]: [Wiki: The Intelligence of Dogs](https://en.wikipedia.org/wiki/The_Intelligence_of_Dogs)

![](../images/GoGo-Sit.jpg)
