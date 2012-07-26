require '_h2ph_pre.ph';

no warnings 'redefine';

unless(defined(&_BITS_POSIX1_LIM_H)) {
    eval 'sub _BITS_POSIX1_LIM_H () {1;}' unless defined(&_BITS_POSIX1_LIM_H);
    eval 'sub _POSIX_AIO_LISTIO_MAX () {2;}' unless defined(&_POSIX_AIO_LISTIO_MAX);
    eval 'sub _POSIX_AIO_MAX () {1;}' unless defined(&_POSIX_AIO_MAX);
    eval 'sub _POSIX_ARG_MAX () {4096;}' unless defined(&_POSIX_ARG_MAX);
    if(defined(&__USE_XOPEN2K)) {
	eval 'sub _POSIX_CHILD_MAX () {25;}' unless defined(&_POSIX_CHILD_MAX);
    } else {
	eval 'sub _POSIX_CHILD_MAX () {6;}' unless defined(&_POSIX_CHILD_MAX);
    }
    eval 'sub _POSIX_DELAYTIMER_MAX () {32;}' unless defined(&_POSIX_DELAYTIMER_MAX);
    eval 'sub _POSIX_HOST_NAME_MAX () {255;}' unless defined(&_POSIX_HOST_NAME_MAX);
    eval 'sub _POSIX_LINK_MAX () {8;}' unless defined(&_POSIX_LINK_MAX);
    eval 'sub _POSIX_LOGIN_NAME_MAX () {9;}' unless defined(&_POSIX_LOGIN_NAME_MAX);
    eval 'sub _POSIX_MAX_CANON () {255;}' unless defined(&_POSIX_MAX_CANON);
    eval 'sub _POSIX_MAX_INPUT () {255;}' unless defined(&_POSIX_MAX_INPUT);
    eval 'sub _POSIX_MQ_OPEN_MAX () {8;}' unless defined(&_POSIX_MQ_OPEN_MAX);
    eval 'sub _POSIX_MQ_PRIO_MAX () {32;}' unless defined(&_POSIX_MQ_PRIO_MAX);
    eval 'sub _POSIX_NAME_MAX () {14;}' unless defined(&_POSIX_NAME_MAX);
    if(defined(&__USE_XOPEN2K)) {
	eval 'sub _POSIX_NGROUPS_MAX () {8;}' unless defined(&_POSIX_NGROUPS_MAX);
    } else {
	eval 'sub _POSIX_NGROUPS_MAX () {0;}' unless defined(&_POSIX_NGROUPS_MAX);
    }
    if(defined(&__USE_XOPEN2K)) {
	eval 'sub _POSIX_OPEN_MAX () {20;}' unless defined(&_POSIX_OPEN_MAX);
    } else {
	eval 'sub _POSIX_OPEN_MAX () {16;}' unless defined(&_POSIX_OPEN_MAX);
    }
    eval 'sub _POSIX_FD_SETSIZE () { &_POSIX_OPEN_MAX;}' unless defined(&_POSIX_FD_SETSIZE);
    eval 'sub _POSIX_PATH_MAX () {256;}' unless defined(&_POSIX_PATH_MAX);
    eval 'sub _POSIX_PIPE_BUF () {512;}' unless defined(&_POSIX_PIPE_BUF);
    eval 'sub _POSIX_RE_DUP_MAX () {255;}' unless defined(&_POSIX_RE_DUP_MAX);
    eval 'sub _POSIX_RTSIG_MAX () {8;}' unless defined(&_POSIX_RTSIG_MAX);
    eval 'sub _POSIX_SEM_NSEMS_MAX () {256;}' unless defined(&_POSIX_SEM_NSEMS_MAX);
    eval 'sub _POSIX_SEM_VALUE_MAX () {32767;}' unless defined(&_POSIX_SEM_VALUE_MAX);
    eval 'sub _POSIX_SIGQUEUE_MAX () {32;}' unless defined(&_POSIX_SIGQUEUE_MAX);
    eval 'sub _POSIX_SSIZE_MAX () {32767;}' unless defined(&_POSIX_SSIZE_MAX);
    eval 'sub _POSIX_STREAM_MAX () {8;}' unless defined(&_POSIX_STREAM_MAX);
    eval 'sub _POSIX_SYMLINK_MAX () {255;}' unless defined(&_POSIX_SYMLINK_MAX);
    eval 'sub _POSIX_SYMLOOP_MAX () {8;}' unless defined(&_POSIX_SYMLOOP_MAX);
    eval 'sub _POSIX_TIMER_MAX () {32;}' unless defined(&_POSIX_TIMER_MAX);
    eval 'sub _POSIX_TTY_NAME_MAX () {9;}' unless defined(&_POSIX_TTY_NAME_MAX);
    eval 'sub _POSIX_TZNAME_MAX () {6;}' unless defined(&_POSIX_TZNAME_MAX);
    eval 'sub _POSIX_QLIMIT () {1;}' unless defined(&_POSIX_QLIMIT);
    eval 'sub _POSIX_HIWAT () { &_POSIX_PIPE_BUF;}' unless defined(&_POSIX_HIWAT);
    eval 'sub _POSIX_UIO_MAXIOV () {16;}' unless defined(&_POSIX_UIO_MAXIOV);
    eval 'sub _POSIX_CLOCKRES_MIN () {20000000;}' unless defined(&_POSIX_CLOCKRES_MIN);
    require 'bits/local_lim.ph';
    unless(defined(&SSIZE_MAX)) {
	eval 'sub SSIZE_MAX () { &LONG_MAX;}' unless defined(&SSIZE_MAX);
    }
    unless(defined(&NGROUPS_MAX)) {
	eval 'sub NGROUPS_MAX () {8;}' unless defined(&NGROUPS_MAX);
    }
}
1;
