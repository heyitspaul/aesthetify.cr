# aesthetify

[![GitHub release](https://img.shields.io/github/release/TheAssailant/aesthetify.cr.svg)](https://github.com/TheAssailant/aesthetify.cr/releases)
[![Build Status](https://travis-ci.org/TheAssailant/aesthetify.cr.svg?branch=master)](https://travis-ci.org/TheAssailant/aesthetify.cr)

aesthetify.cr is a Crystal port of the Ruby gem aesthetify, which makes it
simple to take any string and transform it for the ＡＥＳＴＨＥＴＩＣ. In
addition, it also makes creating Ｆｕｌｌｗｉｄｔｈ text just as simple.

aesthetify.cr comes with regular methods just like its Ruby sibling, however it
omits the bang versions as there isn't support for `String#replace` in Crystal.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  aesthetify:
    github: TheAssailant/aesthetify.cr
```

## Usage

```crystal
require "aesthetify"
```

Using String#aesthetify:
```crystal
text = "vaporwave".aesthetify
puts text
#=> ＶＡＰＯＲＷＡＶＥ
```

Using String#fullwidth:
```crystal
text = "long boy".fullwidth
puts text
#=> ｌｏｎｇ ｂｏｙ
```

Using concatenation:
```crystal
text = "This is the " + "sad boys ".aesthetify + "club"
puts text
#=> This is the ＳＡＤ ＢＯＹＳ club
```

## Contributing

1. Fork it ( https://github.com/TheAssailant/aesthetify.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [TheAssailant](https://github.com/TheAssailant)  - creator, maintainer
