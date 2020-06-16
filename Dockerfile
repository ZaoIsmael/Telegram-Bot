FROM elixir:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /app
WORKDIR /app

# Install hex
RUN mix local.hex --force

# Install rebar
RUN mix local.rebar --force

# Install the Phoenix framework itself
RUN mix archive.install hex phx_new 1.5.1

# Install NodeJS and the NPM
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential

RUN npm install npm@latest -g

# Suggested https://hexdocs.pm/phoenix/installation.html
RUN apt-get update && apt-get install -y \
    inotify-tools \
    && rm -rf /var/lib/apt/lists/*
