BEGIN { mode="command"; }

/^[0-9].* SUBMIT/ { type = $2 }

type != "BULK" { next; }

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
#	print req "(" len ")";
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

/^	0x0000:/ && mode == "command" {
	req = substr($3,3) substr($3,1,2) substr($2,3) substr($2,1,2);
	addr = substr($5,3) substr($5,1,2) substr($4,3) substr($4,1,2);
	len = substr($7,3) substr($7,1,2) substr($6,3) substr($6,1,2);
	pad = substr($9,3) substr($9,1,2) substr($8,3) substr($8,1,2);
	switch(req) {
	case "00000001":
		print "VERSION"
		break;
	case "00000101":
		print "WRITE(addr=0x"addr", len=0x"len")";
		break;
	case "00000102":
		print "CALL(addr=0x"addr")";
		break;
	case "00000103":
		print "READ(addr=0x"addr", len=0x"len")";
		break;
	default:
		print "UNKNOWN COMMAND " $0;
		break;
	}
	mode="data";
	next;
}
/^	0x0000:/ {
	offset = nextoffset;
}
	
/^	0x0000:  ffff 0000 0000 0000 ____ / { mode="command"; next;}

/^	/ {
	pos = offset + strtonum($1);
	$1 = sprintf("	0x%08x:", pos);
	print;
	nextoffset = pos + 16;
}


