# Hashash
[![Build Status](https://travis-ci.org/kimsuelim/hashash.svg?branch=master)](https://travis-ci.org/kimsuelim/hashash)
[![Coverage Status](https://coveralls.io/repos/github/kimsuelim/hashash/badge.svg?branch=master)](https://coveralls.io/github/kimsuelim/hashash?branch=master)
[![Gem Version](https://badge.fury.io/rb/hashash.svg)](https://badge.fury.io/rb/hashash)

Hashash is a collection of classes and mixins that make it more useful when working with JSON APIs.
Convert underscore to camelcase, convert camelcase to underscore, convert hashes to the objects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "hashash"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hashash

## Underscore keys when working with JSON APIs
### underscore_keys
converts all keys in a hash to underscore.

```ruby
hash = { firstName: "Surim", lastName: "Kim" }
hash.underscore_keys
# => {:first_name=>"Surim", :last_name=>"Kim"} 
```

### deep_underscore_keys
recursively converts all keys in a hash to underscore.

```ruby
hash = { person: { firstName: "Surim", lastName: "Kim" } }
hash.deep_underscore_keys
# => {:person=>{:first_name=>"Surim", :last_name=>"Kim"}}
```

## Camelize keys when working with JSON APIs

### camelize_keys
converts all keys in a hash to camelcase.

#### lowerCamelCase
```ruby
hash = { first_name: "Surim", last_name: "Kim" }
hash.camelize_keys
# => {:firstName=>"Surim", :lastName=>"Kim"}
```

#### UpperCamelCase
```ruby
hash = { first_name: "Surim", last_name: "Kim" }
hash.camelize_keys(:upper)
# => {:FirstName=>"Surim", :LastName=>"Kim"}
```

### deep_camelize_keys
recursively converts all keys in a hash to camelcase.

#### lowerCamelCase
```ruby
hash = { person: { first_name: "Surim", last_name: "Kim" } }
hash.deep_camelize_keys
# => {:person=>{:firstName=>"Surim", :lastName=>"Kim"}}
```

#### UpperCamelCase
```ruby
hash = { person: { first_name: "Surim", last_name: "Kim" } }
hash.deep_camelize_keys(:upper)
# => {:Person=>{:FirstName=>"Surim", :LastName=>"Kim"}}
```

## Converts hashes to the objects.
### objectified_hash
```ruby
hash = { person: { first_name: "Surim", last_name: "Kim" } }
objectified_hash = Hashash::ObjectifiedHash.new(hash)
# => #<Hashash::ObjectifiedHash:70188137990700 {hash: {:person=>{:first_name=>"Surim", :last_name=>"Kim"}}}

puts objectified_hash.person
# => #<Hashash::ObjectifiedHash:70188137990400 {hash: {:first_name=>"Surim", :last_name=>"Kim"}}>

puts objectified_hash.person.first_name
# => "Surim"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kimsuelim/hashash. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hashash project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/kimsuelim/hashash/blob/master/CODE_OF_CONDUCT.md).
