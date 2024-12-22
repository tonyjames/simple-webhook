FROM registry.access.redhat.com/ubi9/python-312:latest

USER 0

ADD src /tmp/src

RUN /usr/bin/fix-permissions /tmp/src

USER 1001

RUN /usr/libexec/s2i/assemble

CMD /usr/libexec/s2i/run
