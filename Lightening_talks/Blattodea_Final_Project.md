    library(ggplot2)
    setwd("~/Desktop/eeb-177/eeb-177-final-project")
    Blattodea <- read.csv("Blattodea-ranges.csv", header = F, as.is = T)
    names(Blattodea) <- c("genus", "species", "minage", "maxage")
    head(Blattodea)

    ##            genus                 species  minage  maxage
    ## 1   Acmaeoblatta Acmaeoblatta lanceolata 302.925 302.925
    ## 2   Acosmoblatta  Acosmoblatta eakiniana 297.200 297.200
    ## 3   Acosmoblatta   Acosmoblatta permacra 297.200 297.200
    ## 4   Actinoblatta    Actinoblatta bucheti 314.600 314.600
    ## 5 Actinoblattula  Actinoblattula brodiei 204.900 204.900
    ## 6 Actinoblattula Actinoblattula charlesi 204.900 204.900

    Blattodea_occ <- ggplot(Blattodea, aes( species, ymin = maxage, ymax=minage, colour = genus))
    Blattodea_occ <- Blattodea_occ + geom_linerange()
    Blattodea_occ

![](Blattodea_Final_Project_files/figure-markdown_strict/unnamed-chunk-1-1.png)

    Blattodea_occ <- Blattodea_occ + theme(legend.position="none")
    Blattodea_occ

![](Blattodea_Final_Project_files/figure-markdown_strict/unnamed-chunk-1-2.png)

    Blattodea_occ <- Blattodea_occ + coord_flip()
    Blattodea_occ

![](Blattodea_Final_Project_files/figure-markdown_strict/unnamed-chunk-1-3.png)

    Blattodea_occ <-  Blattodea_occ +  theme(axis.text.y = element_text(size=3))
    Blattodea_occ

![](Blattodea_Final_Project_files/figure-markdown_strict/unnamed-chunk-1-4.png)

    Blattodea_occ <- Blattodea_occ + theme(axis.ticks.y=element_blank())
    Blattodea_occ

![](Blattodea_Final_Project_files/figure-markdown_strict/unnamed-chunk-1-5.png)

    Blattodea_occ<- Blattodea_occ + scale_y_continuous(limits=c(0, 40), expand = c(0, 0), breaks=c(0, 10, 20, 30, 40))
    Blattodea_occ

    ## Warning: Removed 1211 rows containing missing values (geom_linerange).

![](Blattodea_Final_Project_files/figure-markdown_strict/unnamed-chunk-1-6.png)

    Blattodea_occ<- Blattodea_occ + labs(title = "Blattodea Fossil Occurrences", x = "Species", y = "MYA") + theme(plot.title = element_text(hjust = 0.5, size=22, face = "bold"), axis.title =element_text(size=20))
    Blattodea_occ

    ## Warning: Removed 1211 rows containing missing values (geom_linerange).

![](Blattodea_Final_Project_files/figure-markdown_strict/unnamed-chunk-1-7.png)
