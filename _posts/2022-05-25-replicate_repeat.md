# Replicate vs. Repeat

I have been confused for a long time because I saw people use amigiguous definitions of these two. Even worse, sometimes I found peopl use the interchangably but I know this is wrong. Replicate and repeats are different from each other.

Recently I came across these in the course ST517 and had a chance to study them in a more careful way. I found the definitions below are quite easy to follow.

Source: 
1. [Minitab 18: Replicates and repeats in designed experiments](https://support.minitab.com/en-us/minitab/18/help-and-how-to/modeling-statistics/doe/supporting-topics/basics/replicates-and-repeats-in-designed-experiments/#:~:text=Repeat%20and%20replicate%20measurements%20are,experimental%20runs%2C%20which%20are%20often)
2. [The Difference Between Repeats and Replicates in DOE](https://www.youtube.com/watch?v=HHWFFd1p488)
3. [Validating a Diagnostic Device Using Gage R&R and DOE](https://slideplayer.com/slide/13424596/)

Whether you use repeats or replicates depends on the sources of variability you want to explore and your resource constraints.

## Similarities
Both repeat and replicate measurements are multiple response measurements taken at the same treatments.


## Differences
Replicate:
- Replicate measurements are taken during identical but different experimental runs, which are often randomized.
  - A replicate is a new run
  - Equipment is reset (calibration, cleaning and changing factor setting, etc.)
- One can replicate combinations of factor levels, groups of factor level combinations, or entire designs.
- Because replicates are from different experimental runs, usually spread along a longer period of time, they can include sources of variability that are not included in repeat measurements.
- Replicate measurements can be more expensive and time-consuming to collect.

Repeate:
- Repeat measurements are taken during the same experimental run or consecutive runs

These differences affect the structure of the worksheet and the columns in which you enter the response data, which in turn affects how Minitab interprets the data. You enter repeats across rows of multiple columns, while you enter replicates down a single column.
![220525-115254](https://user-images.githubusercontent.com/99301834/170305008-7313cf4d-fbb8-4445-874d-59fd98cfc6e9.png)

The variability between measurements taken at the same factor settings tends to be greater for replicates than for repeats because the machines are reset before each run, adding more variability to the process.
