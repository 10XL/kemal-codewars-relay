require "kemal"

Default_Domain = "http://localhost:3001"
BaseUrl = "http://www.codewars.com/api/v1/"


def enable_cors(res)
  res.headers.add "Access-Control-Allow-Origin", (ENV["YOUR_DOMAIN"] ||= Default_Domain)
end


get "/users/:username" do |env|
  res = HTTP::Client.get(BaseUrl + "users/" + env.params.url["username"])
  enable_cors(env.response)
  res.body.to_json
end

get "/code-challenges/:id_or_slug" do |env|
  res = HTTP::Client.get(BaseUrl + "code-challenges/" + env.params.url["username"])
  enable_cors(env.response)
  res.body.to_json
end
Kemal.run
