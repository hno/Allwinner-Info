cmd == 1 {
	req = substr($2,3) substr($2,1,2);
	len = substr($4,3) substr($4,1,2) substr($3,3) substr($3,1,2);
	cmd = 2;
	nextoffset=0;
	switch(req) {
	case "0012":
		req="WRITE";
		break;
	case "0011":
		req="READ";
		break;
	}
	print req "(" len ")";
	next;
}

/^	0x0000.*  AWUC\.\.\.\./ { 
	cmd = 1;
	next;
}
/^	0x0000:  4157 5553 0000 0000 0000 0000 00/ {
	cmd=0;
	next;
}

/^	0x0000:/ {
	offset = nextoffset;
}
	
/^	/ {
	pos = offset + strtonum($1);
	$1 = sprintf("	0x%08x:", pos);
	print;
	nextoffset = pos + 16;
}
