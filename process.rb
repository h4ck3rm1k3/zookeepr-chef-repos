#!/usr/bin/ruby
source_list = %w{


berkshelf                     
buff-config                   
chef                          
chef-provisioning             
chef-provisioning-aws         
chef-server                   
chefspec                      
dep-selector                  
dep-selector-libgecode        
ffi                           
ffi-yajl                      
flaskapp                      
fog-aws                       
halite-2                      
hammertime                    
kitchen-docker                
kitchen-vagrant               
knife-ec2                     
knife-github-cookbooks        
knife-server                  
knife-solo                    
knife-spec                    
knife-vagrant                 
knife-vagrant2                
knife-zero                    

mixlib-config                 
ohai                          
omnibus                       
puppet                        
rabbitmq-formula              
rspec                         
rspec-core                    
rspec-expectations            
rspec-mocks                   
rspec-support                 
rubygems                      

vagrant                       
yajl                          

                   }

require 'rubygems'
require 'git'

source_list.each  {|x|
  path = "../../../#{x}"
  hpath = "./hide2/#{x}"
  g = Git.open(path)
  g.remotes.each { |r|
    puts   g.remote(r).url
  }
  # now move them
  system "mv #{path} #{hpath}";
}
