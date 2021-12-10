# control the image size

```R
{r, echo=FALSE, out.width="50%", fig.cap="A nice image."}
knitr::include_graphics("foo/bar.png")
```
or

![A nice image.](foo/bar.png){width=50%}

# Rmarkdown generate format

```
---
title: "R Homework 2"
author: "Yichuan Zhang 47-216786"
date: "10/12/2021"
output: 
  pdf_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 7
    toc: yes
    toc_depth: 4
---
```

# convert rmarkdown to pdf

```R
render("input.Rmd", "pdf_document")
```

# R markdown document

link1: https://rmarkdown.rstudio.com/lesson-9.html

link2: https://bookdown.org/yihui/rmarkdown/html-document.html

dplyr: https://rdrr.io/cran/dplyr/man/count.html

DA: https://www.math.pku.edu.cn/teachers/lidf/docs/Rbook/html/_Rbook/summary-summ.html
https://bookdown.org/tonykuoyj/eloquentr/dplyr.html