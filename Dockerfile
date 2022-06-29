FROM ubuntu:xenial
MAINTAINER Gianluca Roveda & Daniele De Martini <giangiangian@gmail.com, diemme89@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    biber \
    latexmk \
    texlive-full \
    inkscape \
    make \
	dia \
	xfig \
	imagemagick \
    && apt-get install -qy python python-pip \
    && pip install pygments \
    && apt-get clean
	
