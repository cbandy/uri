#!/usr/bin/env bash
. ./test/helper.sh

test_no_arguments() {
	result="$( uri )"
	assertEquals "Wrong exit code" 2 $?
	assertNotNull "Expected help text" "$result"
}

test_help_argument() {
	result="$( uri --help )"
	assertEquals "Wrong exit code" 0 $?
	assertNotNull "Expected help text" "$result"
}

test_no_uris() {
	result="$( uri --user cbandy )"
	assertEquals "Wrong exit code" 2 $?
	assertNotNull "Expected help text" "$result"
}

SHUNIT_PARENT=$0 . $SHUNIT2
