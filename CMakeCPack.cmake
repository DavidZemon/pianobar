set(CPACK_GENERATOR
    ZIP
    TGZ
    DEB
    RPM
    )

set(CPACK_INCLUDE_TOPLEVEL_DIRECTORY 0)
set(CPACK_INSTALL_CMAKE_PROJECTS
    ${CMAKE_BINARY_DIR}
    ${PROJECT_NAME}
    ALL
    /)
set(CPACK_PACKAGE_VENDOR "Lars P")
set(CPACK_PACKAGE_CONTACT "Lars P <lars@6xq.net>")
set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION
    ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH})

set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_RESOURCE_FILE_README ${PROJECT_SOURCE_DIR}/README.md)

# Debian Specific
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "http://6xq.net/pianobar/")
set(CPACK_DEBIAN_PACKAGE_SECTION TODO)
set(CPACK_DEBIAN_PACKAGE_PRIORITY optional)

# RPM Specific
set(CPACK_RPM_PACKAGE_REQUIRES "TODO")

# Components
set(CPACK_ARCHIVE_COMPONENT_INSTALL ON)
set(CPACK_COMPONENT_LIBPIANO_DISPLAY_NAME  "Libraries")
set(CPACK_COMPONENT_PROPWARE_DESCRIPTION   "Headers, shared, and static libraries for Piaonbar")

set(CPACK_PROJECT_CONFIG_FILE ${PROJECT_SOURCE_DIR}/CMakeCPackOptions.cmake)
include(CPack)