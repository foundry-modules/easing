FOUNDRY_DIR = ../..
PRODUCTION_DIR = ${FOUNDRY_DIR}/scripts
DEVELOPMENT_DIR = ${FOUNDRY_DIR}/scripts_
MODULARIZE = ${FOUNDRY_DIR}/build/modularize
UGLIFY = uglifyjs --unsafe -nc

all: scrollTo min

scrollTo:
	${MODULARIZE} -n "scrollTo" jquery.easing.js > ${DEVELOPMENT_DIR}/easing.js

min:
	${UGLIFY} ${DEVELOPMENT_DIR}/easing.js > ${PRODUCTION_DIR}/easing.js
