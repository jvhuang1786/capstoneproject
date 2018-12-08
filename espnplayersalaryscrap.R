#webscraping with rvest
library(rvest)
library(dplyr)
#scraping html from static website

?html_nodes
?lapply

#2019 10 pages "http://www.espn.com/nba/salaries/_/page/"
salary_2019 <- lapply(paste0("http://www.espn.com/nba/salaries/_/page/", 0:10),
                     function(url){
                        url %>%  read_html() %>%
                          html_nodes("table") %>%  html_table
                      })
glimpse(salary_2019)

# 2018 12 pages http://www.espn.com/nba/salaries/_/year/2018/page/

salary_2018 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2018/page/", 0:12),
                     function(url){
                       url %>%  read_html() %>%
                         html_nodes("table") %>%  html_table
                       })
glimpse(salary_2018)

2017 12 pages http://www.espn.com/nba/salaries/_/year/2017/page/

salary_2017 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2017/page/", 0:12),
                      function(url){
                        url %>%  read_html() %>%
                          html_nodes("table") %>%  html_table
                      })
glimpse(salary_2017)

# 2016 12 pages http://www.espn.com/nba/salaries/_/year/2016/page/

salary_2016 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2016/page/", 0:11),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2016)

#2015 11 pages http://www.espn.com/nba/salaries/_/year/2015

salary_2015 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2015/page/", 0:11),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2015)

#2014 10 pages http://www.espn.com/nba/salaries/_/year/2014

salary_2014 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2014/page/", 0:10),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2014)

#2013 14 pages http://www.espn.com/nba/salaries/_/year/2013

salary_2013 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2013/page/", 0:14),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2013)

#2012 13 pages http://www.espn.com/nba/salaries/_/year/2012

salary_2012 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2012/page/", 0:13),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2012)

#2011 12 pages http://www.espn.com/nba/salaries/_/year/2011

salary_2011 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2011/page/", 0:12),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2011)

#2010 11 pages http://www.espn.com/nba/salaries/_/year/2010

salary_2010 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2010/page/", 0:10),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2010)

#2009 11 pages http://www.espn.com/nba/salaries/_/year/2009

salary_2009 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2009/page/", 0:11),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2009)

#2008 11 pages http://www.espn.com/nba/salaries/_/year/2008

salary_2008 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2008/page/", 0:11),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2008)

#2007 11 pages http://www.espn.com/nba/salaries/_/year/2007

salary_2007 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2007/page/", 0:11),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2007)

#2006 11 pages http://www.espn.com/nba/salaries/_/year/2006

salary_2006 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2006/page/", 0:11),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2006)

#2005 3 pages http://www.espn.com/nba/salaries/_/year/2005

salary_2005 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2005/page/", 0:3),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2005)

#2004 5 pages http://www.espn.com/nba/salaries/_/year/2004

salary_2004 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2004/page/", 0:5),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2004)

#2003 7 pages http://www.espn.com/nba/salaries/_/year/2003

salary_2003 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2003/page/", 0:7),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2003)

#2002 10 pages http://www.espn.com/nba/salaries/_/year/2002

salary_2002 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2002/page/", 0:10),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2002)

#2001 9 pages http://www.espn.com/nba/salaries/_/year/2001

salary_2001 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2001/page/", 0:9),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2001)

#2000 4 pages http://www.espn.com/nba/salaries/_/year/2000

salary_2000 <- lapply(paste0("http://www.espn.com/nba/salaries/_/year/2000/page/", 0:4),
                      function(url){ url %>%  read_html() %>% html_nodes("table") %>%  html_table })

glimpse(salary_2000)

#Trying to collect all the salary in one code 

# salaries <- sapply(paste0("http://www.espn.com/nba/salaries/_/year/", 2001:2019),read_html() %>% 
#                        lapply(paste0("http://www.espn.com/nba/salaries/_/year/2019/page", 0:15),
#                               function(url){
#                                 url %>%  read_html() %>% 
#                                   html_nodes("table") %>%  html_table
#                               })


                              