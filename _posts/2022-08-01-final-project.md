ST558 - Final Project”
================
Chien-Lan Hsueh
2022-08-01

## UI Programming in Interactive Dashboards

I don’t have many opportunities to build an interactive dashboard. Most
of time, I work on developing new algorithms and building helper
functions and libraries so that I can help standardize data workflow,
analysis and documentation. If we need to scale up and deploy them, our
software engineers colleagues will jump in, translate and optimize the
codes.

Occasionally I need to build an interactive dashboard for training and
for our sale/marketing teams. By doing this final project, I have a
chance to practice more in programming UI and realize there are some
interesting things I can explore further in the future.

### Moduled Design

This is something I would like to explore to see if it’s possible to
break down the whole Shiny addp into different modules for easier
development and maintenance. This can increase the reusabilities of the
codes too. Unfortunately, I did a quite terrible job on this project.
Using one single `app.R` is not a smart start. Comparing to the
experience with using `ui.R` and `server.R` in the previous homework,
putting everything in one single script file makes coding experience
bad. At the end of the project, I often found myself scrolling up and
down to sync the codes for the ui and server parts. Therefore, using a
two-file approach is better.

However, it would be nice if we can future break down each `ui.R` and
`server.R` into different parts (modules). For example, each page or tab
can be coded in one script file and then be called (or included) for
assembly. I am nor sure if this is feasible but it is worth to spend
some time and efforts to find out.

### Dynamic Components

I really like the idea of dynamic UI so I use more and more while I
coded this project. Among the three major ways to make dynamic UI, I
like `uiOutpout()` and `renderUI()` the most especially when they are
called with `validate()` and `need()`.

So the next thing comes to my mind is if it’s possible to create
changing number of these UI components on the fly. That is using
`renderUI()` to create an array of UI output object in `server.R` and
render them in `ur.R` To make this work, I will need to understand how
output object works and see if there is a way to have something like
`output["ui_array"][index]` to render the UI components.
