#
# vim: set ft=ruby:
#

chef_api "https://cookbooks.mkd2.ktc", node_name: "cookbook", client_key: ".cookbook.pem"
site :opscode
metadata

cookbook 'chef-client', github: 'spheromak/chef-client', branch: 'cron_flock'
cookbook 'timezone', github: 'secondmarket-cookbooks/timezone'

group :integration do
  cookbook 'badhosts_test', path: 'test/cookbooks/badhosts_test'
  cookbook 'ktc-etcd', '>= 1.1.18'
  cookbook 'ktc-sensu'
  cookbook 'ktc-testing'
end
