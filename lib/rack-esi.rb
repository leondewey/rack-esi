require 'rack-plastic'
require 'net/http'

module Rack
  class Esi < Plastic

    def change_html_string(html)
      html.gsub /(<esi:include src="([^"]+)" \/>)/ do |string|
        ::Net::HTTP.get URI.parse(string.match(/src="([^"]+)"/)[1])
      end
    end

  end
end