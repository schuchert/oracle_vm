execute "desktop_install" do
  command "yes | yum groupinstall 'X Window System' 'GNOME'"
  action :run
end
