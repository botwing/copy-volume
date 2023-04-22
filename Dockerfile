FROM alpine

RUN apk --no-cache add rsync

CMD ["rsync", "-a", "--delete", "--info=progress2", "/from/", "/to"]
