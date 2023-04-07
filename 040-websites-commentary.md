<h1>
  <div align="center">
   <a href="https://fhbarwegen.nl">
      <img src="./img/HTML5_logo_and_wordmark.svg48x48.png"> 
      </br>
      </hr>
    </a>
  </div>
</h1>


# Relative paths and loading css files and imgage files

To load the css file:

-   Starting with "/" returns to the root directory and starts there
-   Starting with "../" moves one directory backwards and starts there
-   Starting with "../../" moves two directories backwards and starts there (and so on&#x2026;)

If constantly exporting (all over the place) files to html, the above does not work.

-   in the file system, e.g. /home/user
-   use symbolic link from directory where page is stored to directory with pool of css files:

```sh
cd /home/fhb/Nextcloud/websites/testsite
ls -la 
```

Now the `symbolic.css` is a [l]ink to /home/fhb/Nextcloud/websites/css-pool/org.