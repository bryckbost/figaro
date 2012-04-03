When "I add figaro as a dependency" do
  append_to_file("Gemfile", %(gem "figaro", path: "#{ROOT}"\n))
end

When "I add heroku as a dependency" do
  append_to_file("Gemfile", %(gem "heroku"\n))
end

When "I bundle" do
  run_simple("bundle install")
end
