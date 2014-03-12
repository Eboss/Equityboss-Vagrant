name "dbserver"
description "This role has to be run on all ubuntu boxes."
run_list "role[base]",
         "recipe[equityboss::dbserver_packages]",
         "recipe[postgresql::server]",
         "recipe[mongodb]"
#env_run_lists "name" => ["recipe[name]"], "environment_name" => ["recipe[name::attribute]"]
#default_attributes "node" => { "postgresql" => { "password": => { "postgres": "iloverandompasswordsbutthiswilldo" } } }
#override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
