nba\_data\_visV5
================
Justin Huang
2019-01-17

These were all the libraries used to help with data exploration of the NBA data set.

``` r
library(dplyr)
library(ggplot2)
library(tidyr)
library(stringr)
library(data.table)
library(ggrepel)
library(directlabels)
options(max.print = 999999999)
options(scipen=12)
```

    ## [1] "/Users/justinvhuang/Desktop/nba_stat_salaries"

    ## [1] "/Users/justinvhuang/Desktop/nba_stat_salaries"

### Live and Die by the Three

The first thing that we should explore as a NBA team looking to have a succesful season in the modern era is to see the increased number of 3 point shots. How the NBA team according to many news articles has evolved into a spacing oriented and 3 point focused game during the regular season.

-   \[3 Point Revolution\]{<https://www.cbssports.com/nba/news/whats-the-end-game-for-nbas-3-point-revolution-coaches-and-players-sound-off-on-the-games-most-dominant-shot/>}
-   \[More 3's the Better\]{<https://www.deseretnews.com/article/900019954/why-the-3-point-shot-has-become-too-much-of-a-good-thing.html>}
-   \[Warriors and the 3's\]{<https://sports.yahoo.com/warriors-fall-behind-nba-3-172136589.html>}

Let us first look at the distrubtion of the 3 point shot made, 2 point shot made and salary.

    ##   median(salary) mean(salary) sd(salary)    var(salary) IQR(salary)
    ## 1        2678400      4523495    4862128 23640286672352     4899590

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-3-1.png)

There seems to be a right skew in the data. Showing that superstars and stars get the biggest pay day and take the biggest proportion of the teams salary.

    ##   median(two) mean(two)  sd(two) var(two) IQR(two)
    ## 1         2.1  2.667674 1.899015  3.60626      2.5

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-4-1.png)

    ##   median(three) mean(three) sd(three) var(three) IQR(three)
    ## 1           0.3   0.5867761 0.6674279  0.4454601          1

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-4-2.png)

Both are right skewed showing that the stars and main players on the team usually take most of the shots.

Lets now look at the trend over the years of the three point shot vs two point shot.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-5-1.png)

The mean 3 point shots have been increasing indicated by the trending upward blue dots. While the number of 2 point shots have been decreasing by the red dots going down.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-6-1.png)

For players who took more than three 3's a game there is an increase in salary after the 2015 year. However, there is still a decrease before then. Perhaps teams didn't pay big salaries for 3 point specialist earlier on and emphasized on other basketball statistics.

Let us explore if 3 pointers lead to more wins

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-7-1.png)

2014 seems to be an increase in wins for taking more than three 3's a game. Before that the league was more big man focused with players such as Kevin Garnett, Tim Duncan, Shaquille O'neal, Jermaine O'neal, Dwight Howard.

Now let us explore the other end of the spectrum. With less than three 3's a game.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-8-1.png)

There is still an increase in salary. This is due to the TV contract money with the NBA increasing the salary cap which was a huge factor. However, if you look at the summary of the mins and max you can see taking more than 3 threes a game is beneficial.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-9-1.png)

Attemping more 3's is benefical it looks like. From the years 2004 to 2008 the league still had traditional big men who dominated the league. Spacing and rules didn't emphasize spacing as much. Having players that take less than three 3's a game leads to a team win that would be 8th seed in the east and out of the playoffs in the western conference.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-10-1.png)

Making more two's of course leads to a better salary. The TV money seems have a major factor to increase the salary for the players after 2015.

Conclusion:

Overall 3 point shooting does lead to more wins and an increase of salary. However, due to the TV contract there was a huge salary bump as well as new CBA and talks with the players association.

### PPG vs EFG

With the increased reliance on data interpretation what we want to explore is the rise of EFG vs PPG. Players like Rudy Gay and Josh Smith who scored in bunches before used to be rewarded huge contracts. However, it was later found they scored inefficiently.

