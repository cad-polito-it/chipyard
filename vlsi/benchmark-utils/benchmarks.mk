#########################################################################################
# makefile variables for Hammer benchmarks
#########################################################################################
benchmarks ?= none
EXTRA_CONFS ?=

ifeq ($(benchmarks),nangate45-commercial-rocket)
    tech_name            ?= nangate45
    CONFIG               ?= RocketConfig
    TOOLS_CONF           ?= benchmark-utils/benchmarks-tools.yml
    TECH_CONF            ?= benchmark-utils/benchmarks-nangate45.yml
    FAULT_MODEL_ATPG     ?= "saf"
    FSIM_CONF_FILE       ?= benchmark-utils/fsim-rocket-benchmarks.yml
    FAULT_MODEL_FSIM     ?= saf
    FSIM_GENERATE_FAULTS ?= 0
    DESIGN_CONFS         ?= benchmark-utils/nangate45-commercial.yml \
                             $(if $(filter $(VLSI_TOP),Rocket), \
                                 benchmark-utils/nangate45-rocket.yml, )
    VLSI_OBJ_DIR         ?= build-nangate45-commercial-rocket
    INPUT_CONFS          ?= $(TOOLS_CONF) $(TECH_CONF) $(DESIGN_CONFS) $(EXTRA_CONFS)
endif

ifeq ($(benchmarks),nangate45-commercial-sodor)
    tech_name            ?= nangate45
    CONFIG               ?= Sodor3StageConfig
    TOOLS_CONF           ?= benchmark-utils/benchmarks-tools.yml
    TECH_CONF            ?= benchmark-utils/benchmarks-nangate45.yml
    FAULT_MODEL_ATPG     ?= "saf"
    FSIM_CONF_FILE       ?= benchmark-utils/fsim-sodor-benchmarks.yml
    FAULT_MODEL_FSIM     ?= saf
    FSIM_GENERATE_FAULTS ?= 0
    DESIGN_CONFS         ?= benchmark-utils/nangate45-commercial.yml
    VLSI_OBJ_DIR         ?= build-nangate45-commercial-sodor
    INPUT_CONFS          ?= $(TOOLS_CONF) $(TECH_CONF) $(DESIGN_CONFS) $(EXTRA_CONFS)
endif

ifeq ($(benchmarks),nangate45-commercial-rocket-many-peripherals)
    tech_name         ?= nangate45
    CONFIG            ?= ManyPeripheralsRocketConfig
    TOOLS_CONF        ?= benchmark-utils/benchmarks-tools.yml
    TECH_CONF         ?= benchmark-utils/benchmarks-nangate45.yml
    FAULT_MODEL_ATPG     ?= "saf"
    FSIM_CONF_FILE       ?= benchmark-utils/fsim-rocket-benchmarks.yml
    FAULT_MODEL_FSIM     ?= saf
    FSIM_GENERATE_FAULTS ?= 0
    STANDARD_FAULT_FORMAT ?= $(vlsi_dir)/gen_fsim/fault_list/$(FAULT_MODEL)_$(VLSI_MODEL_DUT_NAME).sff
    DESIGN_CONFS      ?= benchmark-utils/nangate45-commercial.yml \
                        $(if $(filter $(VLSI_TOP),Rocket), \
                            benchmark-utils/nangate45-rocket.yml, )
    VLSI_OBJ_DIR      ?= build-nangate45-commercial-rocket-many-peripherals
    INPUT_CONFS       ?= $(TOOLS_CONF) $(TECH_CONF) $(DESIGN_CONFS) $(EXTRA_CONFS)
endif

ifeq ($(benchmarks),nangate45-commercial-boom-medium)
# SUB_PROJECT = chipyard_mediumboom
    tech_name         ?= nangate45
    CONFIG            ?= MediumBoomV3Config
    TOOLS_CONF        ?= benchmark-utils/benchmarks-tools.yml
    TECH_CONF         ?= benchmark-utils/benchmarks-nangate45.yml
    FAULT_MODEL_ATPG     ?= "saf"
    FSIM_CONF_FILE       ?= benchmark-utils/fsim-boom-benchmarks.yml
    FAULT_MODEL_FSIM     ?= saf
    FSIM_GENERATE_FAULTS ?= 0
    STANDARD_FAULT_FORMAT ?= $(vlsi_dir)/gen_fsim/fault_list/$(FAULT_MODEL)_$(VLSI_MODEL_DUT_NAME).sff
    DESIGN_CONFS      ?= benchmark-utils/nangate45-commercial.yml \
                        $(if $(filter $(VLSI_TOP),Rocket), \
                            benchmark-utils/nangate45-rocket.yml, )
    VLSI_OBJ_DIR      ?= build-nangate45-commercial-boom
    INPUT_CONFS       ?= $(TOOLS_CONF) $(TECH_CONF) $(DESIGN_CONFS) $(EXTRA_CONFS)
endif

ifeq ($(benchmarks),nangate45-commercial-boom-small)
# SUB_PROJECT = chipyard_smallboom
    tech_name         ?= nangate45
    CONFIG            ?= SmallBoomV3Config
    TOOLS_CONF        ?= benchmark-utils/benchmarks-tools.yml
    TECH_CONF         ?= benchmark-utils/benchmarks-nangate45.yml
    FAULT_MODEL_ATPG     ?= "saf"
    FSIM_CONF_FILE       ?= benchmark-utils/fsim-boom-benchmarks.yml
    FAULT_MODEL_FSIM     ?= saf
    FSIM_GENERATE_FAULTS ?= 0
    STANDARD_FAULT_FORMAT ?= $(vlsi_dir)/gen_fsim/fault_list/$(FAULT_MODEL)_$(VLSI_MODEL_DUT_NAME).sff
    DESIGN_CONFS      ?= benchmark-utils/nangate45-commercial.yml \
                        $(if $(filter $(VLSI_TOP),Rocket), \
                            benchmark-utils/nangate45-rocket.yml, )
    VLSI_OBJ_DIR      ?= build-nangate45-commercial-boom
    INPUT_CONFS       ?= $(TOOLS_CONF) $(TECH_CONF) $(DESIGN_CONFS) $(EXTRA_CONFS)
endif

ifeq ($(benchmarks),nangate45-commercial-boom-mega)
# SUB_PROJECT = chipyard_megaboom
    tech_name         ?= nangate45
    CONFIG            ?= MegaBoomV3Config
    TOOLS_CONF        ?= benchmark-utils/benchmarks-tools.yml
    TECH_CONF         ?= benchmark-utils/benchmarks-nangate45.yml
    FAULT_MODEL_ATPG     ?= "saf"
    FSIM_CONF_FILE       ?= benchmark-utils/fsim-boom-benchmarks.yml
    FAULT_MODEL_FSIM     ?= saf
    FSIM_GENERATE_FAULTS ?= 0
    STANDARD_FAULT_FORMAT ?= $(vlsi_dir)/gen_fsim/fault_list/$(FAULT_MODEL)_$(VLSI_MODEL_DUT_NAME).sff
    DESIGN_CONFS      ?= benchmark-utils/nangate45-commercial.yml \
                        $(if $(filter $(VLSI_TOP),Rocket), \
                            benchmark-utils/nangate45-rocket.yml, )
    VLSI_OBJ_DIR      ?= build-nangate45-commercial-boom
    INPUT_CONFS       ?= $(TOOLS_CONF) $(TECH_CONF) $(DESIGN_CONFS) $(EXTRA_CONFS)
endif




