FROM usr42/cifs
RUN adduser -u 1000 -D cifs \
    && echo "//192.168.2.2/smb-share /mnt cifs username=user,password=123456,rw,user,uid=1000,gid=1000 0 0" >> /etc/fstab
USER cifs
CMD mount /mnt && cd /mnt && sh
