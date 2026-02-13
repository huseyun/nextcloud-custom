FROM nextcloud:28

# Gerekli paketleri kur ve temizle
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    imagemagick \
    libimage-exiftool-perl \
    procps \
    && rm -rf /var/lib/apt/lists/*
