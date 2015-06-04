# Chatlog Ripper
In WDI, we share everything. Plenty of awesome resouces will inevitably be forgotten.

This very simple program to help anyone rip URL's out of Slack, IRC, etc (Melb WDI2 Slack channel had more than 15 thousand lines of text (ugh..)).

Notes:
- This program will return **ALL** urls. If you dont want .jpg, .png, .gif etc, just set up an if condition in the logs.each_line block.
- If you get the error "in `scan': invalid byte sequence in UTF-8 (ArgumentError)" , simply parse your text logs into something that will do the conversion to UTF-8 (such as http://pastebin.com/). I will fix this in the future.
