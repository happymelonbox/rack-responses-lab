

class Application
    def call(env)
        resp = Rack::Response.new
#If it is before noon, greet with "Good Morning!"
#If it is after noon, greet with "Good Afternoon!"
#Time.now.to_i
        resp.write Time.now.hour < 12 ? "Good Morning!" : "Good Afternoon!"
        resp.finish
    end
end
