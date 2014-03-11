name "base"
description "This role has to be run on all ubuntu boxes."
run_list "recipe[apt]",
		 "recipe[python]"

#env_run_lists "name" => ["recipe[name]"], "environment_name" => ["recipe[name::attribute]"]
#default_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
#override_attributes "node" => { "attribute" => [ "value", "value", "etc." ] }
