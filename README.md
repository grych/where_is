# WhereIs

Simple HTTP server with only one webservice -> convert IP to the country code.

## API

### /{IP}/country

IP is a string with the requested IPv4.

Returns:
  2-character string with the country code, with http 200
  "invalid request" with http 400

### Examples

    $ curl http://localhost:6677/51.254.116.38/country
    FR
    $ curl http://localhost:6677/
    invalid request%

### Installation

Requires Erlang (OTP v21), Elixir (1.7) and OpenSSL (1.0)

    $ mix deps.get
    $ mix compile

### Starting

    $ ./start.sh

### Stopping

    $ ./stop.sh

## Troubleshooting

    $ ps -ef|grep beam
