# vim: fileencoding=UTF-8 ft=ruby syn=ruby ts=2 sw=2 ai eol et si

# Copyright (c) 2009 Jörg W Mittag <mailto:JoergWMittag+Link-List@GoogleMail.Com>
# This code is licensed under the terms of the MIT License (see LICENSE.rdoc)

module Linklist
  class HtmlFormatter
    def format(uris = {}, title = 'URIs')
      output =  <<-"HERE"
<!DOCTYPE html>
<html xmlns='http://www.w3.org/1999/xhtml' xml:lang='de' lang='de'>
	<head>
		<meta http-equiv='Content-type'     content='text/html; charset=UTF-8' />
		<title>#{title}</title>
		<meta http-equiv='content-language' content='de' />
	</head>
	<body>
		<section>
			<header>
				<h1>#{title}</h1>
			</header>
			<ul>
      HERE
      uris.each do |title, target|
        output << "\t"*4 << "<li>\n"
        output << "\t"*5 << "<a target='_blank' \n"
        output << "\t"*6 << "href='#{target}'>\n"
        output << "\t"*6 << title << "\n"
        output << "\t"*4 << "</li>\n"
      end
      return output << <<-'HERE'
			</ul>
		</section>
	</body>
</html>
    HERE
    end
  end
end
