Day2_Values<-read.delim(file="Day2.txt",header=FALSE, sep = "")
D2legnth<-lengths(Day2_Values)

forward<-0
up<-0
down<-0

for (i in 1:D2legnth) 
  {
  
  if (Day2_Values[i,1] == "forward")
    forward<-forward+Day2_Values[i,2]
  
  if (Day2_Values[i,1] == "down")
    down<-down+Day2_Values[i,2]
  
  if (Day2_Values[i,1] == "up")
    up<-up+Day2_Values[i,2]
}

total_depth<-down-up
final_position<-total_depth*forward

paste0("The ship moved forward  ", forward, " units")
paste0("The ship moved down  ", down, " units")
paste0("The ship moved up  ", up, " units")
paste0("The total depth is ", total_depth)

paste0("The asnwer to the problem (total depth * forward) is ", final_position)
