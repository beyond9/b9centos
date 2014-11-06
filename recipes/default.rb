%w{yum-cron nano vim zip unzip mc curl mod_ssl gawk cachefilesd}.each do |a_package|
  package a_package
end

file "/etc/default/cachefilesd" do
  content <<-EOS
RUN=yes
  EOS
  action :create
  mode 0755
end