require 'sinatra'
require 'rack/esi'

class Application < Sinatra::Base
  use Rack::Esi

  get '/' do
    %{<html>
      <head>
        <title>Rack::Esi</title>
      </head>
      <body>
        <p>Edge Side Includes</p>
        <esi:include src="http://localhost:8000/no-esi-include" />
        <esi:include src="http://localhost:80/esi-include" />
      </body>
    </html>}
  end

  get '/esi-include' do
    "Content from esi-include"
  end
end