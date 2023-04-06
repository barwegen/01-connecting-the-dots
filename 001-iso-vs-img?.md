<div align="center">
  <a href="https://git-scm.com/images/logo@2x.png">
    <h1><p><b>DD</b></p></h1>  
  </a>
</div>

GNU Guix focuses on respecting the user’s computing freedom. tl;dr

    dd 

**iso vs img?** - (optical) disk image

> There is no difference in the structure of ISO and IMG formats if the IMG file is uncompressed. It is possible for an IMG format file to be renamed with the ISO file extension and then opened in software that only recognizes the ISO file format. This is an effective way of accessing disc information in programs that do not handle the IMG format. &#x2013;source: <https://www.techwalla.com/articles/what-are-the-differences-between-iso-and-img-files>)


# Aside: NOT digital images!

An image file format is file format for a *[digital image](https://en.wikipedia.org/wiki/Digital_image)*: an image is visual representation of somthing.

But that's not todays' topic: that is *disk image*:


# What are we talking about? - *What*

*copy of data on an optical disk* An *ISO file* (often called an ISO image), is an archive file that contains *an identical copy -or image- of data found on an /optical* disc/, like a CD or DVD. *They* (cd or dvd) are often used for:

-   backing up optical discs, or for
-   distributing large file sets that are intended to burned to an optical disc.

You can think of an ISO image as a complete copy of everything stored on a physical optical disc like CD, DVD, or Blu-ray disc—including the file system itself. They are a sector-by-sector copy of the disc, and no compression is used.

*the name* The name ISO was taken from **the name of the file system used by optical media**, which is usually ISO 9660.

Since it is a file format, you can store it on any storage device, not only the *optical*. But before the 'how' first the 'why':


# The idea - *Why*

*the idea* The idea behind ISO images is that you can archive an exact digital copy of a disc, and then later use that image to burn a new disc that’s in turn an exact copy of the original. Most operating systems (and many utilities) also allow you **mount an ISO image as a virtual disc**, in which case all your apps treat it as if a real optical disc were inserted.

*backup vs distributing programs* While many people do use ISO images for creating backups of their optical disc, ISO images these days are used primarily for distributing large programs and operating systems, because it allows all the files to be contained in one easily downloadable file. People can then decide whether they want to mount that image or use it to burn an optical disc.

*OS* Most downloadable operating systems, including Windows and various Linux distros are distributed as ISO images. This comes in handy when downloading the current version of Ubuntu to install on your machine or installing that old game disc on a laptop without a physical drive.


# Clone/mount/burn/extract etc. aka - *How*

Now, because it is a *file format*, you can store it on any storage device.


# Aside: file extensions


# Aside: file format


# Aside: other types than optical (&#x2026;) - Unix’s “Everything Is a File”

> First, much of the sentiment you can find online and in books about Unix being all about file I/O and Windows being "broken" in this regard is obsolete. Windows NT fixed a lot of this. &#x2013;source: [A layman's explanation for "Everything is a file" — what differs from Windows&#x2026;](https://unix.stackexchange.com/questions/141016/a-laymans-explanation-for-everything-is-a-file-what-differs-from-windows)

*storage* *memory*

-   floppy
-   hd
-   usb
-   ssd
-   nvme
-   etc


# Aside: types of memory

a. RAM - working memory - short term b. ROM


# Aside: compression