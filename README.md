# How to use this image

```console
$ docker run --name webdav -p 80:80 -v /tmp/webdav:/media -d jozuenoon/webdav
```
This will start a webdav server listening on the default port of 80.
Then access it via `http://localhost:80` or `http://host:80` in a browser.

This server will serve files located in your /media folder

Image's supported volumes:
- `/media` - served directory

To restrict access to only authorized users, you can define two environment variables: `USERNAME` and `PASSWORD`
```console
$ docker run --name webdav -p 80:80 -v /tmp/webdav:/media -e USERNAME=webdav -e PASSWORD=webdav -d jozuenoon/webdav
```
