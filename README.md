pianobartender
--------------

Wraps pianobar in a really simple web api

Installation
============

    $ gem install pianobartender

Usage
=====

Make sure you have [pianobar][pianobar] installed.

Also, make sure you have the control fifo setup:

    $ mkdir -p ~/.config/pianobar && mkfifo ~/.config/pianobar/ctl

Then run pianobar (and login):

    $ pianobar

Finally, in another terminal, just run:

    $ pianobartender

To control pianobar, just issue a command via GET:

    $ curl http://localhost:9292/command/next

You can use any of the following commands:

* love
* ban
* bookmark
* history
* info
* next
* pause
* unpause
* tired
* upcoming
* voldown
* volup
