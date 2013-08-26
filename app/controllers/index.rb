get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  @grandma = params[:user_input]
  if @grandma == @grandma.upcase
    @grandma = "Why are you yelling '" + @grandma + "'?"
  else
    @grandma = "Speak up, kiddo!"
  end
  erb :index
end

