FROM kalilinux/kali-linux-docker
LABEL org.freenas.interactive="true" \
      org.freenas.version="1.0" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="https" \
      org.freenas.web-ui-port="8443" \
      org.freenas.web-ui-path="manage" \
      org.freenas.command="/bin/sh" \
      org.freenas.port-mappings="2222:22/tcp" \
      org.freenas.volumes="[				\
          {						\
              \"name\": \"/root\",		\
              \"descr\": \"Presistance directory for roots home folder\"	\
          }						\
       ]"
