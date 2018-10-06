# myapp.rb
require 'sinatra'

class Stream
  def each
    100.times do |i|
      yield "#{i}\n"
    end
  end
end

get('/') { Stream.new }

get('/aaa/') do
  @name = 'foooooooooooooo'
  erb(:index, {:name2 => "baaaaaaaaar"})
  # erb 'Hello <%= @name %>'
end

# get '/' do
#   'Hello world!'
# end

get '/hello/:name' do |n|
  "Hello #{n}!"
end
