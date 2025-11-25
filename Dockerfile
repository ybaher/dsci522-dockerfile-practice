FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY environment.yml /tmp/environment.yml
RUN mamba env update -n base -f /tmp/environment.yml \
    && mamba clean --all -y -f \
    && fix-permissions "${CONDA_DIR}" \
    && fix-permissions "/home/${NB_USER}"

