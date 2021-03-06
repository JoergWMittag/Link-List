# vim: fileencoding=UTF-8 ft=ruby syn=ruby ts=2 sw=2 ai eol et si

# Copyright (c) 2009 Jörg W Mittag <mailto:JoergWMittag+Link-List@GoogleMail.Com>
# This code is licensed under the terms of the MIT License (see LICENSE.rdoc)

require 'rake'
require 'metric_fu'

MetricFu::Configuration.run do |config|
  config.rcov[:rcov_opts].delete_if { |option| option.include? 'rails' }
end
