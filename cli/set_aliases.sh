export env=/environments/environment_1
alias get_recipe='rosparam get $env/current_recipe'
alias stop_recipe_ros='rosservice call $env/stop_recipe'
alias start_recipe_ros='rosservice call $env/start_recipe $1'
alias blue_on='rostopic pub -1 $env/light_intensity_blue/desired std_msgs/Float64 1'
alias blue_on_actuator='rostopic pub -1 /actuators/led_blue_1/cmd std_msgs/Float32 1'
alias red_on='rostopic pub -1 $env/light_intensity_red/desired std_msgs/Float64 1'
alias get_all_recipes='curl -X GET localhost:5984/recipes/_all_docs'
alias openag_run='rosrun openag_brain main personal_food_computer_v2.launch'
alias openag_run_nohup='nohup rosrun openag_brain main personal_food_computer_v2.launch &'
alias start_recipe='curl -H \'Content-Type: application/json\' -X POST localhost:5984/_openag/api/0.0.1/service/environments/environment_1/start_recipe -d \'[\"$1\"]\''

