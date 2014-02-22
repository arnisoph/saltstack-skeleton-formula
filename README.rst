================
template-formula
================

Salt Stack Formula template that has dummy content to help with a quick start on a new one

NOTICE BEFORE YOU USE
=====================

* This formula aims to follow the conventions and recommendations described at http://docs.saltstack.com/topics/conventions/formulas.html

TODO
====

Define tasks to complete:

* use module defaults.get as soon as it gets stable

Instructions
============

1. Add this repository as a `GitFS <http://docs.saltstack.com/topics/tutorials/gitfs.html>`_ backend in your Salt master config.

2. Configure your Pillar top file (``/srv/pillar/top.sls``), see pillar.example

3. Include this Formula within another Formula or simply define your needed states within the Salt top file (``/srv/salt/top.sls``).

Available states
================

.. contents::
    :local:

``template``
------------

Describe what this state does.

Additional resources
====================

None

Formula Dependencies
====================

None

Contributions
=============

Contributions are always welcome. All development guidelines you have to know are

* write clean code (proper YAML+Jinja syntax, no trailing whitespaces, no empty lines with whitespaces, LF only)
* set sane default settings
* test your code
* update README.rst doc

Salt Compatibility
==================

Tested with:

* 2014.1.0

OS Compatibility
================

Tested with:

* GNU/ Linux Debian Wheezy
