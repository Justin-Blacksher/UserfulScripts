#!/usr/bin/awk -f

BEGIN {
        FS=": /n"
        RED = "\033[31m"
        GREEN = "\033[32m"
        YELLOW = "\033[33m"
        BLUE = "\033[34m"
        MAGENTA = "\033[35m"
        CYAN = "\033[36m"
        RESET = "\033[0m"
}
/Message-ID/ {
        message_id_line = $0
        while (getline && /^[[:space:]]+/) {
                message_id_line = message_id_line "\n" $0
        }
        message_ids = (message_ids == "") ? message_id_line : message_ids "\n" message_id_line
}

/References/ {
        reference_id_line = $0
        while (getline && /^[[:space:]]+/) {
                reference_id_line = reference_id_line "\n" $0
        }
        reference_ids = (reference_ids == "") ? reference_id_line : reference_ids "\n" reference_id_line
}

/MIME/ {
        mime_id_line = $0
        while (getline && /^[[:space:]]+/) {
                mime_id_line = mime_id_line "\n" $0
        }
        mime_ids = (mime_ids == "") ? mime_id_line : mime_ids "\n" mime_id_line
}

/Authentication-Results/ {
        auth_id_line = $0
        while (getline && /^[[:space:]]+/) {
                auth_id_line = auth_id_line "\n" $0
        }
        auth_ids = (auth_ids == "") ? auth_id_line : auth_ids "\n" auth_id_line
}


END {
        print YELLOW "****** [ Message ID ] *********\n" RESET
        print message_ids "\n"
        print YELLOW "********** [ END ] *****************" RESET
        print GREEN "****** [ References ] ***********\n" RESET
        print reference_ids "\n"
        print GREEN "************* [ END ] **************" RESET
        print MAGENTA "****** [ MIME ] ***************\n" RESET
        print mime_ids "\n"
        print MAGENTA "************* [ END ] **************" RESET
        print CYAN "****** [ Auth ] ***************\n" RESET
        print auth_ids "\n"
        print CYAN "************* [ END ] **************" RESET
}
