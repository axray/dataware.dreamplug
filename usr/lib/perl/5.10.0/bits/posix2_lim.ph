require '_h2ph_pre.ph';

no warnings 'redefine';

unless(defined(&_BITS_POSIX2_LIM_H)) {
    eval 'sub _BITS_POSIX2_LIM_H () {1;}' unless defined(&_BITS_POSIX2_LIM_H);
    eval 'sub _POSIX2_BC_BASE_MAX () {99;}' unless defined(&_POSIX2_BC_BASE_MAX);
    eval 'sub _POSIX2_BC_DIM_MAX () {2048;}' unless defined(&_POSIX2_BC_DIM_MAX);
    eval 'sub _POSIX2_BC_SCALE_MAX () {99;}' unless defined(&_POSIX2_BC_SCALE_MAX);
    eval 'sub _POSIX2_BC_STRING_MAX () {1000;}' unless defined(&_POSIX2_BC_STRING_MAX);
    eval 'sub _POSIX2_COLL_WEIGHTS_MAX () {2;}' unless defined(&_POSIX2_COLL_WEIGHTS_MAX);
    eval 'sub _POSIX2_EXPR_NEST_MAX () {32;}' unless defined(&_POSIX2_EXPR_NEST_MAX);
    eval 'sub _POSIX2_LINE_MAX () {2048;}' unless defined(&_POSIX2_LINE_MAX);
    eval 'sub _POSIX2_RE_DUP_MAX () {255;}' unless defined(&_POSIX2_RE_DUP_MAX);
    eval 'sub _POSIX2_CHARCLASS_NAME_MAX () {14;}' unless defined(&_POSIX2_CHARCLASS_NAME_MAX);
    unless(defined(&BC_BASE_MAX)) {
	eval 'sub BC_BASE_MAX () { &_POSIX2_BC_BASE_MAX;}' unless defined(&BC_BASE_MAX);
    }
    unless(defined(&BC_DIM_MAX)) {
	eval 'sub BC_DIM_MAX () { &_POSIX2_BC_DIM_MAX;}' unless defined(&BC_DIM_MAX);
    }
    unless(defined(&BC_SCALE_MAX)) {
	eval 'sub BC_SCALE_MAX () { &_POSIX2_BC_SCALE_MAX;}' unless defined(&BC_SCALE_MAX);
    }
    unless(defined(&BC_STRING_MAX)) {
	eval 'sub BC_STRING_MAX () { &_POSIX2_BC_STRING_MAX;}' unless defined(&BC_STRING_MAX);
    }
    unless(defined(&COLL_WEIGHTS_MAX)) {
	eval 'sub COLL_WEIGHTS_MAX () {255;}' unless defined(&COLL_WEIGHTS_MAX);
    }
    unless(defined(&EXPR_NEST_MAX)) {
	eval 'sub EXPR_NEST_MAX () { &_POSIX2_EXPR_NEST_MAX;}' unless defined(&EXPR_NEST_MAX);
    }
    unless(defined(&LINE_MAX)) {
	eval 'sub LINE_MAX () { &_POSIX2_LINE_MAX;}' unless defined(&LINE_MAX);
    }
    unless(defined(&CHARCLASS_NAME_MAX)) {
	eval 'sub CHARCLASS_NAME_MAX () {2048;}' unless defined(&CHARCLASS_NAME_MAX);
    }
    eval 'sub RE_DUP_MAX () {(0x7fff);}' unless defined(&RE_DUP_MAX);
}
1;
