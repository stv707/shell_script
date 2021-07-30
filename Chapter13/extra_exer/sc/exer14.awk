BEGIN { FS = "," }

	{      
	        print ""        # blank line
	        print $1","        # name
	        print $2","        # company
	        print $3","        # street
	        print $4, $5"."    # city, state zip
	}
END { print "" }  
END { print "+++++++++++++++++++++++" }  
END { print " Number of Record: " NR } 
END { print "+++++++++++++++++++++++" } 
