FROM emscripten/emsdk:2.0.26
RUN apt-get update && apt-get install -qqy autoconf autopoint libtool-bin pkg-config
WORKDIR /src
ENV EM_CACHE /src/deps/.emcache
CMD ["sh", "-c", "emmake make -j`nproc`"]
