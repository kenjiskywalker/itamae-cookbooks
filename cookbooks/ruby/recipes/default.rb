git "/home/#{node["app-user"]}/xbuild" do
  repository "https://github.com/tagomoris/xbuild.git"
  user node["app-user"]
end

execute "ruby install" do
  command "/home/#{node["app-user"]}/xbuild/ruby-install 2.2.1 /home/#{node["app-user"]}/local/ruby-2.2"
  cwd "/tmp"
end


