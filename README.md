pm
==

pm is a periodic host monitor that utilizes ping to check for host availability.

Table of contents
-----------------

- [Installation](#installation)
- [Credits](#credits)

<a name="installation">Installation</a>
---------------------------------------

Install the dependencies using the following commands, on Debian and NixOS systems, respectively:

```bash
sudo apt-get install -y curl sbcl cl-launch make git iputils-ping sox
```

```bash
nix-env -i curl sbcl cl-launch gnumake git iputils sox
```

Then, install pm:

```bash
sudo apt-get install -y build-essential curl sbcl cl-launch make git iputils-ping sox
mkdir -p ~/bin ~/common-lisp
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
git clone https://github.com/fare/asdf ~/common-lisp/asdf
git clone https://github.com/ebzzry/pm ~/common-lisp/pm
git clone https://github.com/didierverna/clon ~/common-lisp/clon
sbcl --noinform --eval "(progn (mapc #'ql:quickload '(:inferior-shell :net.didierverna.clon :cl-launch :fare-utils :cl-scripting)) (sb-ext:exit))"
make -C ~/common-lisp/pm install
pm --help
pm google.com
```

<a name="credits">Credits</a>
-----------------------------

This was inspired by [pell](https://github.com/ebzzry/pell) and the structure of this README was
based on [barf](https://github.com/ebzzry/barf).
