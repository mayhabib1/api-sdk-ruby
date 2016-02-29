---
title: Ruby SDK for l10n
layout: api
---

# Ruby SDK

Qordoba’s Ruby SDK offers platform-specific features that make the Qordoba API implementation much simpler. The SDK allows you to integrate our API with your application without worrying about low-level API details. Our Ruby SDK is open-source and can be forked at the link below. Once forked and configured, you will be able to easily integrate our API into your application.

### Get the SDK:

Download the Ruby API SDK from [GitHub](https://github.com/Qordobacode/api-sdk-ruby).

To clone the repo: `git clone git@github.com:Qordobacode/api-sdk-ruby.git`.


### How to configure the SDK:

The SDK code reads configuration values from the `Configuration.rb` file, so you will have to add the following to that file:

`@basic_auth_user_name`: Your Qordoba username to use with basic authentication

`@basic_auth_password`: Your Qordoba password to use with basic authentication


###How to install via RubyGems:

The SDK code relies on the Ruby gem [Unirest 1.1.2](http://unirest.io/ruby.html). The reference to this gem is already added in the gemspec. 

You don't need the source code unless you want to modify the gem. If you just want to use the Qordoba Ruby bindings, you should run:

```ruby
	gem install ./qordoba-1.0.gem
```

If you want to build the gem from source:
```ruby
	gem build qordoba.gemspec
```

If you are using a bundler, you can add this line to your Gemfile:
```ruby
	gem 'qordoba', '~> 1.0'
```

###How to use the library:

Now, create an instance and use the instance methods, as in the following:

```ruby
	ctl = Qordoba::QordobaController.new params
	ctl.post_projects params
```



### Bug reports
Have a bug? Please create an issue [here](https://github.com/Qordobacode/api-sdk-ruby/issues) on GitHub! 


### License
The MIT License (MIT)

