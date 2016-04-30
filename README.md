# uri

[![Build Status](https://travis-ci.org/cbandy/uri.svg?branch=master)](https://travis-ci.org/cbandy/uri)

Builds and manipulates Uniform Resource Identifiers.


## Requirements

* [Ruby]


## Synopsis

Add authentication:

    $ uri --user cbandy --password secret 'https://github.com'
    https://cbandy:secret@github.com

Change the scheme:

    $ uri --scheme https 'gopher://github.com'
    https://github.com


[Ruby]: http://www.ruby-lang.org/
