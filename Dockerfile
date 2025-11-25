FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Copy your environment file into the container
COPY environment.yml /tmp/environment.yml

# Install environment using mamba
RUN mamba env update -n base -f /tmp/environment.yml && \
    mamba clean --all --yes
