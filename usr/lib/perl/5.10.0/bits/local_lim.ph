require '_h2ph_pre.ph';

no warnings 'redefine';

unless(defined(&NR_OPEN)) {
    eval 'sub __undef_NR_OPEN () {1;}' unless defined(&__undef_NR_OPEN);
}
unless(defined(&LINK_MAX)) {
    eval 'sub __undef_LINK_MAX () {1;}' unless defined(&__undef_LINK_MAX);
}
unless(defined(&OPEN_MAX)) {
    eval 'sub __undef_OPEN_MAX () {1;}' unless defined(&__undef_OPEN_MAX);
}
require 'linux/limits.ph';
if(defined(&__undef_NR_OPEN)) {
    undef(&NR_OPEN) if defined(&NR_OPEN);
    undef(&__undef_NR_OPEN) if defined(&__undef_NR_OPEN);
}
if(defined(&__undef_LINK_MAX)) {
    undef(&LINK_MAX) if defined(&LINK_MAX);
    undef(&__undef_LINK_MAX) if defined(&__undef_LINK_MAX);
}
if(defined(&__undef_OPEN_MAX)) {
    undef(&OPEN_MAX) if defined(&OPEN_MAX);
    undef(&__undef_OPEN_MAX) if defined(&__undef_OPEN_MAX);
}
unless(defined(&_POSIX_THREAD_KEYS_MAX)) {
    sub _POSIX_THREAD_KEYS_MAX () {	128;}
}
unless(defined(&PTHREAD_KEYS_MAX)) {
    sub PTHREAD_KEYS_MAX () {	1024;}
}
unless(defined(&_POSIX_THREAD_DESTRUCTOR_ITERATIONS)) {
    sub _POSIX_THREAD_DESTRUCTOR_ITERATIONS () {	4;}
}
unless(defined(&PTHREAD_DESTRUCTOR_ITERATIONS)) {
    sub PTHREAD_DESTRUCTOR_ITERATIONS () {	 &_POSIX_THREAD_DESTRUCTOR_ITERATIONS;}
}
unless(defined(&_POSIX_THREAD_THREADS_MAX)) {
    sub _POSIX_THREAD_THREADS_MAX () {	64;}
}
undef(&PTHREAD_THREADS_MAX) if defined(&PTHREAD_THREADS_MAX);
unless(defined(&AIO_PRIO_DELTA_MAX)) {
    sub AIO_PRIO_DELTA_MAX () {	20;}
}
unless(defined(&PTHREAD_STACK_MIN)) {
    sub PTHREAD_STACK_MIN () {	16384;}
}
unless(defined(&DELAYTIMER_MAX)) {
    sub DELAYTIMER_MAX () {	2147483647;}
}
unless(defined(&TTY_NAME_MAX)) {
    sub TTY_NAME_MAX () {	32;}
}
unless(defined(&LOGIN_NAME_MAX)) {
    sub LOGIN_NAME_MAX () {	256;}
}
unless(defined(&HOST_NAME_MAX)) {
    sub HOST_NAME_MAX () {	64;}
}
unless(defined(&MQ_PRIO_MAX)) {
    sub MQ_PRIO_MAX () {	32768;}
}
unless(defined(&SEM_VALUE_MAX)) {
    sub SEM_VALUE_MAX () {	(2147483647);}
}
1;
