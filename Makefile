all: modularize minify
	
include ../../build/modules.mk

MODULE = easing
MODULARIZE_OPTIONS = -jq
SOURCE_DIR = .
