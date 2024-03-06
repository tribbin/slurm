from almalinux:8

# Epel repository
RUN dnf -y install epel-release

RUN dnf config-manager --set-enabled powertools

ENV DEBIAN_FRONTEND noninteractive
RUN dnf -y update

# Management tools
RUN dnf -y install man vim less

# Slurm deps
RUN dnf -y install slurm slurm-slurmd slurm-slurmctld

# Toolset
RUN dnf -y install netcdf

# Python base
RUN dnf -y install python3-pip

# Apptainer base
RUN dnf -y install apptainer

RUN dnf -y install sudo

RUN cd /etc/munge/ && create-munge-key

WORKDIR /share
