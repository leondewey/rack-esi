require 'test/spec'
require 'rack/mock'
require 'rack-esi'

context "Rack::Esi" do

  context "when a page with ESI tags is given" do
    specify "should insert script tag" do
      test_body = '<html><body>Hello World</body></html>'
      app = lambda { |env| [200, {'Content-Type' => 'text/html'}, [test_body]] }
      request = Rack::MockRequest.env_for("/test.html")
      body = Rack::Modernizr.new(app).call(request).last
      body[0].should eql(test_body)
    end
  end

    context "when a page with ESI tags is given" do
    specify "should insert script tag" do
      test_body = '<html><body><esi:include src="http://example.com/example.html" /></body></html>'
      app = lambda { |env| [200, {'Content-Type' => 'text/html'}, [test_body]] }
      request = Rack::MockRequest.env_for("/test.html")
      body = Rack::Modernizr.new(app).call(request).last
      body[0].should eql('<html><body>example text</body></html>')
    end
  end


end