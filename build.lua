#!/usr/bin/env texlua

-- Build script for "siunitx" files

-- Identify the bundle and module
bundle = ""
module = "siunitx"

-- .dtx is self-contained
unpackfiles = {"*.dtx"}

-- Install config files
installfiles = {"*.cfg", "*.sty"}

-- Release a TDS-style zip
packtdszip  = true

-- No implementation as standard
typesetcmds = "\\AtBeginDocument{\\DisableImplementation}"

-- No tests for this bundle
testfildir = ""

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))
