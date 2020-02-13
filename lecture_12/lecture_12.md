Untitled
================

> Q1: Download a CSV file from the PDB site (accessible from “Analyze”
> -\> “PDB Statistics” \> “by Experimental Method and Molecular Type”.
> Move this CSV file into your RStudio project and determine the
> percentage of structures solved by X-Ray and Electron Microscopy. Also
> can you determine what proportion of structures are protein? Aim to
> have a rendered GitHub document with working code that yields your
> answers.

``` r
stats <- read.csv("Data Export Summary.csv", row.names=1)
stats
```

    ##                     Proteins Nucleic.Acids Protein.NA.Complex Other  Total
    ## X-Ray                 133756          2086               6884     8 142734
    ## NMR                    11308          1317                265     8  12898
    ## Electron Microscopy     3241            35               1095     0   4371
    ## Other                    284             4                  6    13    307
    ## Multi Method             146             5                  2     1    154

``` r
ans <- stats$Total/sum(stats$Total) *100
names(ans) <- rownames(stats)
ans
```

    ##               X-Ray                 NMR Electron Microscopy               Other 
    ##         88.95079270          8.03793997          2.72397547          0.19132017 
    ##        Multi Method 
    ##          0.09597168

``` r
sum(stats$Proteins)/sum(stats$Total) *100
```

    ## [1] 92.69057

> Q2: Type HIV in the PDB website search box on the home page and
> determine how many HIV-1 protease structures are in the current PDB?

1289
