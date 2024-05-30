COMPONENT_NAME = calculator

MAKEFILE_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
PROJECT_DIR = $(realpath $(MAKEFILE_DIR)../..)
SRC_DIR = $(PROJECT_DIR)/src
INC_DIR = $(PROJECT_DIR)/inc
TEST_DIR = $(PROJECT_DIR)/tests

CPPUTEST_HOME ?= $(PROJECT_DIR)/tools/cpputest

INCLUDE_DIRS = $(INC_DIR)
SRC_DIRS = $(SRC_DIR)

INCLUDE_DIRS += $(CPPUTEST_HOME)/include

TEST_SRC_DIRS = $(TEST_DIR)/$(COMPONENT_NAME)

include $(CPPUTEST_HOME)/build/MakefileWorker.mk

