# README

This is a sample Rails app that shows "Capybara starting Puma..." is still written to the RSpec output.  This app uses:

1. Ruby 2.5.1
1. Rails 5.2.0
1. rspec-rails 3.7.2
1. capybara 3.2.1

### Instructions

1. Install Ruby 2.5.1
1. Clone the app
1. `cd` into the project root and run `bundle`
1. Run the tests `bundle exec rspec`

The output should show

```
Capybara starting Puma...
* Version 3.11.4 , codename: Love Song
* Min threads: 0, max threads: 4
* Listening on tcp://127.0.0.1:37067
```

If you open the `spec/features/pages_spec.rb` and remove the `js: true`, "Capybara starting Puma..." won't appear when RSpec is executed.
