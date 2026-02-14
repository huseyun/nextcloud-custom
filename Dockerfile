FROM nextcloud:32

RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    ghostscript \
    imagemagick \
    libmagickcore-6.q16-6-extra \
    libimage-exiftool-perl \
    procps \
    smbclient \
    nano \
    unzip \
    libbz2-dev \
    libgmp-dev \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install bz2 gmp
