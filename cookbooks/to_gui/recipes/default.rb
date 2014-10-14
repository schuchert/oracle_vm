execute "desktop_install" do
  command "sudo systemctl enable graphical.target --force"
  action :run
end
