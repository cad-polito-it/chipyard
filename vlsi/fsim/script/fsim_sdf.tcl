set_config -global_max_jobs 16 
set_config -fsim_std_args "-fsim=limit+hyperactive+20"
set_config -update_interval 120 ; # in seconds
set_config -fsim_mode serial
set_config -enable_intermediate_results 1
## DYNAMIC RUNTIME - Do not modify from this! The __init__.py checks for the args string to parse the required arguments
create_testcases -name {"test1"} \
    -exec ./simv \
    -args ""

# Start fault simulation
fsim -verbose 

# Write results report
report -format standard -campaign  chiptop0 -report fsim_out.rpt -overwrite
report -campaign  chiptop0 -report fsim_out_hier.rpt -overwrite -hierarchical 100
