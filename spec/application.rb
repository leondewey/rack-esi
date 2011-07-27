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
        <p><esi:include src="http://localhost:8000/no-esi-include" /></p>
        <p><esi:include src="http://esi-include.com" /></p>
      </body>
    </html>}
  end

end