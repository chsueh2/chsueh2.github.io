Some Thoughts Aboout ST558 Project 1
================
Chien-Lan Hsueh
2022-06-26

## Some Thoughts Aboout ST558 Project 1

We are given couple public API web services to choose from for this
project. The task is to develop helper functions to use the API for data
of interest and perform some basic EDA.

My family helped me decide which API for this project. My son first
choosed the pokemon and Marvel comic data but I am not really
interested. My wife picked the stock and covid data. Too bad these
overlap with some of my previous works. My daughter then suggested the
movie database in the evneing we finished watching the new Jurassic
World movie.

Link to my [GitHub project
repo](https://github.com/chsueh2/ST558-Project1)<br> Link to my [Github
blog page](https://chsueh2.github.io/)

### The Open Movie Database

The [OMDb API](https://github.com/chsueh2/ST558-Project1) provides web
services to obtain movie information and poster images. The usage of API
is very easy and straightforward. Basically, there are two query
methods:

1.  A single movie query: it looks for an exact match of IMDb ID or for
    a best match of title
2.  Movie search: it returns all possible matched titles

### My Workflow

The first thing is to set up the working environment and tools for this
project. I have included setup sections for codes to render rmarkdown
documents, manage the access confidential (i.e. API keys in this
project) and load libraries.

The next is to develop a set of helper function to make the API calls
easy and robust. I break down this into the following parts: 1. a helper
function to assemble the query paraemters 2. a helper function to
perform the HTTR GET method to use the API, check the status, parse the
returned JSON and verify the response (data) 3. two helpfer functions to
further parse the response and convert them into data frames 4. a
wrapper function that has a user-friendly interface

On top of these, I decided to make the these helper functions more
flexible so that they can be easily modified to work with other APIs in
the future. I spent some time to learn how to take care of missing
arguments, capture and pass unnamed arguments. The advantages of passing
unnamed arguments is that the query parameters don’t need to be hard
coded. However, the drawback is the risk of potential security issue
since a user can pass anything to the server. In the next verion, I will
have to work on a more robust check to imporve the security.

Once these are done, I have done a series of tests on these functions.
In the report, I included several types of “bad” API calls to check if
everything works as it should be: fail fast and fail safe.

The last part of the project is EDA analysis on the movie data I pulled
in using the wrapper function. I started with some specific titles
(queries by IMDb ID as well as by title), then a more extensive search
of movies related to two DC superheroes. I am interested to know which
superhero helps the movie makers make more moeny (or lose more money).
Therefore, some numeric and graphic summaries and analysis have been
done in order to answer the question.

### My Thoughts

Again, the good things about the OMDb APIs are (1) they are easy to use
and (2) they are well documented. I cannot emphasise enough how
important a good documentation is.

The things I don’t like OMDb is the data quality and confusing logic on
which movie it returns in a query if there is no exact title match. What
makes it worse is that the search returns titles including short films,
TV series, game titles. If you want to know if this is a “movie-theater”
movie (because you are interested in the box office), you have to
perform another query using the IMDb ID to get more information about
that title. In my experience, only less than 50% of them are “movie”
movie and less than 50% of them are those movies with box office
records. With only 1000 free daily API calls, I find myself easiy use
them up before I collect enough data points fo EDA. Unexpectedly, this
is the most difficult part when I do the project.

As mentioned earlier, if I have more time, I will improve the security
check. Also, I will make the helper function completely independedn on
API parameters so that they can be reusable in other places.
