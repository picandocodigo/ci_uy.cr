# ci_uy
[![ci_uy.cr](https://github.com/picandocodigo/ci_uy.cr/actions/workflows/ci_uy.yml/badge.svg)](https://github.com/picandocodigo/ci_uy.cr/actions/workflows/ci_uy.yml)

A shard to validate Uruguayan Identity Documents (Cedula de Identidad Uruguaya) - A port of: https://rubygems.org/gems/ci_uy

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     ci_uy:
       github: picandocodigo/ci_uy.cr
   ```

2. Run `shards install`

## Usage

```crystal
require "ci_uy"

CiUY.validate("1.111.111-1")

CiUY.validation_digit("2222222")

CiUY.random
```

It receives a string (or integer) and doesn't care what you use to separate the digits, it gets the numbers from the string and checks the verification digit. So all of these formats are valid: `1.111.111-1`, `1_111_111_1`, `1.111.111/1`.

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/ci_uy/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Fernando Briano](https://github.com/picandocodigo) - creator and maintainer
