class HelloWorldController < ApplicationController
  def show
    render html: 'Hello World'
  end
end
