class Application
 
  def call(env)
    resp = Rack::Response.new
    time = Time.now.hour 
   # time <= 12 ? resp.write "Hello, World" : resp.write "Hello, World" 
    if time <= 12
        resp.write "Good Morning!"
    else
        resp.write "Good Afternoon!"
    end
    
    resp.finish
  end
 
end