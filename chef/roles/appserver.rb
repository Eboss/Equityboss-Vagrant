name "appserver"
description "All configurations pertaining to the appserver."
# run_list "role[base]",
#          "recipe[postgresql]",
#          "recipe[equityboss::appserver_packages]"

env_run_lists "production" => ["role[base]",
                              "recipe[postgresql]",
                              "recipe[equityboss::appserver_packages]",
                              "recipe[nginx]"],

              "staging" => ["role[base]",
                            "recipe[postgresql]",
                            "recipe[equityboss::appserver_packages]",
                            "recipe[nginx]"],

              "dev" => ["role[base]",
                        "recipe[postgresql]",
                        "recipe[equityboss::appserver_packages]",
                        "recipe[equityboss::dev_setup]"],

              "_default" => ["role[base]",
                        "recipe[postgresql]",
                        "recipe[equityboss::appserver_packages]",
                        "recipe[equityboss::dev_setup]"]
#default_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
#override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
