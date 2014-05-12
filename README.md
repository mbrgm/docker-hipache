# ToDo

TODO: Add description

TODO: Add usage instructions

TODO: Add license


# Table of contents

- [Configuration](#configuration)
  - [Available configuration parameters](#available-configuration-parameters)


# Configuration

## Available configuration parameters

- __HIPACHE_HTTP_PORT__: The port on which hipache listens for incoming http 
  connections. Defaults to 80.

- __HIPACHE_HTTPS_PORT__: The port on which hipache listens for incoming https
  connections. Defaults to 443.

- __HIPACHE_NUM_WORKERS__: The number of workers to be spawned. Must be at 
  least 1. Defaults to 10.

- __HIPACHE_MAX_SOCKETS__: The maximum number of sockets which can be opened on
  each backend (per worker). Defaults to 100.

- __HIPACHE_DEAD_BACKEND_TTL__: The number of seconds a backend is flagged as
  'dead' before retrying to proxy another request to it. Defaults to 30.

- __HIPACHE_TCP_TIMEOUT__: The TCP timeout for proxied requests to backends.
  Defaults to 30.

- __HIPACHE_RETRY_ON_ERROR__: Maximum number of retries for a request. Defaults
  to 3.

- __HIPACHE_DEAD_BACKEND_ON_500__: Consider HTTP status code 500 (Internal
  Server Error) as critical and mark the backend as dead if active health
  checks are running. Defaults to true.

- __HIPACHE_HTTP_KEEP_ALIVE__: Keep the connection open after a request.
  Defaults to false.

- __REDIS_HOST__: The hostname of the redis server. Must be specified if no
  redis container is linked.

- __REDIS_PORT__: The connection port of the redis server. Defaults to 6379.
