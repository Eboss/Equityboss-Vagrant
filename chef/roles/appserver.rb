name "appserver"
description "All configurations pertaining to the appserver."
run_list "recipe[equityboss::appserver_packages]",
         "recipe[equityboss::nginx]"

#env_run_lists "production" => ["recipe[nginx]"], "staging" => ["recipe[nginx]"], "_default" => ["recipe[nginx]"]
#default_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
#override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
