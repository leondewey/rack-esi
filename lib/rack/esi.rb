require 'rack-plastic'
require 'net/http'

module Rack
  class Esi < Plastic

    def change_html_string(html)
      html.gsub /(<esi:include src="([^"]+)" \/>)/ do |string|

        url = string.match(/src="([^"]+)"/)[1]

        begin  
          ::Net::HTTP.get URI.parse(url)
        rescue Exception => e  
          "#{url} -> #{e.message}"
        end

      end
    end

  end
end