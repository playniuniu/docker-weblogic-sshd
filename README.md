# Oracle Weblogic with sshd

### Description

This docker image use Weblogic 12.2.1.2 with CentOS base system

This docker image already configured base_domain and sshd


**Note:**

It use **root** user to start supervisord, weblogic and sshd

### RUN

You must have ssh-keypair (id_rsa & id_rsa.pub) and use the command below:

```bash
docker run -d -p 2222:22 -p 8001:8001 -p 9001:9001 --name=wlsadmin \
-v /YOUR_SSH_KEY:/sshkey playniuniu/weblogic-sshd:12.2.1.2
```

- Port 22: ssh port, use key, not permit password login
- Port 8001: Weblogic Admin Console ( weblogic, welcome1 )
- Port 9001: Supervisord Console ( weblogic, welcome1 )

### Other

For weblogic image without sshd, use [playniuniu/weblogic-domain](https://hub.docker.com/r/playniuniu/weblogic-domain/)
