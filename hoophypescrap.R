#webscraping with rvest
library(rvest)
library(dplyr)
library(beepr)

salary_2019 <- read_html("https://hoopshype.com/salaries/players/") %>%
  html_nodes("table") %>%  html_table

options(max.print=1000000) 

# salary_2000_2018 <- lapply(paste0("https://hoopshype.com/salaries/players/", 2000-2001:2017-2018),
#                            function(url){
#                              url %>% read_html() %>%
#                                html_nodes("table") %>%  html_table
#                            })

salary_2018 <- read_html("https://hoopshype.com/salaries/players/2017-2018/") %>%
  html_nodes("table") %>%  html_table

salary_2017 <- read_html("https://hoopshype.com/salaries/players/2016-2017/") %>%
  html_nodes("table") %>%  html_table

salary_2016 <- read_html("https://hoopshype.com/salaries/players/2015-2016/") %>%
  html_nodes("table") %>%  html_table

salary_2015 <- read_html("https://hoopshype.com/salaries/players/2014-2015/") %>%
  html_nodes("table") %>%  html_table

salary_2014 <- read_html("https://hoopshype.com/salaries/players/2013-2014/") %>%
  html_nodes("table") %>%  html_table

salary_2013 <- read_html("https://hoopshype.com/salaries/players/2012-2013/") %>%
  html_nodes("table") %>%  html_table

salary_2012 <- read_html("https://hoopshype.com/salaries/players/2011-2012/") %>%
  html_nodes("table") %>%  html_table

salary_2011 <- read_html("https://hoopshype.com/salaries/players/2010-2011/") %>%
  html_nodes("table") %>%  html_table

salary_2010 <- read_html("https://hoopshype.com/salaries/players/2009-2010/") %>%
  html_nodes("table") %>%  html_table

salary_2009 <- read_html("https://hoopshype.com/salaries/players/2008-2009/") %>%
  html_nodes("table") %>%  html_table

salary_2008 <- read_html("https://hoopshype.com/salaries/players/2007-2008/") %>%
  html_nodes("table") %>%  html_table


salary_2007 <- read_html("https://hoopshype.com/salaries/players/2006-2007/") %>%
  html_nodes("table") %>%  html_table


salary_2006 <- read_html("https://hoopshype.com/salaries/players/2005-2006/") %>%
  html_nodes("table") %>%  html_table


salary_2005 <- read_html("https://hoopshype.com/salaries/players/2004-2005/") %>%
  html_nodes("table") %>%  html_table


salary_2004 <- read_html("https://hoopshype.com/salaries/players/2003-2004/") %>%
  html_nodes("table") %>%  html_table


salary_2003 <- read_html("https://hoopshype.com/salaries/players/2002-2003/") %>%
  html_nodes("table") %>%  html_table


salary_2002 <- read_html("https://hoopshype.com/salaries/players/2001-2002/") %>%
  html_nodes("table") %>%  html_table


salary_2001 <- read_html("https://hoopshype.com/salaries/players/2000-2001/") %>%
  html_nodes("table") %>%  html_table


salary_2000 <- read_html("https://hoopshype.com/salaries/players/1999-2000/") %>%
  html_nodes("table") %>%  html_table

beep("mario")