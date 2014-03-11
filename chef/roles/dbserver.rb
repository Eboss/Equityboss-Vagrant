name "base"
description "This role has to be run on all ubuntu boxes."
run_list "recipe[equityboss::dbserver_packages]",
         "recipe[equityboss::postgresql_server]",
         "recipe[equityboss::mongodb]"
#env_run_lists "name" => ["recipe[name]"], "environment_name" => ["recipe[name::attribute]"]
#default_attributes "node" => { "postgresql" => { "password": => { "postgres": "iloverandompasswordsbutthiswilldo" } } }
#override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
