![img](./img/dotfiles.png)


# dotfiles - and context: OS - shell - programs

**dotfiles** - for *user configuration* of software -

Many computer software programs store their configuration *settings* in plain, text-based files or directories. A config file, is a local file that controls the operations of a program, utility or process. Linux configuration files contain the settings and instructions for different systems, utilities, applications and processes. They’re frequently plain-text files that contain a variable name (the name of the setting) followed by it's value, commands or instructions.

Dotfiles are configuration files for *various* programs, and they help those programs manage their functionality. BUT:

> We have seen how programs can be easily configured. But what if someone does not like the way a program has been configured in *etc*? A "normal" user cannot simply go into *etc* and change the configuration files; they are owned &#x2013; from the filesystem's point of view &#x2013; by root! This is why most user programs define two configuration files: the first one at a "system" level, located in *etc*; and the other one, "private" to the user, that can be found in his or her home directory. &#x2013;source: <sup><a id="fnr.1" class="footref" href="#fn.1" role="doc-backlink">1</a></sup>

What sets them -user configuration files- apart from regular files and directories -and system configuration files- is their prefix.

Dotfiles are named that way because each file and directory starts with a dot (.)

On *Unix based systems*, dotfiles are hidden by the *Operating System* by default.

&#x2014;

**Aside** - *various* programs: user programs -vs- the kernel / deamons / system programs -TODO

> rc is an ancient Plan 9 abbreviation that stands for run commands. Eric Raymond's The Jargon File &#x2013;source: <sup><a id="fnr.2" class="footref" href="#fn.2" role="doc-backlink">2</a></sup>

**Aside** *Unix based systems* - configuration in Windows

> The Windows OS does use per-application configuration files as well, but Windows largely depends on something called the Registry. The Registry is an ultra-fast database that stores configurations for the Windows OS and its applications.
> 
> Linux is much simpler. Configurations for applications in Linux are stored in individual configuration files. This makes management of the Linux OS both much easier and more difficult. These configuration options are easy to change as well as migrate to other systems, but these files can be more tedious to document as well. &#x2013;source: <sup><a id="fnr.3" class="footref" href="#fn.3" role="doc-backlink">3</a></sup>

**Aside** *Operating System* - why

> "As is common for home computers of the early 1980s, the C64 incorporates a ROM-based version of the BASIC programming language. **There is no operating system as such. The KERNAL is accessed via BASIC commands**." &#x2013;source: <sup><a id="fnr.4" class="footref" href="#fn.4" role="doc-backlink">4</a></sup>

-   <file:///home/fhb/Nextcloud/computer/apps/tty.md>

**Aside** *Kernal* - access

**Aside** *Shell* - commands - man - man mode -

**Asdide** Linux's BUILT-IN manual - just another command

-   [man page - Wikipedia](https://en.wikipedia.org/wiki/Man_page)
-   [The Linux man-pages project](https://www.kernel.org/doc/man-pages/)
-   [emacs#Man Page](emacs#Man Page)

You can easily find out which sections of the manual contain entries for a command. Each man page has a title and a short description. The -f (whatis) option searches the page titles and returns a list of matches.

**À propos** man -f

-   **à propos:** synoniem: trouwens synoniem: bovendien, overigens, verder
    -   <https://etymologiebank.nl/trefwoord/apropos>
    -   <https://synoniemen.net/vertalingen.php?word=a+propos&source=nl&target=nl>

-   [How to Use Linux’s man Command: Hidden Secrets and Basics](https://www.howtogeek.com/663440/how-to-use-linuxs-man-command-hidden-secrets-and-basics/)
    -   Emacs: M-x apropos
    -   man e.g.: man -k 'user ' | grep password <==> Let’s say you want to change the password of a user account. We can search for any commands that mention “user” in the man page titles or descriptions. We can then pipe it trough grep to look for entries that contain “password.”
        
        Because we enclosed the word “user” in single quotes and included a space at the end, it will only find matches for “user,” not “users.” A quick glance through the search results shows us the likely candidate is passwd.
        
        Because it’s a section one man page and we don’t need to include the section number in the command, we type the following:
        
        man passwd

## Footnotes

<sup><a id="fn.1" class="footnum" href="#fnr.1">1</a></sup> Understanding Linux configuration files,  <https://developer.ibm.com/articles/l-config/>

<sup><a id="fn.2" class="footnum" href="#fnr.2">2</a></sup> [linux - Is there a guideline for Unix config files - Stack Overflow](https://stackoverflow.com/questions/5702254/is-there-a-guideline-for-unix-config-files)

<sup><a id="fn.3" class="footnum" href="#fnr.3">3</a></sup> A Complete Guide to Linux Config Files, <https://www.cbtnuggets.com/blog/technology/system-admin/a-complete-guide-to-linux-config-files>

<sup><a id="fn.4" class="footnum" href="#fnr.4">4</a></sup> [Commodore 64 - Wikipedia] [<https://en.wikipedia.org/wiki/Commodore_64#Software>]