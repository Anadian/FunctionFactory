#!/usr/bin/make
#Options
ifeq ($(origin VERBOSE),undefined)
VERBOSE=0
endif #($(origin VERBOSE),undefined)
ifeq ($(VERBOSE),1)
$(info VERBOSE:$(VERBOSE))
endif #($(VERBOSE),1)

#Project Metadata
#mkvar(NAME,{{project_name}})
ifeq ($(origin NAME),undefined)
NAME={{project_name}}
endif #($(origin NAME),undefined)
ifeq ($(VERBOSE),1)
$(info NAME:$(NAME))
endif #($(VERBOSE),1)


#mkvar(PROJECT_DIRECTORY,$(shell pwd))
ifeq ($(origin PROJECT_DIRECTORY),undefined)
PROJECT_DIRECTORY=$(shell pwd)
endif #($(origin PROJECT_DIRECTORY),undefined)
ifeq ($(VERBOSE),1)
$(info PROJECT_DIRECTORY:$(PROJECT_DIRECTORY))
endif #($(VERBOSE),1)


#mkvar(GIT_CURRENT,$(shell git-current))
ifeq ($(origin GIT_CURRENT),undefined)
GIT_CURRENT=$(shell git-current)
endif #($(origin GIT_CURRENT),undefined)
ifeq ($(VERBOSE),1)
$(info GIT_CURRENT:$(GIT_CURRENT))
endif #($(VERBOSE),1)


#mkvar(GIT_COMMIT,$(subst commit ,commit-,$(GIT_CURRENT))
ifeq ($(origin GIT_COMMIT),undefined)
GIT_COMMIT=$(subst commit ,commit-,$(GIT_CURRENT))
endif #($(origin GIT_COMMIT),undefined)
ifeq ($(VERBOSE),1)
$(info GIT_COMMIT:$(GIT_COMMIT))
endif #($(VERBOSE),1)

#Phases
##Pre-build
#mkvar(PHASE_PREPARE,{{phase_prepare}})
ifeq ($(origin PHASE_PREPARE),undefined)
PHASE_PREPARE={{phase_prepare}}
endif #($(origin PHASE_PREPARE),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_PREPARE:$(PHASE_PREPARE))
endif #($(VERBOSE),1)

#mkvar(PHASE_GIT_PULL,1)
ifeq ($(origin PHASE_GIT_PULL),undefined)
PHASE_GIT_PULL={{phase_git_pull}}
endif #($(origin PHASE_GIT_PULL),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_GIT_PULL:$(PHASE_GIT_PULL))
endif #($(VERBOSE),1)

#mkvar(PHASE_COPY,1)
ifeq ($(origin PHASE_COPY),undefined)
PHASE_COPY={{phase_copy}}
endif #($(origin PHASE_COPY),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_COPY:$(PHASE_COPY))
endif #($(VERBOSE),1)

#mkvar(PHASE_LINT,0)
ifeq ($(origin PHASE_LINT),undefined)
PHASE_LINT={{phase_lint}}
endif #($(origin PHASE_LINT),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_LINT:$(PHASE_LINT))
endif #($(VERBOSE),1)

#mkvar(PHASE_DIRECTORIES,1)
ifeq ($(origin PHASE_DIRECTORIES),undefined)
PHASE_DIRECTORIES={{phase_directories}}
endif #($(origin PHASE_DIRECTORIES),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_DIRECTORIES:$(PHASE_DIRECTORIES))
endif #($(VERBOSE),1)

##Build
#mkvar(PHASE_BUILD,1)
ifeq ($(origin PHASE_BUILD),undefined)
PHASE_BUILD={{phase_build}}
endif #($(origin PHASE_BUILD),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_BUILD:$(PHASE_BUILD))
endif #($(VERBOSE),1)

#mkvar(PHASE_COMPILE,0)
ifeq ($(origin PHASE_COMPILE),undefined)
PHASE_COMPILE={{phase_compile}}
endif #($(origin PHASE_COMPILE),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_COMPILE:$(PHASE_COMPILE))
endif #($(VERBOSE),1)

