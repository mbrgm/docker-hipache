# ToDo

TODO: Add description

TODO: Add usage instructions

TODO: Add license


# Table of contents

- [Configuration](#configuration)
  - [Available configuration parameters](#available-configuration-parameters)


# Configuration

## Available configuration parameters

- **HIPACHE_HTTP_PORT**: The port on which hipache listens for incoming http 
  connections. Defaults to 80.
- **HIPACHE_HTTPS_PORT**: The port on which hipache listens for incoming https
  connections. Defaults to 443.
- **HIPACHE_NUM_WORKERS**: The number of workers to be spawned. Must be at 
  least 1. Defaults to 10.
- **HIPACHE_MAX_SOCKETS**: The maximum number of sockets which can be opened on
  each backend (per worker). Defaults to 100.
- **HIPACHE_DEAD_BACKEND_TTL**: The number of seconds a backend is flagged as
  'dead' before retrying to proxy another request to it. Defaults to 30.
- **HIPACHE_TCP_TIMEOUT**: The TCP timeout for proxied requests to backends.
  Defaults to 30.
- **HIPACHE_RETRY_ON_ERROR**: Maximum number of retries for a request. Defaults
  to 3.
- **HIPACHE_DEAD_BACKEND_ON_500**: Consider HTTP status code 500 (Internal
  Server Error) as critical and mark the backend as dead if active health
  checks are running. Defaults to true.
- **HIPACHE_HTTP_KEEP_ALIVE**: Keep the connection open after a request.
  Defaults to false.
- **REDIS_HOST**: The hostname of the redis server. Must be specified if no
  redis container is linked.
- **REDIS_PORT**: The connection port of the redis server. Defaults to 6379.
