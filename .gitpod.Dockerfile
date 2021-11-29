FROM gitpod/workspace-full-vnc

RUN sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
RUN sudo apt-get update && sudo apt-get install -y build-essential
RUN sudo apt-get install gdb 

#RUN echo 'export CC=clang' >> /home/gitpod/.bashrc
RUN echo 'export CC=gcc' >> /home/gitpod/.bashrc

#RUN echo 'export CCX=clang++' >> /home/gitpod/.bashrc
RUN echo 'export CCX=g++' >> /home/gitpod/.bashrc
