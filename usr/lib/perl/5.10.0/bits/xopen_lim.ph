require '_h2ph_pre.ph';

no warnings 'redefine';

unless(defined(&_XOPEN_LIM_H)) {
    eval 'sub _XOPEN_LIM_H () {1;}' unless defined(&_XOPEN_LIM_H);
    eval 'sub __need_IOV_MAX () {1;}' unless defined(&__need_IOV_MAX);
    require 'bits/stdio_lim.ph';
    eval 'sub _XOPEN_IOV_MAX () { &_POSIX_UIO_MAXIOV;}' unless defined(&_XOPEN_IOV_MAX);
    eval 'sub NL_ARGMAX () { &_POSIX_ARG_MAX;}' unless defined(&NL_ARGMAX);
    eval 'sub NL_LANGMAX () { &_POSIX2_LINE_MAX;}' unless defined(&NL_LANGMAX);
    eval 'sub NL_MSGMAX () { &INT_MAX;}' unless defined(&NL_MSGMAX);
    eval 'sub NL_NMAX () { &INT_MAX;}' unless defined(&NL_NMAX);
    eval 'sub NL_SETMAX () { &INT_MAX;}' unless defined(&NL_SETMAX);
    eval 'sub NL_TEXTMAX () { &INT_MAX;}' unless defined(&NL_TEXTMAX);
    eval 'sub NZERO () {20;}' unless defined(&NZERO);
    if(defined(&INT_MAX)) {
	if((defined(&INT_MAX) ? &INT_MAX : undef) == 32767) {
	    eval 'sub WORD_BIT () {16;}' unless defined(&WORD_BIT);
	} else {
	    if((defined(&INT_MAX) ? &INT_MAX : undef) == 2147483647) {
		eval 'sub WORD_BIT () {32;}' unless defined(&WORD_BIT);
	    } else {
		eval 'sub WORD_BIT () {64;}' unless defined(&WORD_BIT);
	    }
	}
    }
 elsif(defined (defined(&__INT_MAX__) ? &__INT_MAX__ : undef)) {
	if((defined(&__INT_MAX__) ? &__INT_MAX__ : undef) == 32767) {
	    eval 'sub WORD_BIT () {16;}' unless defined(&WORD_BIT);
	} else {
	    if((defined(&__INT_MAX__) ? &__INT_MAX__ : undef) == 2147483647) {
		eval 'sub WORD_BIT () {32;}' unless defined(&WORD_BIT);
	    } else {
		eval 'sub WORD_BIT () {64;}' unless defined(&WORD_BIT);
	    }
	}
    } else {
	eval 'sub WORD_BIT () {32;}' unless defined(&WORD_BIT);
    }
    if(defined(&LONG_MAX)) {
	if((defined(&LONG_MAX) ? &LONG_MAX : undef) == 2147483647) {
	    eval 'sub LONG_BIT () {32;}' unless defined(&LONG_BIT);
	} else {
	    eval 'sub LONG_BIT () {64;}' unless defined(&LONG_BIT);
	}
    }
 elsif(defined (defined(&__LONG_MAX__) ? &__LONG_MAX__ : undef)) {
	if((defined(&__LONG_MAX__) ? &__LONG_MAX__ : undef) == 2147483647) {
	    eval 'sub LONG_BIT () {32;}' unless defined(&LONG_BIT);
	} else {
	    eval 'sub LONG_BIT () {64;}' unless defined(&LONG_BIT);
	}
    } else {
	require 'bits/wordsize.ph';
	if((defined(&__WORDSIZE) ? &__WORDSIZE : undef) == 64) {
	    eval 'sub LONG_BIT () {64;}' unless defined(&LONG_BIT);
	} else {
	    eval 'sub LONG_BIT () {32;}' unless defined(&LONG_BIT);
	}
    }
}
1;
