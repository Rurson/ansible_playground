FROM ubuntu:18.04 as anisble
RUN export DEBIAN_FRONTEND=noninteractive
RUN echo "===> Adding Ansible's PPA..."
RUN apt update
RUN apt install -y software-properties-common
RUN apt-add-repository -y --update ppa:ansible/ansible
RUN echo "===> Installing Ansible..."
RUN apt install -y ansible
RUN echo "===> Installing handy tools (not absolutely required)..."
RUN apt-get install -y sshpass openssh-client
RUN echo "===> Removing Ansible PPA..."
RUN rm -rf /var/lib/apt/lists/*  /etc/apt/sources.list.d/ansible.list \
RUN echo "===> Adding hosts for convenience..."
RUN echo 'localhost' > /etc/ansible/hosts

FROM anisble as base
RUN export DEBIAN_FRONTEND=dialog
COPY . /code
WORKDIR /code
