
CC ?= gcc
CXX ?= g++

SRC_DIR = ./src
INC_DIR = ./inc
BUILD_DIR = ./build
NAME = calculator.elf

vpath %.c $(SRC_DIR)

CFLAGS += -I$(INC_DIR)
CSOURCES = $(wildcard $(SRC_DIR)/*.c)

COBJECTS = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(CSOURCES))
CFLAGS += -Wall
LDFLAGS += 


.PHONY: all
all: $(BUILD_DIR)/$(NAME)

$(BUILD_DIR)/%.o: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: $(NAME)
$(BUILD_DIR)/$(NAME): $(COBJECTS)
	$(CC) $(COBJECTS) -o $(NAME) $(LDFLAGS)

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)


