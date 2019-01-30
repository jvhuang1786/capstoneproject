#Testing for Regime Change Bias in the data

#2010 Lebron James Joined twitter
beforetwitter<-data %>% subset(PlayerYear == 2000|PlayerYear == 2001|PlayerYear == 2002|PlayerYear == 2003|
                               PlayerYear == 2004|PlayerYear == 2005|PlayerYear == 2006|PlayerYear == 2007|
                               PlayerYear == 2008|PlayerYear == 2009, select =c(PlayerYear, team, name, salary,
                                                                                height_cm, weight_lb, school,
                                                                                country,DraftYear, DraftRound,
                                                                                DraftNum, PlusMinus, Pos, Age,
                                                                                Games, started, MinGames,
                                                                                FG, FG_att, three, three_att,
                                                                                two, two_att, FT, FT_att,
                                                                                o_reb, d_reb, t_reb, assist,
                                                                                steal, block, TO, fouls, ppg,
                                                                                infl, mvp,mip,SixthMan,dpoy,
                                                                                roy, nba1, nba2, nba3, rook1, rook2,
                                                                                def1,def2, FG_per, two_per, EFG,
                                                                                three_per, FT_per, TeamWins, NumYears,
                                                                                tmsalary, SalCap, overUnder))
aftertwitter<- data %>% subset(PlayerYear == 2010|PlayerYear == 2011|PlayerYear == 2012|PlayerYear == 2013|
                               PlayerYear == 2014|PlayerYear == 2015|PlayerYear == 2016|PlayerYear == 2017|
                               PlayerYear == 2018, select = c(PlayerYear, team, name, salary,
                                                              height_cm, weight_lb, school,
                                                              country,DraftYear, DraftRound,
                                                              DraftNum, PlusMinus, Pos, Age,
                                                              Games, started, MinGames,
                                                              FG, FG_att, three, three_att,
                                                              two, two_att, FT, FT_att,
                                                              o_reb, d_reb, t_reb, assist,
                                                              steal, block, TO, fouls, ppg,
                                                              infl, mvp,mip,SixthMan,dpoy,
                                                              roy, nba1, nba2, nba3, rook1, rook2,
                                                              def1,def2, FG_per, two_per, EFG,
                                                              three_per, FT_per, TeamWins, NumYears,
                                                              tmsalary, SalCap, overUnder))


#Lets make a multiple linear regression model
lmodelbefore<- lm(salary~Age + t_reb + TO + ppg+ FG+ 
              started+three+two+assist+block, +steal +NumYears, data=beforetwitter)
lmodelbefore
summary(lmodelbefore)
SSEbefore = sum(lmodelbefore$residuals^2)
RMSEbefore = sqrt(SSEbefore/nrow(data))
mean(beforetwitter$salary)
RMSEbefore


lmodelafter<- lm(salary~Age + t_reb + TO + ppg+ FG+ 
                   started+three+two+assist+block, +steal +NumYears, data=aftertwitter)
lmodelafter
summary(lmodelafter)
SSEafter = sum(lmodelafter$residuals^2)
RMSEafter = sqrt(SSEafter/nrow(data))
mean(aftertwitter$salary)
RMSEafter



#collecting bargaining agreement 1999-2005, 2006-2011, 2012-2018
cba1<-data %>% subset(PlayerYear == 2000|PlayerYear == 2001|PlayerYear == 2002|PlayerYear == 2003|
                        PlayerYear == 2004|PlayerYear == 2005, select = c(PlayerYear, team, name, salary,
                                                                          height_cm, weight_lb, school,
                                                                          country,DraftYear, DraftRound,
                                                                          DraftNum, PlusMinus, Pos, Age,
                                                                          Games, started, MinGames,
                                                                          FG, FG_att, three, three_att,
                                                                          two, two_att, FT, FT_att,
                                                                          o_reb, d_reb, t_reb, assist,
                                                                          steal, block, TO, fouls, ppg,
                                                                          infl, mvp,mip,SixthMan,dpoy,
                                                                          roy, nba1, nba2, nba3, rook1, rook2,
                                                                          def1,def2, FG_per, two_per, EFG,
                                                                          three_per, FT_per, TeamWins, NumYears,
                                                                          tmsalary, SalCap, overUnder))
cba2 <- data %>% subset(PlayerYear == 2006|PlayerYear == 2007|PlayerYear == 2008|PlayerYear == 2009|
  PlayerYear == 2010|PlayerYear == 2011, select =c(PlayerYear, team, name, salary,
                                                   height_cm, weight_lb, school,
                                                   country,DraftYear, DraftRound,
                                                   DraftNum, PlusMinus, Pos, Age,
                                                   Games, started, MinGames,
                                                   FG, FG_att, three, three_att,
                                                   two, two_att, FT, FT_att,
                                                   o_reb, d_reb, t_reb, assist,
                                                   steal, block, TO, fouls, ppg,
                                                   infl, mvp,mip,SixthMan,dpoy,
                                                   roy, nba1, nba2, nba3, rook1, rook2,
                                                   def1,def2, FG_per, two_per, EFG,
                                                   three_per, FT_per, TeamWins, NumYears,
                                                   tmsalary, SalCap, overUnder))
