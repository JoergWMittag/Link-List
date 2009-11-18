# vim: fileencoding=UTF-8 ft=ruby syn=ruby ts=2 sw=2 ai eol et si

# Copyright (c) 2009 Jörg W Mittag <mailto:JoergWMittag+Link-List@GoogleMail.Com>
# This code is licensed under the terms of the MIT License (see LICENSE.rdoc)

module Linklist
  module Projectinfo
    NAME     = 'Linklist'
    VERSION  = '0.0.0a'
    SUMMARY  = 'Convert a text file with URIs into static HTML'
    AUTHORS  = ['Jörg W Mittag']
    EMAIL    = 'JoergWMittag+Link-List@GoogleMail.Com'
    HOMEPAGE = 'http://CodaSet.Com/Joerg-W-Mittag/Link-List/'
    DESCRIPTION = <<-'HERE'
Linklist is just a simple script to convert a text file with one 
URI per line into a static HTML page containing links to those 
URIs.
  HERE

    LICENSE = 'MIT X11 License (see LICENSE.rdoc)'

    DOCFILES = %w[
      LICENSE.rdoc
      README.rdoc
    ]

    SOURCEDIR = 'lib'
    SOURCES = %w[
      linklist.rb
      linklist/html_formatter.rb
      linklist/text_parser.rb
    ]
    SOURCEFILES = SOURCES.map { |f| File.join SOURCEDIR, f }

    EXECUTABLEDIR = 'bin'
    EXECUTABLES = %w[
      linklist
    ]
    EXECUTABLEFILES = EXECUTABLES.map { |f| File.join EXECUTABLEDIR, f }

    RDOCFILES = DOCFILES + EXECUTABLEFILES + SOURCEFILES
    RDOCOPTIONS = %w[--all --charset=UTF-8 --line-numbers --webcvs=http://CodaSet.Com/Joerg-W-Mittag/Link-List/source/master/blob/%s]

    FILELIST = RDOCFILES

    GEMSPEC = Gem::Specification.new do |s|
      s.name = NAME.downcase
      s.summary = SUMMARY
      s.version = Gem::Version.new VERSION
      s.authors = AUTHORS
      s.email = EMAIL
      s.homepage = HOMEPAGE
      s.rubyforge_project = NAME
      s.license = LICENSE
      s.required_ruby_version = '~> 1.9.1'
      s.required_rubygems_version = '~> 1.3.5'
      s.has_rdoc = true
      s.rdoc_options = RDOCOPTIONS
      s.extra_rdoc_files = DOCFILES
      s.files = FILELIST
      s.executables = EXECUTABLES
      s.description = DESCRIPTION
      s.add_development_dependency 'jscruggs-metric_fu', '~> 1.1.5'
      s.add_development_dependency 'rdoc', '~> 2.4.3'
      s.add_development_dependency 'reek', '~> 1.2.4'
      s.add_development_dependency 'roodi', '~> 2.0.1'
    end
  end
end unless defined? Linklist::Projectinfo::GEMSPEC

if __FILE__ == $0
  Gem::manage_gems
  Gem::Builder.new(Linklist::Projectinfo::GEMSPEC).build
end
