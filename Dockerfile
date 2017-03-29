FROM kalilinux/kali-linux-docker
LABEL org.freenas.interactive="true" \
      org.freenas.version="2" \
      org.freenas.upgradeable="false" \
      org.freenas.port-mappings="2222:22/tcp" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.command="/bin/bash" \
      org.freenas.volumes="[				\
          {						\
              \"name\": \"/root\",		\
              \"descr\": \"Presistance directory for roots home folder\"	\
          }						\
       ]"
