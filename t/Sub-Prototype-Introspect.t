# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Sub-Prototype-Introspect.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 2;
BEGIN { use_ok('Sub::Prototype::Introspect') };
sub rfred_proto1($$) { undef; }
warn "prototype_dump: ", proto_getsig(\&rfred_proto1),"\n";
cmp_ok(proto_getsig(\&rfred_proto1), 'eq', '$$', 'chk_proto_sig');

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

