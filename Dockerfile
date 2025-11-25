# Use the specific minimal-notebook image
FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Copy lock file into the container
COPY conda-linux-64.lock /tmp/conda-linux-64.lock

# Install packages from lock file
RUN mamba install --yes --file /tmp/conda-linux-64.lock \
    && mamba clean --all --yes
