macro(add_test_executable EXE_NAME)
    add_test(${EXE_NAME} gtester ${CMAKE_CURRENT_BINARY_DIR}/${EXE_NAME})
endmacro(add_test_executable)

##
# Copyright 2009-2010 Jakob Westhoff. All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
#    1. Redistributions of source code must retain the above copyright notice,
#       this list of conditions and the following disclaimer.
# 
#    2. Redistributions in binary form must reproduce the above copyright notice,
#       this list of conditions and the following disclaimer in the documentation
#       and/or other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY JAKOB WESTHOFF ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
# EVENT SHALL JAKOB WESTHOFF OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# The views and conclusions contained in the software and documentation are those
# of the authors and should not be interpreted as representing official policies,
# either expressed or implied, of Jakob Westhoff
##
macro(ensure_vala_version version)
    cmake_parse_arguments(ARGS "" "MINIMUM;MAXIMUM;EXACT" ${ARGN})
	set(compare_message "")
	set(error_message "")
	if(ARGS_MINIMUM)
		set(compare_message "a minimum ")
		set(error_message "or greater ")
	elseif(ARGS_MAXIMUM)
		set(compare_message "a maximum ")
		set(error_message "or less ")
	endif(ARGS_MINIMUM)
	
	message(STATUS 
		"checking for ${compare_message}Vala version of ${version}"
	)

	unset(version_accepted)
	
	# MINIMUM is the default if no option is specified
	if(ARGS_EXACT)
		if(${VALA_VERSION} VERSION_EQUAL ${version} )
			set(version_accepted TRUE)	
		endif(${VALA_VERSION} VERSION_EQUAL ${version})
	elseif(ARGS_MAXIMUM)
		if(${VALA_VERSION} VERSION_LESS ${version} OR ${VALA_VERSION} VERSION_EQUAL ${version})
			set(version_accepted TRUE)	
		endif(${VALA_VERSION} VERSION_LESS ${version} OR ${VALA_VERSION} VERSION_EQUAL ${version})
	else(ARGS_MAXIMUM)
		if(${VALA_VERSION} VERSION_GREATER ${version} OR ${VALA_VERSION} VERSION_EQUAL ${version})
			set(version_accepted TRUE)	
		endif(${VALA_VERSION} VERSION_GREATER ${version} OR ${VALA_VERSION} VERSION_EQUAL ${version})
	endif(ARGS_EXACT)

	if (NOT version_accepted)
		message(FATAL_ERROR 
			"Vala version ${version} ${error_message}is required."
		)
	endif(NOT version_accepted)

	message(STATUS
		"  found Vala, version ${VALA_VERSION}"
	)
endmacro(ensure_vala_version)