#mkvar(PHASE_LINK,0)
ifeq ($(origin PHASE_LINK),undefined)
PHASE_LINK={{phase_link}}
endif #($(origin PHASE_LINK),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_LINK:$(PHASE_LINK))
endif #($(VERBOSE),1)

##Test
#mkvar(PHASE_TEST,1)
ifeq ($(origin PHASE_TEST),undefined)
PHASE_TEST={{phase_test}}
endif #($(origin PHASE_TEST),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_TEST:$(PHASE_TEST))
endif #($(VERBOSE),1)

#mkvar(PHASE_RUN,1)
ifeq ($(origin PHASE_RUN),undefined)
PHASE_RUN={{phase_run}}
endif #($(origin PHASE_RUN),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_RUN:$(PHASE_RUN))
endif #($(VERBOSE),1)

##Post-Build
#mkvar(PHASE_PACKAGE,1)
ifeq ($(origin PHASE_PACKAGE),undefined)
PHASE_PACKAGE={{phase_package}}
endif #($(origin PHASE_PACKAGE),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_PACKAGE:$(PHASE_PACKAGE))
endif #($(VERBOSE),1)

#mkvar(PHASE_INSTALL,0)
ifeq ($(origin PHASE_INSTALL),undefined)
PHASE_INSTALL={{phase_install}}
endif #($(origin PHASE_INSTALL),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_INSTALL:$(PHASE_INSTALL))
endif #($(VERBOSE),1)

#mkvar(PHASE_RELEASE,0)
ifeq ($(origin PHASE_RELEASE),undefined)
PHASE_RELEASE={{phase_release}}
endif #($(origin PHASE_RELEASE),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_RELEASE:$(PHASE_RELEASE))
endif #($(VERBOSE),1)

#mkvar(PHASE_DISTRIBUTE,0)
ifeq ($(origin PHASE_DISTRIBUTE),undefined)
PHASE_DISTRIBUTE={{phase_distribute}}
endif #($(origin PHASE_DISTRIBUTE),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_DISTRIBUTE:$(PHASE_DISTRIBUTE))
endif #($(VERBOSE),1)

#mkvar(PHASE_GIT_PUSH,0)
ifeq ($(origin PHASE_GIT_PUSH),undefined)
PHASE_GIT_PUSH={{phase_git_push}}
endif #($(origin PHASE_GIT_PUSH),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_GIT_PUSH:$(PHASE_GIT_PUSH))
endif #($(VERBOSE),1)

##Cleanup
#mkvar(PHASE_CLEANUP,1)
ifeq ($(origin PHASE_CLEANUP),undefined)
PHASE_CLEANUP={{phase_cleanup}}
endif #($(origin PHASE_CLEANUP),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_CLEANUP:$(PHASE_CLEANUP))
endif #($(VERBOSE),1)

#mkvar(PHASE_UNINSTALL,0)
ifeq ($(origin PHASE_UNINSTALL),undefined)
PHASE_UNINSTALL={{phase_uninstall}}
endif #($(origin PHASE_UNINSTALL),undefined)
ifeq ($(VERBOSE),1)
$(info PHASE_UNINSTALL:$(PHASE_UNINSTALL))
endif #($(VERBOSE),1)



#System Information
#mkvar(PROCESSOR,$(shell uname -p))
ifeq ($(origin PROCESSOR),undefined)
PROCESSOR=$(shell uname -p)
endif #($(origin PROCESSOR),undefined)
ifeq ($(VERBOSE),1)
$(info PROCESSOR:$(PROCESSOR))
endif #($(VERBOSE),1)


#mkvar(ARCHITECTURE,$(shell uname -m))
ifeq ($(origin ARCHITECTURE),undefined)
ARCHITECTURE=$(shell uname -m)
endif #($(origin ARCHITECTURE),undefined)
ifeq ($(VERBOSE),1)
$(info ARCHITECTURE:$(ARCHITECTURE))
endif #($(VERBOSE),1)


