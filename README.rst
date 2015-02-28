==========================
saltstack-template-formula
==========================

.. image:: http://img.shields.io/github/tag/bechtoldt/saltstack-template-formula.svg
    :target: https://github.com/bechtoldt/saltstack-template-formula/tags

.. image:: http://issuestats.com/github/bechtoldt/saltstack-template-formula/badge/issue
    :target: http://issuestats.com/github/bechtoldt/saltstack-template-formula

.. image:: https://api.flattr.com/button/flattr-badge-large.png
    :target: https://flattr.com/submit/auto?user_id=bechtoldt&url=https%3A%2F%2Fgithub.com%2Fbechtoldt%2Fsaltstack-template-formula

SaltStack formula template that can be used as skeleton for new formulas

.. contents::
    :backlinks: none
    :local:


TODO
----

Define tasks to complete:

* use module defaults.get as soon as it gets stable
* update README template
* clearify LICENSE
* table/ matrix: os/salt compatibility
* add SLS example with using the #!py renderer

Instructions
------------

1. Add this repository as a `GitFS <http://docs.saltstack.com/topics/tutorials/gitfs.html>`_ backend in your Salt master config.

2. Configure your Pillar top file (``/srv/pillar/top.sls``) and your pillars, see pillar.example.sls

3. Include this Formula within another Formula or simply define your needed states within the Salt top file (``/srv/salt/top.sls``).

Available states
----------------

.. contents::
    :local:

``template``
~~~~~~~~~~~~
Describe what this state does.

Additional resources
--------------------

None

Templates
---------

Some states/ commands may refer to templates which aren't included in the files folder (``template/files``). Take a look at ``contrib/`` (if present) for e.g. template examples and place them in separate file roots (e.g. Git repository, refer to `GitFS <http://docs.saltstack.com/topics/tutorials/gitfs.html>`_) in your Salt master config.

Formula Dependencies
--------------------

None

Contributions
-------------

Contributions are always welcome. All development guidelines you have to know are

* set a shebang in the first line (e.g. ``#!jinja|yaml``)
* write clean code (proper YAML+Jinja syntax, no trailing whitespaces, no empty lines with whitespaces, LF only)
* set sane default settings
* test your code
* update README.rst doc

Salt Compatibility
------------------

Tested with:

* 2014.7

OS Compatibility
----------------

Tested with:

* GNU/ Linux Debian Wheezy
