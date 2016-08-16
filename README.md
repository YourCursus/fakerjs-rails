# fakerjs-rails

[Faker.js](https://github.com/marak/Faker.js) for Rails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fakerjs-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fakerjs-rails

Add the following to your `app/assets/javascripts/application.js` file:

    //= require faker

## Usage

Then follow the instructions as described on the Faker.js documentation.

## Gem release

In the case you'd like to create a new release when [marak](https://github.com/marak) release a new version of his fakerjs library, you just need to run the following:

```
$ ./make_new_release.sh
Ensuring Docker image zedtux/fakerjs-rails exists ...
Updating library code to version 3.1.0 ...
Downlading Faker.js 3.1.0 ...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 51140  100 51140    0     0   124k      0 --:--:-- --:--:-- --:--:--  124k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  8238  100  8238    0     0  28698      0 --:--:-- --:--:-- --:--:-- 28703
Done!
Committing new version ...
Releasing gem ...
```

## Contributing

1. Fork it ( https://github.com/YourCursus/fakerjs-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
