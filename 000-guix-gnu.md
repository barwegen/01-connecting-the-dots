<div align="center">
  <a href="https://git-scm.com/images/logo@2x.png">
    <img src="./img/guix48x48.png"> 
  </a>
</div>

GNU Guix focuses on respecting the user’s computing freedom.

-   **profile:** a profile is a directory containing installed packages. ([guix#Getting Started](guix#Getting Started))


# tl;dr

installing OS with usb / working with *images*: <./001-iso-vs-img?.md> ![img](./img/folder48x48.png)

-   Create the folder in the right location
-   Move some configuration files into it
-   Link them back to the original location
-   Verify that it works!


# *System* installation (2)

-   download the .iso
    -   the free one: <https://guix.gnu.org/>
    -   or a non free one: <https://github.com/SystemCrafters/guix-installer/releases/latest>


# Getting started (5) & Package management (6)


## Profile

-   Each user has a default profile in ‘$HOME/.guix-profile’.
-   For each user, a symlink to the user’s default profile is automatically created in ‘$HOME/.guix-profile’. This symlink always points to the current generation of the user’s default profile. Thus, users can add ‘$HOME/.guix-profile/bin’ to their ‘PATH’ environment variable, and so on.
-   The package command operates only on the user’s own profile, and works with normal user privileges


## Some user commands

Some user commands Guix system <sup><a id="fnr.1" class="footref" href="#fn.1" role="doc-backlink">1</a></sup>

First some user-level commands to manage packages:

    guix package -r lua            # remove package lua
    guix package -i keychain       # install package keychain or:
    guix package -r lua i guile    # remove lua, install guile

The package is now visible in your default “profile”, ‘$HOME/.guix-profile’—a profile is a directory containing installed packages. <sup><a id="fnr.2" class="footref" href="#fn.2" role="doc-backlink">2</a></sup>

To list installed packages, run:

    guix package --list-installed # 

    guix package --roll-back       # Roll back to the previous “generation” of the 
                                   # profile—i.e., undo the last transaction.

Each operation is in fact a “transaction” that creates a new “generation”. These generations and the difference between them can be displayed by running:

    guix package --list-generations

Once you’ve installed a set of packages, you will want to periodically upgrade them to the latest and greatest version. To do that, you will first pull the latest revision of Guix and its package collection:

    guix pull

The end result is a new ‘guix’ command, under ‘~/.config/guix/current/bin’. o jkkkkkjk okYou can display the exact revision of Guix you’re currently using by running:

    guix describe

Going further: \*Note Package Management::, for more about package management. You may like “declarative” package management with ‘guix package &#x2013;manifest’, managing separate “profiles” with ‘&#x2013;profile’, deleting old generations, collecting garbage, and other nifty features that will come in handy as you become more familiar with Guix. If you are a developer, \*note Development:: for additional tools. And if you’re curious, \*note Features::, to peek under the hood.

Going further: \*Note Invoking guix pull::, for more information. \*Note Channels::, on how to specify additional “channels” to pull packages from, how to replicate Guix, and more. You may also find ‘time-machine’ handy (\*note Invoking guix time-machine::).


## Upgrading the Guix System - older generations

You can always find the current system configuration at /run/current-system/configuration.scm but I recommend keeping your own copy of your system configuration file that you check into source control.

<file:///run/current-system/configuration.scm> **BUT**

If you installed Guix System, one of the first things you’ll want to do is to upgrade your system. Once you’ve run ‘guix pull’ to get the latest Guix, you can upgrade the system like this:

    sudo guix system reconfigure /etc/config.scm

Upon completion, the system runs the latest versions of its software packages. When you eventually reboot, you’ll **notice a sub-menu in the bootloader that reads**

“Old system generations”;

it’s what allows you to boot <span class="underline">an older generation of your system</span>, should the latest generation be “broken” or otherwise unsatisfying. Just like for packages, you can always <span class="underline">roll back</span> to a previous generation <span class="underline">of the whole system</span>:

    sudo guix system roll-back

There are many things you’ll probably want to tweak on your system: adding new user accounts, adding new system services, fiddling with the configuration of those services, etc. The **system configuration** is <span class="underline">entirely</span> described in the ‘/etc/config.scm’ file. \*Note Using the Configuration System::, to learn how to change it.


### “declarative approach”

-   ‘guix package’ also supports a “declarative approach” whereby the user specifies the exact set of packages to be available and passes it via the ‘&#x2013;manifest’ option (\*note ‘&#x2013;manifest’: profile-manifest.).

From the manual:

‘&#x2013;export-manifest’ Write to standard output a manifest suitable for ‘&#x2013;manifest’ corresponding to the chosen profile(s).

This option is meant to help you migrate from the “imperative” operating mode—running ‘guix install’, ‘guix upgrade’, etc.—to the declarative mode that ‘&#x2013;manifest’ offers.

Be aware that the resulting manifest <span class="underline">approximates</span> what your profile actually contains; for instance, depending on how your profile was created, it can refer to packages or package versions that are not exactly what you specified.

Keep in mind that a manifest is purely symbolic: it only contains package names and possibly versions, and their meaning varies over time. If you wish to “pin” channels to the revisions that were used to build the profile(s), see ‘&#x2013;export-channels’ below.

‘&#x2013;export-channels’ Write to standard output the list of channels used by the chosen profile(s), in a format suitable for ‘guix pull &#x2013;channels’ or ‘guix time-machine &#x2013;channels’ (\*note Channels::).

Together with ‘&#x2013;export-manifest’, this option provides information allowing you to replicate the current profile (\*note Replicating Guix::).

However, note that the output of this command <span class="underline">approximates</span> what was actually used to build this profile. In particular, a single profile might have been built from several different revisions of the same channel. In that case, ‘&#x2013;export-manifest’ chooses the last one and writes the list of other revisions in a comment. If you really need to pick packages from different channel revisions, you can use inferiors in your manifest to do so (\*note Inferiors::).

Together with ‘&#x2013;export-manifest’, this is a good starting point if you are willing to migrate from the “imperative” model to the fully declarative model consisting of a manifest file along with a channels file pinning the exact channel revision(s) you want.

## Footnotes

<sup><a id="fn.1" class="footnum" href="#fnr.1">1</a></sup> if not running Guix Sysmtem (but install the guix on top of another system (as 'package-manager')) some additonal steps are necessary.

<sup><a id="fn.2" class="footnum" href="#fnr.2">2</a></sup> In the process, you’ve probably noticed that Guix downloaded pre-built binaries; or, if you explicitly chose to <span class="underline">not</span> use pre-built binaries, then probably Guix is still building software (\*note Substitutes::, for more info).