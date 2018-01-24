FROM andrewosh/binder-base

USER root

# Add R dependencies
RUN lsb_release -a
RUN apt-get update
RUN apt-get install -y r-base=3.1.1 libzmq3-dev libcurl4-gnutls-dev

COPY install-irkernel.R /home/install-irkernel.R

RUN R --no-save < /home/install-irkernel.R
USER main
