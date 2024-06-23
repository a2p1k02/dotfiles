//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"Mem: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	1,		0},
    //{"Vol: ", "amixer get Master | awk -F'[][]' 'END{ print $4""$2  }'",               1,      1},
    //{"CPU: ", 1, 1},
	//{"Date: ", "date '+%b %d (%a) %I:%M:%S%p'",					1,		0},
	{"Date: ", "date '+%a, %e %b %Y | Time: %H:%M:%S %p'",					1,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
