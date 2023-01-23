BUILD_DIR = "build"

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)

# =================================
# Init instructions from: https://docs.sel4.systems/projects/sel4test/
# =================================
.PHONY: init
init:
	# Initialise the repo manifest in the `$(XAVIER_PORT_IVAN_DIR)` directory.
	repo init -u https://github.com/Ivan-Velickovic/sel4test-manifest.git -b xavier_support
	# Sync the repo manifest.
	repo sync

# =================================
# Build instructions from: https://docs.sel4.systems/projects/sel4test/
# =================================
.PHONY: build
build:
	# Create a build directory if it doesn't exist already
	mkdir -p $(BUILD_DIR)
#	# Run the init-build.sh script
#	cd $(BUILD_DIR) && ../init-build.sh -DPLATFORM=xavier
	# Run the init-build.sh script
	cd $(BUILD_DIR) && ../init-build.sh -DPLATFORM=xavier -DSIMULATION=1
	# Run ninja
	cd $(BUILD_DIR) && ninja
