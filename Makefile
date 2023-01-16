

.PHONY: init-xavier-port-ivan
init-xavier-port-ivan:
	# Initialise the repo manifest in the `$(XAVIER_PORT_IVAN_DIR)` directory.
	repo init -u https://github.com/Ivan-Velickovic/sel4test-manifest.git -b xavier_support
	# Sync the repo manifest.
	repo sync

