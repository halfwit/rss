Small binaries to fetch and view RSS feeds

This expects a file in "$XDG\_DATA\_HOME" (usually ~/.local/share on most Linux systems) named feedurls, with the following format

```sh
https://myfeed.atom
https://someotherfeed.rss
```

When updatefeed is ran, it will result in a directory being created in "$XDG\_DATA\_HOME"/rss, such as follows.

```sh
tree "$XDG_DATA_HOME"/rss
 | myfeed\ of\ awesomeness
 | - unread
 | - - some unread title
 | - - some other unread title
 | - read
 | - - all of our read titles
 | some\ other\ feed
 | ...
 
 cat "$XDG_DATA_HOME/rss/myfeed of awesomeness/unread/some unread title"
 $ https://myfeed.com/some_unread_title.html
 ```

The title will be pulled from the site, and curated slightly so it works with Linux directory restrictions.

rss\_dmenu is a small script that can list and plumb feeds created with updatefeeds. You will be presented with all feeds with new content on starting, as well as the ability to list old posts. 