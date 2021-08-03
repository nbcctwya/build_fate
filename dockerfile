FROM condaforge/miniforge3:4.10.3-4

ENV FATE_VERSION 1.5.2
RUN conda info

RUN git clone -b ray-${FATE_VERSION} --depth 1 https://github.com/FederatedAI/FATE.git \
    && cd ray && bazel build //:ray_pkg && cd .. \
    && cd ray/dashboard/client && npm install && npm run build && cd ../../.. \
    && conda install numpy aiohttp gpustat && conda clean --all --yes \
    && pip install py_spy aioredis \
    && cd ray/python && python setup.py install && pip cache purge && cd ../.. \
    && rm -rf ray

CMD  ["/bin/sh"]
