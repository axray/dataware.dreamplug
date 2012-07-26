import os
PKGDATADIR = os.environ.get("OVS_PKGDATADIR", """/usr/local/share/openvswitch""")
RUNDIR = os.environ.get("OVS_RUNDIR", """/usr/local/var/run/openvswitch""")
LOGDIR = os.environ.get("OVS_LOGDIR", """/usr/local/var/log/openvswitch""")
BINDIR = os.environ.get("OVS_BINDIR", """/usr/local/bin""")
