require '_h2ph_pre.ph';

no warnings 'redefine';

unless(defined(&_LINUX_LIMITS_H)) {
    eval 'sub _LINUX_LIMITS_H () {1;}' unless defined(&_LINUX_LIMITS_H);
    eval 'sub NR_OPEN () {1024;}' unless defined(&NR_OPEN);
    eval 'sub NGROUPS_MAX () {65536;}' unless defined(&NGROUPS_MAX);
    eval 'sub ARG_MAX () {131072;}' unless defined(&ARG_MAX);
    eval 'sub LINK_MAX () {127;}' unless defined(&LINK_MAX);
    eval 'sub MAX_CANON () {255;}' unless defined(&MAX_CANON);
    eval 'sub MAX_INPUT () {255;}' unless defined(&MAX_INPUT);
    eval 'sub NAME_MAX () {255;}' unless defined(&NAME_MAX);
    eval 'sub PATH_MAX () {4096;}' unless defined(&PATH_MAX);
    eval 'sub PIPE_BUF () {4096;}' unless defined(&PIPE_BUF);
    eval 'sub XATTR_NAME_MAX () {255;}' unless defined(&XATTR_NAME_MAX);
    eval 'sub XATTR_SIZE_MAX () {65536;}' unless defined(&XATTR_SIZE_MAX);
    eval 'sub XATTR_LIST_MAX () {65536;}' unless defined(&XATTR_LIST_MAX);
    eval 'sub RTSIG_MAX () {32;}' unless defined(&RTSIG_MAX);
}
1;
