#!/usr/bin/awk -f

BEGIN {
        FS=": "
        OFS=","
        print "Subject,From,Date,Received" }
        /^Subject:/ {
                subject = $2
        }
        /^From:/ {
                from = $2
        }
        /^Date:/ {
                date = $2
        }
        /^Received:/ {
                received_line = $0
                while (getline && /^[[:space:]]+/) {
                        received_line = received_line " " $0
        }
        received = (received == "") ? received_line : received "\n" received_line
}
END {
        print subject, from, date, received
}
