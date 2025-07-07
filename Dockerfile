FROM quay.io/jupyter/base-notebook:x86_64-ubuntu-22.04
ENV DEBIAN_FRONTEND=noninteractive
USER $NB_USER
WORKDIR /home/$NB_USER
COPY . .
RUN pip install -r requirements.txt
CMD [ "jupyter", "lab", "--ip", "0.0.0.0", "--no-browser", "--allow-root" ]