cba3 <- data %>% subset(PlayerYear == 2012|PlayerYear == 2013|PlayerYear == 2014|PlayerYear == 2015| 
                          PlayerYear == 2016| PlayerYear == 2017|PlayerYear == 2018, select = c(PlayerYear, team, name, salary,
                                                                                                height_cm, weight_lb, school,
                                                                                                country,DraftYear, DraftRound,
                                                                                                DraftNum, PlusMinus, Pos, Age,
                                                                                                Games, started, MinGames,
                                                                                                FG, FG_att, three, three_att,
                                                                                                two, two_att, FT, FT_att,
                                                                                                o_reb, d_reb, t_reb, assist,
                                                                                                steal, block, TO, fouls, ppg,
                                                                                                infl, mvp,mip,SixthMan,dpoy,
                                                                                                roy, nba1, nba2, nba3, rook1, rook2,
                                                                                                def1,def2, FG_per, two_per, EFG,
                                                                                                three_per, FT_per, TeamWins, NumYears,
                                                                                                tmsalary, SalCap, overUnder))


lmodelcba1<- lm(salary~Age + t_reb + TO + ppg+ FG+ 
                    started+three+two+assist+block, +steal +NumYears, data=cba1)
lmodelcba1
summary(lmodelcba1)
SSEcba1 = sum(lmodelcba1$residuals^2)
RMSEcba1 = sqrt(SSEcba1 /nrow(data))
mean(cba1$salary)
RMSEcba1

lmodelcba2<- lm(salary~Age + t_reb + TO + ppg+ FG+ 
                  started+three+two+assist+block, +steal +NumYears, data=cba2)
lmodelcba2
summary(lmodelcba2)
SSEcba2 = sum(lmodelcba2$residuals^2)
RMSEcba2 = sqrt(SSEcba2 /nrow(data))
mean(cba2$salary)
RMSEcba2


lmodelcba3<- lm(salary~Age + t_reb + TO + ppg+ FG+ 
                  started+three+two+assist+block, +steal +NumYears, data=cba3)
lmodelcba3
summary(lmodelcba3)
SSEcba3 = sum(lmodelcba3$residuals^2)
RMSEcba3 = sqrt(SSEcba3 /nrow(data))
mean(cba3$salary)
RMSEcba3

#lets look at before Under that arrangement, ESPN pays $485 million per season, 
#while Turner pays $445 million. Under this arrangement, ESPN will pay $1.4 billion per year, 
#while Turner will pay $1.2 billion, according to Sports Business Journal.

nontvmoney <- data %>% subset(PlayerYear == 2000|PlayerYear == 2001|PlayerYear == 2002|PlayerYear == 2003|
                       PlayerYear == 2004|PlayerYear == 2005|PlayerYear == 2006|PlayerYear == 2007|
                       PlayerYear == 2008|PlayerYear == 2009|PlayerYear == 2010|PlayerYear == 2011|PlayerYear == 2012|
                       PlayerYear == 2013|PlayerYear == 2014,select =c(PlayerYear, team, name, salary,
                                                                       height_cm, weight_lb, school,
                                                                       country,DraftYear, DraftRound,
                                                                       DraftNum, PlusMinus, Pos, Age,
                                                                       Games, started, MinGames,
                                                                       FG, FG_att, three, three_att,
                                                                       two, two_att, FT, FT_att,
                                                                       o_reb, d_reb, t_reb, assist,
                                                                       steal, block, TO, fouls, ppg,
                                                                       infl, mvp,mip,SixthMan,dpoy,
                                                                       roy, nba1, nba2, nba3, rook1, rook2,
                                                                       def1,def2, FG_per, two_per, EFG,
                                                                       three_per, FT_per, TeamWins, NumYears,
                                                                       tmsalary, SalCap, overUnder))

lmodelnontv<- lm(salary~Age + t_reb + TO + ppg+ FG+ 
                started+three+two+assist+block, +steal +NumYears, data=nontvmoney)
lmodelnontv
summary(lmodelnontv)
SSEnontv = sum(lmodelnontv$residuals^2)
RMSEnontv = sqrt(SSEnontv /nrow(data))
mean(nontvmoney$salary)
RMSEtv



tvmoney <- data %>% subset(PlayerYear == 2015 |PlayerYear == 2016 | PlayerYear ==2017 | PlayerYear == 2018, select = c(PlayerYear, team, name, salary,
                                                                                        height_cm, weight_lb, school,
                                                                                        country,DraftYear, DraftRound,
                                                                                        DraftNum, PlusMinus, Pos, Age,
                                                                                        Games, started, MinGames,
                                                                                        FG, FG_att, three, three_att,
                                                                                        two, two_att, FT, FT_att,
                                                                                        o_reb, d_reb, t_reb, assist,
                                                                                        steal, block, TO, fouls, ppg,
                                                                                        infl, mvp,mip,SixthMan,dpoy,
                                                                                        roy, nba1, nba2, nba3, rook1, rook2,
                                                                                        def1,def2, FG_per, two_per, EFG,
                                                                                        three_per, FT_per, TeamWins, NumYears,
                                                                                        tmsalary, SalCap, overUnder))
  
lmodeltv<- lm(salary~Age + t_reb + TO + ppg+ FG+ 
                  started+three+two+assist+block, +steal +NumYears, data=tvmoney)
lmodeltv
summary(lmodeltv)
SSEtv = sum(lmodeltv$residuals^2)
RMSEtv = sqrt(SSEtv /nrow(data))
mean(tvmoney$salary)
RMSEtv
