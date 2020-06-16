# App

Prototipo de bot para telegram

## Installation

Creamos fichero de variable de entorno

```bash
  touch .env
```

Añadimos TOKEN_TG="token_bot" y NAME_BOT="nombre_bot"

```bash
  docker-compose build
```

Instalamos dependencias e iniciamos el bot

```bash
  docker-compose run elixir deps.get
  docker-compose run elixir run --no-halt
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/app](https://hexdocs.pm/app).
