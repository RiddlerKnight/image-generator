FROM alpine:latest
ARG magic_number=0
ENV MAGIC=$magic_number
RUN echo "magicIs: $magic_number"
ENTRYPOINT [ "echo", "hello_world_$MAGIC", "&&", "sleep 99999" ]
