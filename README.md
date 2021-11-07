# H2.rb

One-way SHA256 function with salt.

## Installation

```sh
gem install h2
```

## Configuration

**H2** reads its configuration from the `~/.h2` file at initialization.
This file, which should be readable by its owner only, have the salt value.

## Examples

Generate a digest from the system:

```sh
echo "my-secret" > ~/.h2
```

```sh
h2 p@ssw0rd
```

> f8ab042dd6f0ee03347b6950b270ac91fd5a95b117825f4cb5782b9af62421a3

```sh
h2 シークレット
```

> 35a36f9c6246596cf353d0e545244a650404475ffdfe589b5ebae084c80159b5

Same operations, with Ruby:

```ruby
require "h2"

builder = H2::Builder.new("my-secret")

builder.call("p@ssw0rd") # => "f8ab042dd6f0ee03347b6950b270ac91fd5a95b117825f4cb5782b9af62421a3"
builder.call("シークレット") # => "35a36f9c6246596cf353d0e545244a650404475ffdfe589b5ebae084c80159b5"
```
