#!/bin/bash
#
# ---------------------------------------
# This is theUnixManager - ultimate package manager && init system handler
# made by Archetypum that simplifies interaction with UNIX systems and creation of system-related python scripts.
#
# Archetypum: (https://github.com/Archetypum)
# Github repo link: (https://github.com/Archetypum/theUnixManager)
# Real usage example: (https://github.com/Archetypum/theSuffocater)
#
# TODO:
#    * add logging functionality arguments.
#    * test this on more systems.
#    * impove and finish bash version.
#    * many more?
#
# Date: 18.10.2024
# ---------------------------------------

# theUnixManger version:
THE_UNIX_MANAGER_VERSION="v1.0.0-unstable"

# ANSI Color codes and text formating:
BLACK="\033[90m"
WHITE="\033[97m"
YELLOW="\033[93m"
ORANGE="\033[38;5;214m"
BLUE="\033[94m"
PURPLE="\033[95m"
GREEN="\033[92m"
RED="\033[91m"
BOLD="\033[1m"
UNDERLINE="\033[4m"
REVERSED="\033[7m"
ITALIC="\033[3m"
CROSSED_OUT="\033[9m"
RESET="\033[0m"

# GNU/Linux operating systems:
DEBIAN_BASED=("debian" "ubuntu" "xubuntu" "linuxmint" "lmde" "trisquel" "devuan" "kali" "parrot" "pop" "elementary"
	"mx" "antix" "crunchbag" "crunchbag++" "pureos" "deepin" "zorin" "peppermintos" "lubuntu" "kubuntu" "wubuntu"
	"steamos" "astra" "tails" "ututos" "ulteo" "aptosid" "canaima" "corel" "dreamlinux" "elive" "finnix" "gibraltar"
	"gnulinex" "kanotix" "kurumin" "linspire" "maemo" "mepis" "vyatta" "solusos" "openzaurus" "cutefishos"
)
ARCH_BASED=("arch" "artix" "manjaro" "endeavouros" "garuda" "parabola" "hyperbola" "archbang" "blackarch" "librewolf"
	"chakra" "archex" "archman" "arco" "bluestar" "chimeraos" "instantos" "kaos" "rebornos" "archhurd" "cyberos"
)
ALPINE_BASED=("alpine" "postmarket")
GENTOO_BASED=("gentoo" "pentoo" "funtoo" "calculate" "chromeos" "vidalinux" "knopperdisk" "gentoox" "sabayon" "chromiumos"
	"tinhatlinux" "ututo"
)
VOID_BASED=("void" "argon" "shikake" "pristine")
DRAGORA_BASED=("dragora")
SLACKWARE_BASED=("slackware" "salixos" "simplelinux" "basiclinux" "frugalware" "austrumi" "hostgis" "kateos" "mulinux"
	"nimblex" "platypux" "slackintosh" "slax" "supergamer" "topologilinux" "vectorlinux" "wolvix" "zenwalk" "zipslack"
)
FEDORA_BASED=("fedora" "mos")
CENTOS_BASED=("centos")
GUIX_BASED=("guix")

# BSD UNIX operating systems:
FREEBSD_BASED=("freebsd" "midnightbsd" "ghostbsd" "bastillebsd" "cheribsd" "dragonflybsd" "trueos" "hardenedbsd" "hellosystem"
	"truenas" "nomadbsd" "clones" "junosos" "xigmanas" "opnsense" "pfsense" "cellos" "orbisos" "zrouter" "ulbsd" "ravynos"
)
OPENBSD_BASED=("openbsd" "adj" "libertybsd" "bitrig" "bowlfish" "ekkobsd" "embsd" "fabbsd" "fuguita" "marbsd" "microbsd"
	"miros" "olivebsd" "psygnat" "quetzal" "sonafr" "hyperbolabsd"
)
NETBSD_BASED=("netbsd" "blackbsd" "edgebsd" "seos" "os108" "jibbed")

function the_unix_manager_version() {
	return THE_UNIX_MANAGER_VERSION
}

function the_unix_manager_tester() {
	echo -e "theUnixManager version: ${THE_UNIX_MANAGER_VERSION}"
}

the_unix_manager_tester