*E**F**G* = (*F**G* + 0.5 \* 3*P*)/*F**G**A*.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-11-1.png)

Salary over the years has increased. But there doesn't seem to be a clear relationship with points per game over the years and salary.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-12-1.png)

EFG seems to be trending in the later years. As more GMs and teams look at data they are paying more for players who are shooting more effectively. In the past teams perhaps were only looking at points per game.

Lets look at a 20 ppg scorer vs a 50 percent EFG players and see how their salaries compare.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-13-1.png)

Lets look at over 51 percent EFG

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-14-1.png)

Early on EFG didn't seem to take notice to teams as much, but as we entered the 2014 year and above this statisic became more relevant

### Which schools in the US are teams spending their salary the most for salary.

Exploring this data could give us information on where to look to draft a NBA prospect for a NBA team.

    ##   [1] "Alabama"                                
    ##   [2] "Alabama A&M"                            
    ##   [3] "Alabama-Birmingham"                     
    ##   [4] "Alabama-Huntsville"                     
    ##   [5] "American International"                 
    ##   [6] "Arizona"                                
    ##   [7] "Arizona State"                          
    ##   [8] "Arkansas"                               
    ##   [9] "Arkansas-Little Rock"                   
    ##  [10] "Auburn"                                 
    ##  [11] "Auburn-Montgomery"                      
    ##  [12] "Augsburg"                               
    ##  [13] "Austin Peay"                            
    ##  [14] "Ball State"                             
    ##  [15] "Barton Community College"               
    ##  [16] "Baylor"                                 
    ##  [17] "Belmont"                                
    ##  [18] "Blinn"                                  
    ##  [19] "Boise State"                            
    ##  [20] "Boston College"                         
    ##  [21] "Boston U."                              
    ##  [22] "Bowling Green"                          
    ##  [23] "Bradley"                                
    ##  [24] "Brigham Young"                          
    ##  [25] "Bucknell"                               
    ##  [26] "Butler"                                 
    ##  [27] "Butler Community College"               
    ##  [28] "Cal State-Fullerton"                    
    ##  [29] "Cal State-San Bernardino"               
    ##  [30] "California"                             
    ##  [31] "California-Berkeley"                    
    ##  [32] "California-Los Angeles"                 
    ##  [33] "California-Santa Barbara"               
    ##  [34] "Centenary (LA)"                         
    ##  [35] "Central Arkansas"                       
    ##  [36] "Central Connecticut State"              
    ##  [37] "Central Florida"                        
    ##  [38] "Central Michigan"                       
    ##  [39] "Central Oklahoma"                       
    ##  [40] "Cincinnati"                             
    ##  [41] "Clemson"                                
    ##  [42] "Cleveland State"                        
    ##  [43] "Colgate"                                
    ##  [44] "College of Charleston"                  
    ##  [45] "Colorado"                               
    ##  [46] "Colorado State"                         
    ##  [47] "Connecticut"                            
    ##  [48] "Creighton"                              
    ##  [49] "Davidson"                               
    ##  [50] "Dayton"                                 
    ##  [51] "Delaware State"                         
    ##  [52] "Delta State"                            
    ##  [53] "DePaul"                                 
    ##  [54] "Detroit Mercy"                          
    ##  [55] "Drexel"                                 
    ##  [56] "Duke"                                   
    ##  [57] "Duquesne"                               
    ##  [58] "Eastern Michigan"                       
    ##  [59] "Eastern Washington"                     
    ##  [60] "Fayetteville State"                     
    ##  [61] "Florida"                                
    ##  [62] "Florida A&M"                            
    ##  [63] "Florida International"                  
    ##  [64] "Florida State"                          
    ##  [65] "Fordham"                                
    ##  [66] "Fresno State"                           
    ##  [67] "George Washington"                      
    ##  [68] "Georgetown"                             
    ##  [69] "Georgia"                                
    ##  [70] "Georgia Southern"                       
    ##  [71] "Georgia State"                          
    ##  [72] "Georgia Tech"                           
    ##  [73] "Gonzaga"                                
    ##  [74] "Hartford"                               
    ##  [75] "Harvard"                                
    ##  [76] "Hawaii"                                 
    ##  [77] "Hofstra"                                
    ##  [78] "Holy Cross"                             
    ##  [79] "Houston"                                
    ##  [80] "Idaho"                                  
    ##  [81] "Illinois"                               
    ##  [82] "Indiana"                                
    ##  [83] "Indiana Purdue-Indianapolis"            
    ##  [84] "Iowa"                                   
    ##  [85] "Iowa State"                             
    ##  [86] "Jackson State"                          
    ##  [87] "Jacksonville"                           
    ##  [88] "Jacksonville State"                     
    ##  [89] "Kansas"                                 
    ##  [90] "Kansas State"                           
    ##  [91] "Kent State"                             
    ##  [92] "Kentucky"                               
    ##  [93] "La Salle"                               
    ##  [94] "Lamar"                                  
    ##  [95] "Le Moyne"                               
    ##  [96] "Lehigh"                                 
    ##  [97] "Long Beach State"                       
    ##  [98] "Long Island-Brooklyn"                   
    ##  [99] "Longwood"                               
    ## [100] "Louisiana State"                        
    ## [101] "Louisiana Tech"                         
    ## [102] "Louisiana-Lafayette"                    
    ## [103] "Louisiana-Monroe"                       
    ## [104] "Louisville"                             
    ## [105] "Loyola (Chicago)"                       
    ## [106] "Marist"                                 
    ## [107] "Marquette"                              
    ## [108] "Marshall"                               
    ## [109] "Maryland"                               
    ## [110] "Massachusetts"                          
    ## [111] "Master's"                               
    ## [112] "McNeese State"                          
    ## [113] "Memphis"                                
    ## [114] "Mercer"                                 
    ## [115] "Meridian Community College"             
    ## [116] "Miami (FL)"                             
    ## [117] "Miami (Fla.)"                           
    ## [118] "Miami (OH)"                             
    ## [119] "Michigan"                               
    ## [120] "Michigan State"                         
    ## [121] "Midland"                                
    ## [122] "Minnesota"                              
    ## [123] "Mississippi"                            
    ## [124] "Mississippi State"                      
    ## [125] "Missouri"                               
    ## [126] "Molloy"                                 
    ## [127] "Montana"                                
    ## [128] "Morehead State"                         
    ## [129] "Mount Zion Christian Acad. HS"          
    ## [130] "Murray State"                           
    ## [131] "Navy"                                   
    ## [132] "Nebraska"                               
    ## [133] "Nevada"                                 
    ## [134] "Nevada-Las Vegas"                       
    ## [135] "New Mexico"                             
    ## [136] "New Mexico State"                       
    ## [137] "New Orleans"                            
    ## [138] "Nicholls State"                         
    ## [139] "None"                                   
    ## [140] "Norfolk State"                          
    ## [141] "North Carolina"                         
    ## [142] "North Carolina State"                   
    ## [143] "North Carolina-Charlotte"               
    ## [144] "Northeast Mississippi Community College"
    ## [145] "Northeastern"                           
    ## [146] "Northwest Florida State"                
    ## [147] "Northwestern"                           
    ## [148] "Notre Dame"                             
    ## [149] "Oakland"                                
    ## [150] "Ohio"                                   
    ## [151] "Ohio State"                             
    ## [152] "Ohio U."                                
    ## [153] "Oklahoma"                               
    ## [154] "Oklahoma State"                         
    ## [155] "Old Dominion"                           
    ## [156] "Oral Roberts"                           
    ## [157] "Oregon"                                 
    ## [158] "Oregon State"                           
    ## [159] "Pacific"                                
    ## [160] "Penn State"                             
    ## [161] "Pennsylvania"                           
    ## [162] "Pepperdine"                             
    ## [163] "Pfeiffer"                               
    ## [164] "Pittsburgh"                             
    ## [165] "Portland State"                         
    ## [166] "Providence"                             
    ## [167] "Purdue"                                 
    ## [168] "Rhode Island"                           
    ## [169] "Rice"                                   
    ## [170] "Richmond"                               
    ## [171] "Rider"                                  
    ## [172] "Robert Morris (IL)"                     
    ## [173] "Rutgers"                                
    ## [174] "Saint Joseph's"                         
    ## [175] "Saint Louis"                            
    ## [176] "Saint Mary's (CA)"                      
    ## [177] "Saint Vincent"                          
    ## [178] "San Diego State"                        
    ## [179] "San Jose State"                         
    ## [180] "Santa Clara"                            
    ## [181] "Seton Hall"                             
    ## [182] "Shaw"                                   
    ## [183] "South Carolina"                         
    ## [184] "South Carolina Upstate"                 
    ## [185] "South Dakota State"                     
    ## [186] "South Florida"                          
    ## [187] "Southeast Missouri State"               
    ## [188] "Southeastern Illinois"                  
    ## [189] "Southeastern Oklahoma State"            
    ## [190] "Southern"                               
    ## [191] "Southern California"                    
    ## [192] "Southern Illinois"                      
    ## [193] "Southern Methodist"                     
    ## [194] "Southern Mississippi"                   
    ## [195] "St. Bonaventure"                        
    ## [196] "St. John's (NY)"                        
    ## [197] "Stanford"                               
    ## [198] "Stetson"                                
    ## [199] "Syracuse"                               
    ## [200] "Temple"                                 
    ## [201] "Tennessee"                              
    ## [202] "Tennessee State"                        
    ## [203] "Tennessee-Chattanooga"                  
    ## [204] "Tennessee-Martin"                       
    ## [205] "Texas"                                  
    ## [206] "Texas A&M"                              
    ## [207] "Texas Christian"                        
    ## [208] "Texas State"                            
    ## [209] "Texas Tech"                             
    ## [210] "Texas-El Paso"                          
    ## [211] "Texas-San Antonio"                      
    ## [212] "Thomas More"                            
    ## [213] "Towson"                                 
    ## [214] "Trinity Valley Community College"       
    ## [215] "Tulane"                                 
    ## [216] "Tulsa"                                  
    ## [217] "UCLA"                                   
    ## [218] "UNLV"                                   
    ## [219] "USC"                                    
    ## [220] "Utah"                                   
    ## [221] "Utah Valley"                            
    ## [222] "Valparaiso"                             
    ## [223] "Vanderbilt"                             
    ## [224] "Venezuela"                              
    ## [225] "Villanova"                              
    ## [226] "Virginia"                               
    ## [227] "Virginia Commonwealth"                  
    ## [228] "Virginia Military Institute"            
    ## [229] "Virginia Tech"                          
    ## [230] "Virginia Union"                         
    ## [231] "Wake Forest"                            
    ## [232] "Walsh"                                  
    ## [233] "Washington"                             
    ## [234] "Washington State"                       
    ## [235] "Weber State"                            
    ## [236] "West Florida"                           
    ## [237] "West Virginia"                          
    ## [238] "Western Carolina"                       
    ## [239] "Western Kentucky"                       
    ## [240] "Western Michigan"                       
    ## [241] "Wichita State"                          
    ## [242] "William Paterson"                       
    ## [243] "Wingate"                                
    ## [244] "Wisconsin"                              
    ## [245] "Wisconsin-Stevens Point"                
    ## [246] "Wright State"                           
    ## [247] "Wyoming"                                
    ## [248] "Xavier"                                 
    ## [249] "Yale"

249 schools (no school included for internationals if they played professionally outside the USA)

Lets look at the top 10 schools that got paid

    ## # A tibble: 11 x 3
    ##    school         count_school     salary
    ##    <fct>                 <int>      <dbl>
    ##  1 None                   1285 7407695183
    ##  2 Kentucky                261 1220596079
    ##  3 Duke                    252 1308479631
    ##  4 North Carolina          241 1182185814
    ##  5 UCLA                    206  947159451
    ##  6 Kansas                  194  840093830
    ##  7 Arizona                 190  995023686
    ##  8 Connecticut             184 1038212650
    ##  9 Florida                 143  817700613
    ## 10 Georgia Tech            129  718884989
    ## 11 Texas                   116  627431018

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-16-1.png)

Should be always looking at these schools for prospects looking at the total salary paid. Seems to have best basketball programs

Lets take a look at the data that was accounted for by college programs

Looking at the notable names Lebron James, Kobe Bryant, Kevin Garnett, Dwight Howard, Jermaine O'neal that would be 5 out of 430 highschoolers who made it to superstar level. That's 1.2 percent chance.

Out of Country Prospects for teams to spend their salary on.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-18-1.png)

Looking at the top salaries would want to look into these countries in terms if finding talent or drafting in the future or free agents.

### How important is getting the number 1 pick by either saving salary by tanking or being unlucky

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-19-1.png)

Now lets compare to being a relatively good team but paying for good scouts to draft or look abroad in the second round.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-20-1.png)

We can see that by not selecting the number one pick overall it yielded 4 more defensive players or nba team selections. But we have to keep in mind other picks in the first round. Other notable picks that aren't first rounders include Stephen Curry, Kevin Durant, A'mare Stoudamire.

### The Best vs the Worst

Lets look at the data for the winning team and team that lost the most for each year 2000 to 2018 ![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-21-1.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-21-2.png)

Winning teams tend to spend over the cap while losing teams spend under or stay below the salary cap for each year.

Lets look at the Top teams each year vs Worst teams each year

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-22-1.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-22-2.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-22-3.png)

We can see the top teams spend the most money each year. Their best players also recieve the more money than the worst teams player. Looking at the average salary the best teams spend much more than the worst.

### Most successful teams in the last 19 years.

Looking at the team that spent the most over and the team that spent the least.

Looking at the winningest team vs the team that lost the most in the last 19 years.

The team that won the most is the 2016 GSW and the team with the fewest wins was the 2012 Charlotte Bobcats. The team that spent the most over the salary cap was the 2018 Cleveland Caviliers. The team that spent the least over the salary cap was the 2000 LA clippers.

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-23-1.png)

    ## # A tibble: 14 x 6
    ## # Groups:   salary [14]
    ##    name                   salary   ppg   EFG t_reb PlusMinus
    ##    <fct>                   <int> <dbl> <dbl> <dbl>     <dbl>
    ##  1 Klay Thompson        15501000  22.1 0.569   3.8      14.7
    ##  2 Draymond Green       14260870  14   0.554   9.5      18  
    ##  3 Andrew Bogut         12000000   5.4 0.625   7        13.9
    ##  4 Andre Iguodala       11710456   7   0.544   4        13.2
    ##  5 Stephen Curry        11370786  30.1 0.631   5.4      17.7
    ##  6 Anderson Varejao     10158574   2.6 0.435   2.7       2.6
    ##  7 Shaun Livingston      5543725   6.3 0.531   2.2       7  
    ##  8 Harrison Barnes       3873398  11.7 0.531   4.9      10.5
    ##  9 Marreese Speights     3815500   7.1 0.452   3.3       1.2
    ## 10 Leandro Barbosa       2500000   6.4 0.519   1.7       2.4
    ## 11 Festus Ezeli          2008748   7   0.54    5.6      14.6
    ## 12 Brandon Rush          1270964   4.2 0.542   2.5      -0.9
    ## 13 Ian Clark              947276   3.6 0.5     1        -7.3
    ## 14 James Michael McAdoo   845059   2.9 0.55    1.4     -15.9

    ##      total  TopPaid    NameTopSal highscore    NameTopPpg efficient
    ## 1 95806356 15501000 Klay Thompson      30.1 Stephen Curry 0.6311881
    ##      NameTopEFG HighPlusMinus      NameTopPM LeastPaid
    ## 1 Stephen Curry            18 Draymond Green    845059
    ##             NameLowSal  AvgSal tmsalary   salcap OverUnder wins
    ## 1 James Michael McAdoo 6843311 93669566 70000000  1.338137   73

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-23-2.png)

From the greenline we can see that team salary has stayed above salary cap.

Lets see how they drafted in the last 19 years

    ##                  name  salary  ppg       EFG
    ## 104    Antawn Jamison 2503800 19.6 0.4715909
    ## 1564 Jason Richardson 2607360 15.6 0.4612676
    ## 1746        JR Bremer  563679  3.3 0.3295455
    ## 4732    Stephen Curry 2913840 18.6 0.5492958
    ## 5358    Klay Thompson 2222160 16.6 0.5102041
    ## 5813  Harrison Barnes 2923920  9.5 0.4482759

They also successfully drafted Draymond Green who won defensive player of the year.

Looking at the worst team in NBA history

    ## # A tibble: 14 x 6
    ## # Groups:   salary [14]
    ##    name               salary   ppg   EFG t_reb PlusMinus
    ##    <fct>               <int> <dbl> <dbl> <dbl>     <dbl>
    ##  1 Corey Maggette   10262069  15   0.402   3.9     -15.4
    ##  2 Tyrus Thomas      7305765   5.6 0.361   3.7     -14.4
    ##  3 DeSagana Diop     6925400   1.1 0.375   3.1     -19.1
    ##  4 Matt Carroll      3900000   2.7 0.367   1.1     -11.9
    ##  5 DJ Augustin       3236470  11.1 0.441   2.3     -14.7
    ##  6 Bismack Biyombo   2798040   5.2 0.455   5.8     -16  
    ##  7 Eduardo Najera    2750000   2.6 0.448   2.3      -7.2
    ##  8 Reggie Williams   2500000   8.3 0.481   2.8     -18.4
    ##  9 Kemba Walker      2356320  12.1 0.414   3.5     -14.3
    ## 10 Gerald Henderson  2250600  15.1 0.466   4.1     -13.7
    ## 11 DJ White          2001167   6.8 0.492   3.6     -15.3
    ## 12 Byron Mullens     1288200   9.3 0.440   5       -12.4
    ## 13 Derrick Brown      854389   8.1 0.532   3.6     -13  
    ## 14 Cory Higgins       473604   3.9 0.345   0.9     -12.9

    ##      total  TopPaid     NameTopSal highscore       NameTopPpg efficient
    ## 1 48902024 10262069 Corey Maggette      15.1 Gerald Henderson  0.531746
    ##      NameTopEFG HighPlusMinus      NameTopPM LeastPaid   NameLowSal
    ## 1 Derrick Brown          -7.2 Eduardo Najera    473604 Cory Higgins
    ##    AvgSal tmsalary   salcap OverUnder wins
    ## 1 3493002 57902024 58044000  0.997554    7

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-25-1.png)

You can see Michael Jordan didn't really spend that much money on his bobcats to have them winning.

Comparing the worst vs the best team side by side

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-26-1.png)

The GSW looked as if they spent double the amount. But also have to include the salary cap increase. Teams with winning players will spend more over the cap than teams who can't win. The real question is do teams spend just enough to stay in cap and then just tank to get draft picks and then players?

Looking at the max salary offender

    ##      team PlayerYear
    ## 7508  CLE       2018
    ## 7509  CLE       2018
    ## 7510  CLE       2018
    ## 7514  CLE       2018
    ## 7520  CLE       2018
    ## 7538  CLE       2018
    ## 7539  CLE       2018
    ## 7552  CLE       2018
    ## 7772  CLE       2018
    ## 7773  CLE       2018
    ## 7774  CLE       2018
    ## 7775  CLE       2018
    ## 7776  CLE       2018
    ## 7777  CLE       2018
    ## 7778  CLE       2018

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-27-1.png)

    ##       total  TopPaid   NameTopSal highscore   NameTopPpg efficient
    ## 1 138780646 33285709 LeBron James      27.5 LeBron James 0.7142857
    ##   NameTopEFG HighPlusMinus   NameTopPM LeastPaid   NameLowSal  AvgSal
    ## 1 Ante Zizic           7.9 Kyle Korver     77250 John Holland 9252043
    ##    tmsalary   salcap OverUnder wins
    ## 1 137722926 99093000  1.389835   50

    ##     team PlayerYear
    ## 179  LAC       2000
    ## 180  LAC       2000
    ## 181  LAC       2000
    ## 182  LAC       2000
    ## 183  LAC       2000
    ## 184  LAC       2000
    ## 185  LAC       2000
    ## 186  LAC       2000
    ## 187  LAC       2000
    ## 217  LAC       2000
    ## 256  LAC       2000
    ## 258  LAC       2000
    ## 259  LAC       2000
    ## 281  LAC       2000
    ## 282  LAC       2000

    ## # A tibble: 15 x 6
    ## # Groups:   salary [12]
    ##    name                salary   ppg   EFG t_reb PlusMinus
    ##    <fct>                <int> <dbl> <dbl> <dbl>     <dbl>
    ##  1 Michael Olowokandi 3456240   9.8 0.432   8.2     -13.8
    ##  2 Tyrone Nesby       2716667  13.3 0.452   3.8     -13.2
    ##  3 Lamar Odom         2445480  16.6 0.467   7.8      -7.5
    ##  4 Eric Piatkowski    2000000   8.7 0.5     3       -12.6
    ##  5 Eric Murdock       1925000   5.6 0.431   1.9     -10.3
    ##  6 Keith Closs        1680000   4.2 0.486   3.1     -10.6
    ##  7 Derek Anderson     1439400  16.9 0.474   4       -13.1
    ##  8 Maurice Taylor     1367400  17.1 0.465   6.5     -12.8
    ##  9 Brian Skinner       843000   5.4 0.512   6.1      -6.6
    ## 10 Anthony Avent       510000   1.7 0.3     1.5      -8.3
    ## 11 Pete Chilcutt       510000   2.1 0.413   2.3     -12.1
    ## 12 Troy Hudson         460000   8.8 0.437   2.4     -10.9
    ## 13 Etdrick Bohannon    460000   2.2 0.5     2.4     -13.6
    ## 14 Jeff McInnis        460000   7.2 0.453   2.9     -13.3
    ## 15 Charles R Jones     385000   3.4 0.431   1.1     -12.1

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-28-1.png)

    ##      total TopPaid         NameTopSal highscore     NameTopPpg efficient
    ## 1 20658187 3456240 Michael Olowokandi      17.1 Maurice Taylor 0.5121951
    ##      NameTopEFG HighPlusMinus     NameTopPM LeastPaid      NameLowSal
    ## 1 Brian Skinner          -6.6 Brian Skinner    385000 Charles R Jones
    ##    AvgSal tmsalary   salcap OverUnder wins
    ## 1 1377212 22489343 34000000 0.6614513   15

    ##                    name  salary  ppg       EFG
    ## 186  Michael Olowokandi 3456240  9.8 0.4315789
    ## 775          Lamar Odom 2628960 17.2 0.4963768
    ## 1059       Darius Miles 3054840  9.5 0.4871795
    ## 3942        Eric Gordon 2623200 16.1 0.5301724
    ## 3943        Al Thornton 1776240 16.8 0.4560811
    ## 4095        Eric Gordon 2819880 16.9 0.5277778
    ## 5085       Eric Bledsoe 1596360  3.3 0.4062500
    ## 5123      Blake Griffin 5731080 20.7 0.5483871

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-28-2.png)

The Clippers drafted well with Blake Griffin however there were many injuries. So tanking to get a star was worth it. They also got Eric Gordon and Lamar Odom who both woth 6th man of the year.

Comparing them with the Cavs. We can see the Cavs spent money to keep their team intact for their Finals run.

### Comparing the Average Joe

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-29-1.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-29-2.png)

    ##     name   height   weight  salary plusMinus      age    games   start
    ## 1 AvgJoe 201.0873 222.5623 4399392 -1.274556 26.81424 57.84977 28.6163
    ##      mins      fg   fg_att    fg_per     three three_att three_per
    ## 1 21.7084 3.25418 7.261427 0.4429425 0.5806992  1.650448 0.3515404
    ##        two two_att   two_per       efg       ft   ft_att    ft_per
    ## 1 2.673354 5.61071 0.4679881 0.4806002 1.601489 2.132454 0.7511976
    ##      o_reb    d_reb    t_reb   assist    steal     block       TO    fouls
    ## 1 1.021201 2.775143 3.794608 1.912669 0.681629 0.4422839 1.251199 1.951981
    ##       ppg
    ## 1 8.68851

Above is the chart of taking all the players and averaging them all out to create Mr. Avg Joe. Now lets compare him to differnt categories of NBA players.

### Average Joe vs Superstar, Star and Roleplayer

SuperStars

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-30-1.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-30-2.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-30-3.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-30-4.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-30-5.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-30-6.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-30-7.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-30-8.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-30-9.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-30-10.png)

Stars

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-31-1.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-31-2.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-31-3.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-31-4.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-31-5.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-31-6.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-31-7.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-31-8.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-31-9.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-31-10.png)

RolePlayer ![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-32-1.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-32-2.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-32-3.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-32-4.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-32-5.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-32-6.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-32-7.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-32-8.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-32-9.png)![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-32-10.png)

### MVP, DPOY, ROY, MIP, MAX salary trends and MIN salary trends Mid level exception trends

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-33-1.png)

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-34-1.png)

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-35-1.png)

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-36-1.png)

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-37-1.png)

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-38-1.png)

    ## [1] 4990128

    ## [1] 5055895

    ## [1] 4927921

    ## [1] 4791522

    ## [1] 4459748

    ## [1] 4475003

    ## [1] 4297463

    ## [1] 4113290

    ## [1] 3844233

    ## [1] 3674357

    ## [1] 3642971

    ## [1] 3084692

![](nba_data_visV4_files/figure-markdown_github/unnamed-chunk-40-1.png)
