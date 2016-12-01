# codewars-relay

Simple server for calling codewars api with an "Access-Control-Allow-Origin" header for your domain.

## Installation
```
git clone https://github.com/10XL/kemal-codewars-relay
cd kemal-codewars-relay && shards install
crystal run src/codewars-relay.cr
```

## Heroku
Use [heroku-buildpack-crystal](https://github.com/crystal-lang/heroku-buildpack-crystal) OR [![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Make sure to set a Config Variable "YOUR_DOMAIN".

## Usage
Two endpoints are supported:
* [`users/:id_or_username`](https://dev.codewars.com/#get-user)
* [`code-challenges/:id_or_slug`](https://dev.codewars.com/#get-code-challenge)


## Contributing

1. Fork it ( https://github.com/10XL/kemal-codewars-relay/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [10XL](https://github.com/10XL)
