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
}


require 'uri/ssh_git'
sources.each  {|x|
  url = URI::SshGit.parse(x)
  name = url.path.split('/')[-1].split('.')[0]
  system "git submodule add #{x} ./#{name}"
}
