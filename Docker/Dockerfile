FROM openanalytics/r-base:3.6.1

LABEL maintainer "jimyung park cory66421@gmail.com>"

# system libraries of general use


RUN apt-get update && \
    apt-get install -y openjdk-8-jdk
RUN mv /usr/lib/jvm/java-8-openjdk-amd64 /usr/lib/jvm/default-java
RUN R -e "install.packages('rJava', dependencies = TRUE, repos='https://cran.rstudio.com/')"

RUN apt-get update
RUN apt-get install -y \
	build-essential \ 
	libcurl4-gnutls-dev \
	libxml2-dev libssl-dev \
	libgmp3-dev \
	libgsl0-dev \
	libv8-dev \
	libmpfr-dev
	

RUN R CMD javareconf


## Install R packages
RUN mkdir -p /opt/software/setup/R
COPY install_packages.R /opt/software/setup/R/
RUN Rscript /opt/software/setup/R/install_packages.R

# copy the app to the image
RUN mkdir -p /root/SOCRATex/key
COPY key /root/SOCRATex/key

# install main Package
RUN R -e "devtools::install_github('abmi/RTROD_SOCRATex',ref='develop')"


RUN rm /usr/lib/R/etc/Rprofile.site
RUN echo "local({ options(shiny.port = 3838, shiny.host = '0.0.0.0') })" >> /usr/lib/R/etc/Rprofile.site

EXPOSE 3838

CMD ["R", "-e", "SOCRATex::SOCRATex()"]