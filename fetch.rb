#!/usr/bin/ruby

sources = %w{ git@github.com:h4ck3rm1k3/application.git
git@github.com:h4ck3rm1k3/application_git.git
git@github.com:h4ck3rm1k3/application_python.git
git@github.com:h4ck3rm1k3/apt.git
git@github.com:h4ck3rm1k3/chef-sugar.git
git@github.com:h4ck3rm1k3/database.git
git@github.com:h4ck3rm1k3/openssl.git
git@github.com:h4ck3rm1k3/poise.git
git@github.com:h4ck3rm1k3/poise-boiler.git
git@github.com:h4ck3rm1k3/poise-languages.git
git@github.com:h4ck3rm1k3/poise-python.git
git@github.com:h4ck3rm1k3/poise-service.git
git@github.com:h4ck3rm1k3/postgresql.git 
git@github.com:h4ck3rm1k3/build-essential.git
git@github.com:h4ck3rm1k3/chef_handler.git
git@github.com:h4ck3rm1k3/git.git
git@github.com:h4ck3rm1k3/gunicorn.git
git@github.com:h4ck3rm1k3/ipaddr_extensions.git
git@github.com:h4ck3rm1k3/paths.git
git@github.com:h4ck3rm1k3/python.git
git@github.com:h4ck3rm1k3/rbac.git
git@github.com:h4ck3rm1k3/resource-control.git
git@github.com:h4ck3rm1k3/smf.git
git@github.com:h4ck3rm1k3/supervisor.git
git@github.com:h4ck3rm1k3/yum-epel.git
git@github.com:h4ck3rm1k3/yum.git
git@github.com:h4ck3rm1k3/berkshelf.git
git@github.com:h4ck3rm1k3/chef.git
git@github.com:h4ck3rm1k3/chefspec.git
git@github.com:h4ck3rm1k3/chefspec.git
git@github.com:h4ck3rm1k3/dep-selector.git
git@github.com:h4ck3rm1k3/ffi-yajl.git
git@github.com:h4ck3rm1k3/halite-2.git
git@github.com:h4ck3rm1k3/knife-github-cookbooks.git
git@github.com:h4ck3rm1k3/knife-spec.git
git@github.com:h4ck3rm1k3/knife-vagrant2.git
git@github.com:h4ck3rm1k3/rabbitmq-formula.git
git@github.com:h4ck3rm1k3/rubygems.git
git@github.com:rspec/rspec-core.git
git@github.com:rspec/rspec-mocks.git
git@github.com:rspec/rspec-support.git
git@github.com:rspec/rspec.git
git@github.com:avdi/hammertime.git
git@github.com:berkshelf/berkshelf.git
git@github.com:chef/chef-provisioning-aws.git
git@github.com:chef/chef-provisioning.git
git@github.com:chef/chef-server.git
git@github.com:chef/chef.git
git@github.com:chef/dep-selector-libgecode.git
git@github.com:chef/dep-selector.git
git@github.com:chef/ffi-yajl.git
git@github.com:chef/knife-ec2.git
git@github.com:chef/mixlib-config.git
git@github.com:chef/ohai.git
git@github.com:chef/omnibus.git
git@github.com:evandhoffman/flaskapp.git
git@github.com:ffi/ffi.git
git@github.com:fnichol/knife-server.git
git@github.com:fog/fog-aws.git
git@github.com:garrettux/knife-vagrant.git
git@github.com:higanworks/knife-zero.git
git@github.com:lloyd/yajl.git
git@github.com:matschaffer/knife-solo.git
git@github.com:mitchellh/vagrant.git
git@github.com:portertech/kitchen-docker.git
git@github.com:reset/buff-config.git
git@github.com:rspec/rspec-expectations.git
git@github.com:bundler/bundler.git
git@github.com:test-kitchen/kitchen-vagrant.git}

require 'uri/ssh_git'
sources.each  {|x|
  puts "Check '#{x}'"
  url = URI::SshGit.parse(x)
  puts "Check2 '#{url}'"
  name = url.path.split('/')[-1].split('.')[0]
  system "git submodule add #{x} ./#{name}"
}


