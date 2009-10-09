# vim: fileencoding=UTF-8 ft=ruby syn=ruby ts=2 sw=2 ai eol et si

# Copyright (c) 2009 Jörg W Mittag <mailto:JoergWMittag+Link-List@GoogleMail.Com>
# This code is licensed under the terms of the MIT License (see LICENSE.rdoc)

require 'cgi'
require 'uri'

module Linklist
  class TextParser
    def parse(uris_text)
      uris_text.lines.inject({}) { |uris, uri|
        uris[CGI.escapeHTML(uri.chomp)] = URI.escape(uri.chomp)
        uris
      }
    end
  end
end
