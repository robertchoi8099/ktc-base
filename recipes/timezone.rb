# Encoding: UTF-8
#
# we do this in base for now, if you're in here to add functionality
# bust this into a timezone app cook
#
# - Jesse
#

include_recipe 'timezone'

# NOTE: our java stacks want this, I think it should probably go there (java
# cook) instead of here.
file  '/etc/profile.d/tz.sh' do
  mode 0644
  content <<EOF
# This file was generated by chef in the base::timezone recipe.
# Any changes made here will be overwritten.
#
export TZ='#{node[:tz]}'
EOF
end
