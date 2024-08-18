FROM amazonlinux:latest
RUN yum install httpd -y
LABEL maintainer=sudhanshu
COPY index.html .
EXPOSE 80
ENV x=100
#CMD ["cal"]
ENTRYPOINT ["httpd"]
CMD ["-D", "FOREGROUND"]