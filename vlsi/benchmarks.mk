#########################################################################################
# makefile variables for VLSI benchmarks
#########################################################################################
benchmark ?= none
tech_name ?= nangate45
toolchain ?= commercial

EXTRA_CONFS ?=


ifeq ($(benchmark),ibex)
    CONFIG            = IbexConfig
    generated_src_name ?= generated-src-$(tech_name)
    HAMMER_EXEC       = ./example-vlsi
    TOOLS_CONF        ?= example-tools.yml
    TECH_CONF         ?= ./technology/$(tech_name).yml
    FSIM_CONF_FILE    ?= ./fsim/example-fsim.yml
    DESIGN_CONFS      ?= ./example-designs/$(tech_name)-$(toolchain).yml
    VLSI_OBJ_DIR      ?= build-$(tech_name)-$(toolchain)-$(benchmark)
    INPUT_CONFS       ?= $(TOOLS_CONF) $(TECH_CONF) $(DESIGN_CONFS) $(EXTRA_CONFS)
endif



ifeq ($(benchmark),rocket)
    CONFIG            = RocketConfig
    generated_src_name ?= generated-src-$(tech_name)
    HAMMER_EXEC       = ./example-vlsi
    TOOLS_CONF        ?= example-tools.yml
    TECH_CONF         ?= ./technology/$(tech_name).yml
    FSIM_CONF_FILE    ?= ./fsim/example-fsim.yml
    DESIGN_CONFS      ?= ./example-designs/$(tech_name)-$(toolchain).yml
    VLSI_OBJ_DIR      ?= build-$(tech_name)-$(toolchain)-$(benchmark)
    INPUT_CONFS       ?= $(TOOLS_CONF) $(TECH_CONF) $(DESIGN_CONFS) $(EXTRA_CONFS)
endif


ifeq ($(benchmark),boom-small)
    CONFIG            = SmallBoomV3Config
    generated_src_name ?= generated-src-$(tech_name)
    HAMMER_EXEC       = ./example-vlsi
    TOOLS_CONF        ?= example-tools.yml
    TECH_CONF         ?= ./technology/$(tech_name).yml
    FSIM_CONF_FILE    ?= ./fsim/example-fsim.yml
    DESIGN_CONFS      ?= ./example-designs/$(tech_name)-$(toolchain).yml
    VLSI_OBJ_DIR      ?= build-$(tech_name)-$(toolchain)-$(benchmark)
    INPUT_CONFS       ?= $(TOOLS_CONF) $(TECH_CONF) $(DESIGN_CONFS) $(EXTRA_CONFS)
endif


ifeq ($(benchmark),cva6)
    CONFIG            = CVA6Config
    generated_src_name ?= generated-src-$(tech_name)
    HAMMER_EXEC       =  ./vlsi-cva6
    TOOLS_CONF        ?= example-tools.yml
    TECH_CONF         ?= ./technology/$(tech_name).yml
    FSIM_CONF_FILE    ?= ./fsim/example-fsim.yml
    DESIGN_CONFS      ?= ./example-designs/$(tech_name)-$(toolchain).yml
    VLSI_OBJ_DIR      ?= build-$(tech_name)-$(toolchain)-$(benchmark)
    INPUT_CONFS       ?= $(TOOLS_CONF) $(TECH_CONF) $(DESIGN_CONFS) $(EXTRA_CONFS)
endif