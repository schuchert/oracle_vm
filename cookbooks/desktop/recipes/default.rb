execute "desktop_install" do
  command "yes | yum -y groupinstall 'X Window System' 'Desktop' 'Fonts' 'General Purpose Desktop'"
  action :run
end
