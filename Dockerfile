from debian

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update

# Management tools
RUN apt-get -y install man vim less

# Slurm deps
RUN apt-get -y install bsd-mailx slurmctld slurmd

# Toolset
RUN apt-get -y --no-install-recommends install netcdf-bin cdo

# Python base
RUN apt-get -y --no-install-recommends install python3-pip

WORKDIR /share
