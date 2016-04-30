#!/usr/bin/env bash
. ./test/helper.sh

test_scheme() {
	assertEquals "--scheme" "one://example.org/cow" \
		"$( uri --scheme one 'http://example.org/cow' )"

	assertEquals "-s" "one://example.org/cow" \
		"$( uri -s one 'http://example.org/cow' )"
}

test_host() {
	assertEquals "--host" "http://money/cow" \
		"$( uri --host money 'http://example.org/cow' )"

	assertEquals "-h" "http://money/cow" \
		"$( uri -h money 'http://example.org/cow' )"
}

test_port() {
	assertEquals "--port" "http://example.org:1234/cow" \
		"$( uri --port 1234 'http://example.org/cow' )"

	assertEquals "-o" "http://example.org:1234/cow" \
		"$( uri -o 1234 'http://example.org/cow' )"
}

test_user() {
	assertEquals "--user" "http://two@example.org/cow" \
		"$( uri --user two 'http://example.org/cow' )"

	assertEquals "-u" "http://two@example.org/cow" \
		"$( uri -u two 'http://example.org/cow' )"
}

test_password() {
	assertEquals "--password" "http://u:science@example.org/cow" \
		"$( uri --password science 'http://u@example.org/cow' )"

	assertEquals "-P" "http://u:science@example.org/cow" \
		"$( uri -P science 'http://u@example.org/cow' )"
}

test_path() {
	assertEquals "--path" "http://example.org/extra/beans/too" \
		"$( uri --path /extra/beans/too 'http://example.org/cow' )"

	assertEquals "-p" "http://example.org/extra/beans/too" \
		"$( uri -p /extra/beans/too 'http://example.org/cow' )"
}

test_query() {
	assertEquals "--query" "http://example.org/cow?for=height" \
		"$( uri --query 'for=height' 'http://example.org/cow' )"

	assertEquals "-q" "http://example.org/cow?for=height" \
		"$( uri -q 'for=height' 'http://example.org/cow' )"
}

test_fragment() {
	assertEquals "--fragment" "http://example.org/cow#anything" \
		"$( uri --fragment 'anything' 'http://example.org/cow' )"

	assertEquals "-F" "http://example.org/cow#anything" \
		"$( uri -F 'anything' 'http://example.org/cow' )"
}

SHUNIT_PARENT=$0 . $SHUNIT2
