require '_h2ph_pre.ph';

no warnings 'redefine';

if(!defined (defined(&_STDIO_H) ? &_STDIO_H : undef)  && !defined (defined(&__need_FOPEN_MAX) ? &__need_FOPEN_MAX : undef)  && !defined (defined(&__need_IOV_MAX) ? &__need_IOV_MAX : undef)) {
    die("Never include <bits/stdio_lim.h> directly; use <stdio.h> instead.");
}
if(defined(&_STDIO_H)) {
    eval 'sub L_tmpnam () {20;}' unless defined(&L_tmpnam);
    eval 'sub TMP_MAX () {238328;}' unless defined(&TMP_MAX);
    eval 'sub FILENAME_MAX () {4096;}' unless defined(&FILENAME_MAX);
    if(defined(&__USE_POSIX)) {
	eval 'sub L_ctermid () {9;}' unless defined(&L_ctermid);
	eval 'sub L_cuserid () {9;}' unless defined(&L_cuserid);
    }
}
if(defined (defined(&__need_FOPEN_MAX) ? &__need_FOPEN_MAX : undef) || defined (defined(&_STDIO_H) ? &_STDIO_H : undef)) {
    undef(&FOPEN_MAX) if defined(&FOPEN_MAX);
    eval 'sub FOPEN_MAX () {16;}' unless defined(&FOPEN_MAX);
}
if(defined (defined(&__need_IOV_MAX) ? &__need_IOV_MAX : undef)  && !defined (defined(&IOV_MAX) ? &IOV_MAX : undef)) {
    eval 'sub IOV_MAX () {1024;}' unless defined(&IOV_MAX);
}
1;
