require "rails"
require "yaml"

namespace :figaro do
  desc "Configure your application on Heroku"
  task :heroku => :environment do
    path = Rails.root.join("config/application.yml")
    variables = YAML.load_file(path) if File.exist?(path)
    pairs = variables.map{|k,v| "#{k}=#{v}"}.join(" ")
    `heroku config:add #{pairs}`
  end
end