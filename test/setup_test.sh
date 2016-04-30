#!/usr/bin/env bash
. ./test/helper.sh

test_setup() {
	assertEquals "blank" "" ""
}

SHUNIT_PARENT=$0 . $SHUNIT2
