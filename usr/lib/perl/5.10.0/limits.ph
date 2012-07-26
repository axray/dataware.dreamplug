require '_h2ph_pre.ph';

no warnings 'redefine';

unless(defined(&_LIBC_LIMITS_H_)) {
    eval 'sub _LIBC_LIMITS_H_ () {1;}' unless defined(&_LIBC_LIMITS_H_);
    require 'features.ph';
    eval 'sub MB_LEN_MAX () {16;}' unless defined(&MB_LEN_MAX);
    if(!defined (defined(&__GNUC__) ? &__GNUC__ : undef) || (defined(&__GNUC__) ? &__GNUC__ : undef) < 2) {
	unless(defined(&_LIMITS_H)) {
	    eval 'sub _LIMITS_H () {1;}' unless defined(&_LIMITS_H);
	    require 'bits/wordsize.ph';
	    eval 'sub CHAR_BIT () {8;}' unless defined(&CHAR_BIT);
	    eval 'sub SCHAR_MIN () {(-128);}' unless defined(&SCHAR_MIN);
	    eval 'sub SCHAR_MAX () {127;}' unless defined(&SCHAR_MAX);
	    eval 'sub UCHAR_MAX () {255;}' unless defined(&UCHAR_MAX);
	    if(defined(&__CHAR_UNSIGNED__)) {
		eval 'sub CHAR_MIN () {0;}' unless defined(&CHAR_MIN);
		eval 'sub CHAR_MAX () { &UCHAR_MAX;}' unless defined(&CHAR_MAX);
	    } else {
		eval 'sub CHAR_MIN () { &SCHAR_MIN;}' unless defined(&CHAR_MIN);
		eval 'sub CHAR_MAX () { &SCHAR_MAX;}' unless defined(&CHAR_MAX);
	    }
	    eval 'sub SHRT_MIN () {(-32768);}' unless defined(&SHRT_MIN);
	    eval 'sub SHRT_MAX () {32767;}' unless defined(&SHRT_MAX);
	    eval 'sub USHRT_MAX () {65535;}' unless defined(&USHRT_MAX);
	    eval 'sub INT_MIN () {(- &INT_MAX - 1);}' unless defined(&INT_MIN);
	    eval 'sub INT_MAX () {2147483647;}' unless defined(&INT_MAX);
	    eval 'sub UINT_MAX () {4294967295;}' unless defined(&UINT_MAX);
	    if((defined(&__WORDSIZE) ? &__WORDSIZE : undef) == 64) {
		eval 'sub LONG_MAX () {9223372036854775807;}' unless defined(&LONG_MAX);
	    } else {
		eval 'sub LONG_MAX () {2147483647;}' unless defined(&LONG_MAX);
	    }
	    eval 'sub LONG_MIN () {(- &LONG_MAX - 1);}' unless defined(&LONG_MIN);
	    if((defined(&__WORDSIZE) ? &__WORDSIZE : undef) == 64) {
		eval 'sub ULONG_MAX () {18446744073709551615;}' unless defined(&ULONG_MAX);
	    } else {
		eval 'sub ULONG_MAX () {4294967295;}' unless defined(&ULONG_MAX);
	    }
	    if(defined(&__USE_ISOC99)) {
		eval 'sub LLONG_MAX () {9223372036854775807;}' unless defined(&LLONG_MAX);
		eval 'sub LLONG_MIN () {(- &LLONG_MAX - 1);}' unless defined(&LLONG_MIN);
		eval 'sub ULLONG_MAX () {18446744073709551615;}' unless defined(&ULLONG_MAX);
	    }
	}
    }
}
if(defined (defined(&__GNUC__) ? &__GNUC__ : undef)  && !defined (defined(&_GCC_LIMITS_H_) ? &_GCC_LIMITS_H_ : undef)) {
    eval {
	my(@REM);
	my(%INCD) = map { $INC{$_} => 1 } (grep { $_ eq "limits.ph" } keys(%INC));
	@REM = map { "$_/limits.ph" } (grep { not exists($INCD{"$_/limits.ph"}) and -f "$_/limits.ph" } @INC);
	require "$REM[0]" if @REM;
    };
    warn($@) if $@;
}
if(defined (defined(&__USE_ISOC99) ? &__USE_ISOC99 : undef)  && defined (defined(&__GNUC__) ? &__GNUC__ : undef)) {
    unless(defined(&LLONG_MIN)) {
	eval 'sub LLONG_MIN () {(- &LLONG_MAX-1);}' unless defined(&LLONG_MIN);
    }
    unless(defined(&LLONG_MAX)) {
	eval 'sub LLONG_MAX () { &__LONG_LONG_MAX__;}' unless defined(&LLONG_MAX);
    }
    unless(defined(&ULLONG_MAX)) {
	eval 'sub ULLONG_MAX () {( &LLONG_MAX * 2 + 1);}' unless defined(&ULLONG_MAX);
    }
}
if(defined(&__USE_POSIX)) {
    require 'bits/posix1_lim.ph';
}
if(defined(&__USE_POSIX2)) {
    require 'bits/posix2_lim.ph';
}
if(defined(&__USE_XOPEN)) {
    require 'bits/xopen_lim.ph';
}
1;
