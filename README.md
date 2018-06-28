This repo is to provide a simple reproducible example of where Puma output is
showing when system tests are being run per the discussion at:

https://github.com/rspec/rspec-rails/issues/1897

This repo was created as follows:

Verify We are On the Latest Ruby/Rails
======================================

```
$ ruby -v
ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin17]

$ rails -v
Rails 5.2.0
```

Generate new App
================

```
rails new rspec_system_puma_output
cd rspec_system_puma_output
rake db:migrate # To avoid complaint about no schema.rb file
```

Add RSpec
=========

Insert into the development/test group in the Gemfile:

```
gem 'rspec-rails'
```

Run:

```
bundle install
rails generate rspec:install
```

Verify we are on the latest rspec-rails:

```
$ rspec -v
RSpec 3.7
  - rspec-core 3.7.1
  - rspec-expectations 3.7.0
  - rspec-mocks 3.7.0
  - rspec-rails 3.7.2
  - rspec-support 3.7.1
```

Create Example Code and Tests
=============================

See files:

* app/controllers/hello_world_controller.rb
* spec/system/hello_world_spec.rb

Run Tests
=========

```
$ bundle exec rspec
Capybara starting Puma...
* Version 3.11.4 , codename: Love Song
* Min threads: 0, max threads: 4
* Listening on tcp://127.0.0.1:52040
.

Finished in 1.98 seconds (files took 2.05 seconds to load)
1 example, 0 failures
```

As you can see the tests pass but we get the Puma output when the server is
booted. If we add the following to our `spec/rails_helper.rb` file (in the file
but current commented out):

```
require 'action_dispatch/system_testing/server'
ActionDispatch::SystemTesting::Server.silence_puma = true
```

Now run again:

```
$ bundle exec rspec
.

Finished in 1.72 seconds (files took 1.73 seconds to load)
1 example, 0 failures
```
