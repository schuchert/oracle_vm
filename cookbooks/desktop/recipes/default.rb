execute "desktop_install" do
  command "sudo yes | yum groupinstall 'X Window System' 'GNOME'"
  action :run
end