#mkvar(KERNEL,$(shell uname -s))
ifeq ($(origin KERNEL),undefined)
KERNEL=$(shell uname -s)
endif #($(origin KERNEL),undefined)
ifeq ($(VERBOSE),1)
$(info KERNEL:$(KERNEL))
endif #($(VERBOSE),1)


#mkvar(KERNEL_RELEASE,$(shell uname -r))
ifeq ($(origin KERNEL_RELEASE),undefined)
KERNEL_RELEASE=$(shell uname -r)
endif #($(origin KERNEL_RELEASE),undefined)
ifeq ($(VERBOSE),1)
$(info KERNEL_RELEASE:$(KERNEL_RELEASE))
endif #($(VERBOSE),1)


#mkvar(OPERATING_SYSTEM,$(shell uname -o))
ifeq ($(origin OPERATING_SYSTEM),undefined)
OPERATING_SYSTEM=$(shell uname -o)
endif #($(origin OPERATING_SYSTEM),undefined)
ifeq ($(VERBOSE),1)
$(info OPERATING_SYSTEM:$(OPERATING_SYSTEM))
endif #($(VERBOSE),1)


#Build Informations
#mkvar(COMPILER,gcc)
ifeq ($(origin COMPILER),undefined)
COMPILER=gcc
endif #($(origin COMPILER),undefined)
ifeq ($(VERBOSE),1)
$(info COMPILER:$(COMPILER))
endif #($(VERBOSE),1)


##Directories
#mkvar(SOURCE_DIRECTORY,./source)
ifeq ($(origin SOURCE_DIRECTORY),undefined)
SOURCE_DIRECTORY=./source
endif #($(origin SOURCE_DIRECTORY),undefined)
ifeq ($(VERBOSE),1)
$(info SOURCE_DIRECTORY:$(SOURCE_DIRECTORY))
endif #($(VERBOSE),1)

#mkvar(INCLUDE_DIRECTORY,./include)
ifeq ($(origin INCLUDE_DIRECTORY),undefined)
INCLUDE_DIRECTORY=./include
endif #($(origin INCLUDE_DIRECTORY),undefined)
ifeq ($(VERBOSE),1)
$(info INCLUDE_DIRECTORY:$(INCLUDE_DIRECTORY))
endif #($(VERBOSE),1)

#mkvar(STATIC_LIBRARY_DIRECTORY,./static_library)
ifeq ($(origin STATIC_LIBRARY_DIRECTORY),undefined)
STATIC_LIBRARY_DIRECTORY=./static_library
endif #($(origin STATIC_LIBRARY_DIRECTORY),undefined)
ifeq ($(VERBOSE),1)
$(info STATIC_LIBRARY_DIRECTORY:$(STATIC_LIBRARY_DIRECTORY))
endif #($(VERBOSE),1)

#mkvar(OBJECTS_DIRECTORY,./OBJECTS)
ifeq ($(origin OBJECTS_DIRECTORY),undefined)
OBJECTS_DIRECTORY=./OBJECTS
endif #($(origin OBJECTS_DIRECTORY),undefined)
ifeq ($(VERBOSE),1)
$(info OBJECTS_DIRECTORY:$(OBJECTS_DIRECTORY))
endif #($(VERBOSE),1)

#mkvar(OUTPUT_DIRECTORY,./OUTPUT)
ifeq ($(origin OUTPUT_DIRECTORY),undefined)
OUTPUT_DIRECTORY=./OUTPUT
endif #($(origin OUTPUT_DIRECTORY),undefined)
ifeq ($(VERBOSE),1)
$(info OUTPUT_DIRECTORY:$(OUTPUT_DIRECTORY))
endif #($(VERBOSE),1)


