cookbook_file "inittab" do
  path "/etc/inittab"
  mode "0644"
  action :create
end
