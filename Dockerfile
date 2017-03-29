FROM kalilinux/kali-linux-docker
LABEL org.freenas.interactive="true" \
      org.freenas.command="/bin/sh" \
      org.freenas.version="1" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="2222:22/tcp" \
      org.freenas.volumes="[				\
          {						\
              \"name\": \"/root\",		\
              \"descr\": \"Presistance directory for roots home folder\"	\
          }						\
       ]"
