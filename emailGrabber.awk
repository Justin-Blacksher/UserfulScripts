# This just grabs all the emails from an input and 
# Separates them by domain
# 

#!/usr/bin/gawk -f

{
   email_regex = "[a-zA-Z0-9._%+-]+@([a-zA-Z0-9.-]+)\\.[a-zA-Z]{2,}"
   if (match($0, email_regex, m)) {
       domain = m[1]
       emails[domain] = emails[domain] ? emails[domain] ORS m[0] : m[0]
   }
}
END {
   for (domain in emails) {
       print "Domain: " domain
       print emails[domain] "\n"
   }
}