###Sanity Checks
ifeq ($(wildcard $(OBJECTS_DIRECTORY)/*),)
$(shell mkdir $(OBJECTS_DIRECTORY))
endif #($(wildcard $(OBJECTS_DIRECTORY)/*),)
ifeq ($(wildcard $(OUTPUT_DIRECTORY)/*),)
$(shell mkdir $(OUTPUT_DIRECTORY))
endif #($(wildcard $(OUTPUT_DIRECTORY)/*),)

##Files
#mkvar(SOURCE_FILES,$(wildcard $(SOURCE_DIRECTORY)/*.c))
ifeq ($(origin SOURCE_FILES),undefined)
SOURCE_FILES=$(wildcard $(SOURCE_DIRECTORY)/*.c)
endif #($(origin SOURCE_FILES),undefined)
ifeq ($(VERBOSE),1)
$(info SOURCE_FILES:$(SOURCE_FILES))
endif #($(VERBOSE),1)

#mkvar(INCLUDE_FILES,$(wildcard $(INCLUDE_DIRECTORY)/*.h))
ifeq ($(origin INCLUDE_FILES),undefined)
INCLUDE_FILES=$(wildcard $(INCLUDE_DIRECTORY)/*.h)
endif #($(origin INCLUDE_FILES),undefined)
ifeq ($(VERBOSE),1)
$(info INCLUDE_FILES:$(INCLUDE_FILES))
endif #($(VERBOSE),1)

#mkvar(TMP_OBJECTS,$(subst $(SOURCE_DIRECTORY),$(OBJECTS_DIRECTORY),$(SOURCE_FILES)))
ifeq ($(origin TMP_OBJECTS),undefined)
TMP_OBJECTS=$(subst $(SOURCE_DIRECTORY),$(OBJECTS_DIRECTORY),$(SOURCE_FILES))
endif #($(origin TMP_OBJECTS),undefined)
ifeq ($(VERBOSE),1)
$(info TMP_OBJECTS:$(TMP_OBJECTS))
endif #($(VERBOSE),1)

#mkvar(OBJECT_FILES,$(subst .c,.o,$(TMP_OBJECTS)))
ifeq ($(origin OBJECT_FILES),undefined)
OBJECT_FILES=$(subst .c,.o,$(TMP_OBJECTS))
endif #($(origin OBJECT_FILES),undefined)
ifeq ($(VERBOSE),1)
$(info OBJECT_FILES:$(OBJECT_FILES))
endif #($(VERBOSE),1)

#mkvar(BINARY_NAME,$(OUTPUT_DIRECTORY)/$(NAME).$(OPERATING_SYSTEM))
ifeq ($(origin BINARY_NAME),undefined)
BINARY_NAME=$(OUTPUT_DIRECTORY)/$(NAME).$(OPERATING_SYSTEM)
endif #($(origin BINARY_NAME),undefined)
ifeq ($(VERBOSE),1)
$(info BINARY_NAME:$(BINARY_NAME))
endif #($(VERBOSE),1)

#mkvar(LIBRARY_NAME,$(OUTPUT_DIRECTORY)/lib$(NAME).a)
ifeq ($(origin LIBRARY_NAME),undefined)
LIBRARY_NAME=$(OUTPUT_DIRECTORY)/lib$(NAME).a
endif #($(origin LIBRARY_NAME),undefined)
ifeq ($(VERBOSE),1)
$(info LIBRARY_NAME:$(LIBRARY_NAME))
endif #($(VERBOSE),1)


#Flags
#mkvar(FLAG_PREDEFINED_MACROS,-DMAKE_GIT_COMMIT=$(GIT_COMMIT))
ifeq ($(origin FLAG_PREDEFINED_MACROS),undefined)
FLAG_PREDEFINED_MACROS=-DMAKE_GIT_COMMIT=$(GIT_COMMIT)
endif #($(origin FLAG_PREDEFINED_MACROS),undefined)
ifeq ($(VERBOSE),1)
$(info FLAG_PREDEFINED_MACROS:$(FLAG_PREDEFINED_MACROS))
endif #($(VERBOSE),1)

#mkvar(FLAG_INCLUDE_SEARCH_DIRECTORIES,-I/usr/include -I/usr/local/include -I~/include -I$(INCLUDE_DIRECTORY)
ifeq ($(origin FLAG_INCLUDE_SEARCH_DIRECTORIES),undefined)
FLAG_INCLUDE_SEARCH_DIRECTORIES=-I/usr/include -I/usr/local/include -I~/include -I$(INCLUDE_DIRECTORY)
endif #($(origin FLAG_INCLUDE_SEARCH_DIRECTORIES),undefined)
ifeq ($(VERBOSE),1)
$(info FLAG_INCLUDE_SEARCH_DIRECTORIES:$(FLAG_INCLUDE_SEARCH_DIRECTORIES))
endif #($(VERBOSE),1)

#mkvar(FLAG_STATIC_LIBRARY_SEARCH_DIRECTORIES,-L/usr/lib -L/usr/local/lib -L~/lib -L$(STATIC_LIBRARY_DIRECTORY)
ifeq ($(origin FLAG_STATIC_LIBRARY_SEARCH_DIRECTORIES),undefined)
FLAG_STATIC_LIBRARY_SEARCH_DIRECTORIES=-L/usr/lib -L/usr/local/lib -L~/lib -L$(STATIC_LIBRARY_DIRECTORY)
endif #($(origin FLAG_STATIC_LIBRARY_SEARCH_DIRECTORIES),undefined)
ifeq ($(VERBOSE),1)
$(info FLAG_STATIC_LIBRARY_SEARCH_DIRECTORIES:$(FLAG_STATIC_LIBRARY_SEARCH_DIRECTORIES))
endif #($(VERBOSE),1)

#mkvar(LINK_FLAGS,)
ifeq ($(origin LINK_FLAGS),undefined)
LINK_FLAGS=-lsdl2
endif #($(origin LINK_FLAGS),undefined)
ifeq ($(VERBOSE),1)
$(info LINK_FLAGS:$(LINK_FLAGS))
endif #($(VERBOSE),1)

#mkvar(DEBUG_FLAGS,)
ifeq ($(origin DEBUG_FLAGS),undefined)
DEBUG_FLAGS=
endif #($(origin DEBUG_FLAGS),undefined)
ifeq ($(VERBOSE),1)
$(info DEBUG_FLAGS:$(DEBUG_FLAGS))
endif #($(VERBOSE),1)


#mkvar(FLAGS,$(FLAG_PREDEFINED_MACROS) $(FLAG_INCLUDE_SEARCH_DIRECTORIES) $(FLAG_STATIC_LIBRARY_SEARCH_DIRECTORIES) $(LINK_FLAGS) $(DEBUG_FLAGS))
ifeq ($(origin FLAGS),undefined)
FLAGS=$(FLAG_PREDEFINED_MACROS) $(FLAG_INCLUDE_SEARCH_DIRECTORIES) $(FLAG_STATIC_LIBRARY_SEARCH_DIRECTORIES) $(LINK_FLAGS) $(DEBUG_FLAGS)
endif #($(origin FLAGS),undefined)
ifeq ($(VERBOSE),1)
$(info FLAGS:$(FLAGS))
endif #($(VERBOSE),1)


#Recipes
##GNU_Make
.PHONY: copy-dependencies expand noop help
	

%.o:
	$(COMPILER) $(INCLUDE_FILES) -c $(SOURCE_DIRECTORY)/$(subst .o,.c,$(notdir $@)) -o $@

##Development
copy-dependencies: 
	cd ~/dev/CNO
	
expand:
	cd ~/dev/CNO
	vim -S ~/.external_expand include/*.h source/*.c source/*.js

noop:
	

help:
	$(info Available commands, with synonyms:)
	$(info help: Display this help text.)
	$(info noop: Print configuration variables and exit.)

