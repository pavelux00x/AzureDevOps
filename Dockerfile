FROM php:7.4-fpm

# Install the necessary packages

RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions

RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Get Composer

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set the working directory

WORKDIR /var/www

# Copy the project files

COPY . .

# Install the project dependencies

#create the composer.json file


# Install the project dependencies

# Expose the port

RUN php --version 


EXPOSE 9000

# Start the PHP-FPM server



# Path: docker-compose.yml





