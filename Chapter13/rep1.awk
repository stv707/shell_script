BEGIN{OFS="\t"} 
BEGIN{print "********DATA*****"}  
{ print $2,$1} 
END{print "***end of report***"}
