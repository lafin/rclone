### rclone

based on pschmitt/rclone

Rclone is a command line program to sync files and directories to and from

  * Google Drive
  * Amazon S3
  * Openstack Swift / Rackspace cloud files / Memset Memstore
  * Dropbox
  * Google Cloud Storage
  * Amazon Cloud Drive
  * Microsoft One Drive
  * Hubic
  * Backblaze B2
  * Yandex Disk
  * The local filesystem


## Docker

Run it (displays version info):

```bash
$ docker run --rm lafin/rclone:x86_64
```

Interactive configuration:

```bash
mkdir config
$ docker run --rm -it -v $(PWD)/config:/config lafin/rclone:x86_64 config
```
