ark "webstorm" do
  url "http://download-cf.jetbrains.com/webstorm/WebStorm-8.0.5.tar.gz"
  path "/usr/local/bin/"
  owner "vagrant"
  group "vagrant"
  action :put
end

cookbook_file "webstorm.desktop" do
  path '/usr/share/applications/webstorm.desktop'
end
