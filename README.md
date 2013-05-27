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

From the source:

	Usage: pylite [-e <CSS>] [-i] [-s] [-p <PAT>] [-m <MSG>] <FILENAME>
	where
	   -e <CSS>    use specified external stylesheet CSS
	   -i          use inline styles
	   -s          output snippet
	   -p <PAT>    force usage of pattern PAT
	   -m <MSG>    display caption as "filename: MSG"
	   <FILENAME>  the file to style
	The default behaviour is to produce a full html5 webpage with embedded
	stylesheet. The pattern is by default taken from the file extension.
	By default no caption is displayed.
	The output is sent to stdout.

Example
----

$ cat simple.c

	int main()
	{
		return 0;
	}

$ pylite -m "" simple.c > simple.html

<pre><table style='border-collapse:collapse;'>
<caption style='padding:0.25em 0px;color:#fff;background-color:#0088f5;'>simple.c: </caption>
<tr>
<td style='padding:0.25em 0.25em;color:#0065bf;background-color:#000d1a;'>1
2
3
4</td>
<td style='padding:0.25em 0.25em;background-color:#001b33;'><span style='font-weight:bold;color:#ff9d00;'>int</span> <span style='color:#fff;'>main</span><span style='color:#fff;'>(</span><span style='color:#fff;'>)</span>
<span style='color:#fff;'>{</span>
	<span style='font-weight:bold;color:#ff9d00;'>return</span> <span style='color:#f00;'>0</span><span style='color:#fff;'>;</span>
<span style='color:#fff;'>}</span>
</td>
</tr></table></pre>

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



