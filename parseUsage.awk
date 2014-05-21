{
	gsub(/"/,"",$2);
	gsub(/"/,"",$3);
	gsub(/"/,"",$4);
	gsub(/"/,"",$5);
	userID=$2;
	if ($3 != "null") {
		displayName=$3;
	} else {
		displayName="N/A";
	}
	isAdmin=$4;
	isDisabled=$5;
	if (isAdmin=="true" && isDisabled=="false") {
		printf("%s:\t%s\n",displayName,userID);
	}
}