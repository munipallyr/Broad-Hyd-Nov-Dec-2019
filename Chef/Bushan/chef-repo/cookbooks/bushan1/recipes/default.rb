#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserve
include_recipe '::service'
file 'index.html' do
  content                    "<h1>Welcome to DevOpsSchool Chef Class<h1>"
end

package 'httpd'

bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end