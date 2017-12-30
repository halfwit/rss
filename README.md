Small binaries to fetch and view RSS feeds

This expects a file in "$XDG_DATA_HOME" (usually ~/.local/share on most Linux systems) named feedurls, with the following format

```sh
url = https://myfeed.atom
url = https://someotherfeed.rss
```

When updatefeed is ran, it will result in a directory being created in "$XDG_DATA_HOME"/rss, such as follows.

```sh
tree "$XDG_DATA_HOME"/rss
 | myfeed\ of\ awesomeness
 | - unread
 | - - some unread title
 | - - some other unread title
 | - read
 | - - all of our read titles
 
 cat "$XDG_DATA_HOME/rss/myfeed of awesomeness/unread/some unread title"
 $ https://myfeed.com/some_unread_title.html
 ```
