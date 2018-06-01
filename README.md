# docker-cifs
Docker cifs image to mount and sync smb/samba shares 

This image could be used as base image to mount a smb share.

## How to use
Run with `--cap-add SYS_ADMIN` and `--cap-add DAC_READ_SEARCH` to allow mounting smb:
```bash
docker run --rm -ti --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH usr42/cifs
```

To mount a smb share run following command inside the image:
```bash
mount -t cifs //<IP>/<SHARE> /mnt/ -o user=<USER>,password=<PASSWORD>
```

## Use as base image

You can use this image as base image. The new image could add a cifs mount to /etc/fstab with with user option. E.g.:
```
//192.168.2.2/smb-share /mnt cifs username=user,password=123456,rw,user,uid=1000,gid=1000 0 0"
```

See the [Dockerfile in the example folder](example/Dockerfile) for more information.
