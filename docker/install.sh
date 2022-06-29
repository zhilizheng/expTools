#!/bin/bash -
# the script install the software needed

ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
apt-get update -qq && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata wget software-properties-common dirmngr

wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(/usr/bin/lsb_release -cs)-cran40/" -y

apt-get update -qq && apt-get upgrade -y && apt-get install --no-install-recommends vim-tiny git curl libssl-dev libcurl4-openssl-dev libssh2-1-dev build-essential gfortran file libxml2-dev zlib1g-dev libopenblas-base libatlas3-base liblapack3 libopenblas-dev liblapack-dev r-base-core python3-pip -y && apt-get clean

pip3 install numpy scipy matplotlib pandas radian ipython
pip3 cache purge
Rscript -e "install.packages(c('devtools', 'tidyverse', 'ggplot2', 'data.table', 'stringi', 'Rcpp'))"

