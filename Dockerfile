from debian

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update

# Management tools
RUN apt-get -y install man vim

# Slurm deps
RUN apt-get -y install bsd-mailx slurmctld slurmd

WORKDIR /share
