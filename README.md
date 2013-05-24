pylite
======

A python-based code-to-html syntax highlighter

The code is currently in very basic alpha status.

That means: use at your own risk.

Requirements
------------

pylite currently requires python 2.x, because of "import cgi" which is
used to escape to html.

Install
-------

See INSTALL.

Usage
-----

$ pylite &lt;filename&gt;

	&lt;filename&gt; the source code file to be highlighted

This will output the syntax-highlighted html to standard output.

Internals
---------

The code follows a very simple yacc/flex-like lexing format,
where tokens are defined using regexes.

Lexing "states" are supported, so that multi-line regexes can
be performed.

Output is simply &lt;span&gt;'ed as classes, letting the style.css
take care of the appearance of the &lt;pre&gt;-formatted output.

TODO
----

See all TODOs in src/pylite.



