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
declare THE_UNIX_MANAGER_VERSION="v1.0.0-unstable"

# ANSI Color codes and text formating:
declare BLACK="\033[90m"
declare WHITE="\033[97m"
declare YELLOW="\033[93m"
declare ORANGE="\033[38;5;214m"
declare BLUE="\033[94m"
declare PURPLE="\033[95m"
declare GREEN="\033[92m"
declare RED="\033[91m"
declare BOLD="\033[1m"
declare UNDERLINE="\033[4m"
declare REVERSED="\033[7m"
declare ITALIC="\033[3m"
declare CROSSED_OUT="\033[9m"
declare RESET="\033[0m"

# GNU/Linux operating systems:
declare -a DEBIAN_BASED=(
	"debian" "ubuntu" "xubuntu" "linuxmint" "lmde" "trisquel" "devuan" "kali" "parrot" "pop" "elementary"
	"mx" "antix" "crunchbag" "crunchbag++" "pureos" "deepin" "zorin" "peppermintos" "lubuntu" "kubuntu" "wubuntu"
	"steamos" "astra" "tails" "ututos" "ulteo" "aptosid" "canaima" "corel" "dreamlinux" "elive" "finnix" "gibraltar"
	"gnulinex" "kanotix" "kurumin" "linspire" "maemo" "mepis" "vyatta" "solusos" "openzaurus" "cutefishos"
)

declare -a ARCH_BASED=(
	"arch" "artix" "manjaro" "endeavouros" "garuda" "parabola" "hyperbola" "archbang" "blackarch" "librewolf"
	"chakra" "archex" "archman" "arco" "bluestar" "chimeraos" "instantos" "kaos" "rebornos" "archhurd" "cyberos"
)

declare -a ALPINE_BASED=(
	"alpine" "postmarket"
)

declare -a GENTOO_BASED=(
	"gentoo" "pentoo" "funtoo" "calculate" "chromeos" "vidalinux" "knopperdisk" "gentoox" "sabayon" "chromiumos"
	"tinhatlinux" "ututo"
)

declare -a VOID_BASED=(
	"void" "argon" "shikake" "pristine"
)

declare -a DRAGORA_BASED=(
	"dragora"
)

declare -a SLACKWARE_BASED=(
	"slackware" "salixos" "simplelinux" "basiclinux" "frugalware" "austrumi" "hostgis" "kateos" "mulinux"
	"nimblex" "platypux" "slackintosh" "slax" "supergamer" "topologilinux" "vectorlinux" "wolvix" "zenwalk" "zipslack"
)

declare -a FEDORA_BASED=(
	"fedora" "mos"
)

declare -a CENTOS_BASED=(
	"centos"
)

declare -a GUIX_BASED=(
	"guix"
)

# BSD UNIX operating systems:
declare -a FREEBSD_BASED=(
	"freebsd" "midnightbsd" "ghostbsd" "bastillebsd" "cheribsd" "dragonflybsd" "trueos" "hardenedbsd" "hellosystem"
	"truenas" "nomadbsd" "clones" "junosos" "xigmanas" "opnsense" "pfsense" "cellos" "orbisos" "zrouter" "ulbsd" "ravynos"
)

declare -a OPENBSD_BASED=(
	"openbsd" "adj" "libertybsd" "bitrig" "bowlfish" "ekkobsd" "embsd" "fabbsd" "fuguita" "marbsd" "microbsd"
	"miros" "olivebsd" "psygnat" "quetzal" "sonafr" "hyperbolabsd"
)

declare -a NETBSD_BASED=(
	"netbsd" "blackbsd" "edgebsd" "seos" "os108" "jibbed"
)

function the_unix_manager_version() {
	return THE_UNIX_MANAGER_VERSION
}

function the_unix_manager_tester() {
	echo -e "theUnixManager version: ${THE_UNIX_MANAGER_VERSION}"
	
	declare -a SUCCESSFULLY_TESTED
	local INIT_SYSTEM=$(get_init_system)
	local DISTRO=$(get_user_distro)

	echo "user distro: $DISTRO"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo "user init system: $INIT_SYSTEM"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo -e "${BLACK}black text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo -e "${YELLOW}yellow text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo -e "${ORANGE}orange text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi

	echo -e "${BLUE}blue text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo -e "${PURPLE}purple text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo -e "${GREEN}green text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo -e "${RED}red text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo -e "${BOLD}bold text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo -e "${UNDERLINE}underlined text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi

	echo -e "${REVERSED}reversed text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo -e "${ITALIC}italic text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi
	
	echo -e "${CROSSED_OUT}crossed out text${RESET}"
	prompt_user "[?] is that true?"
	if [[ "$?" -eq 0 ]]; then
		SUCCESSFULLY_TESTED+=("true")
	else
		SUCCESSFULLY_TESTED+=("false")
	fi

	local ALL_TESTS_PASSED="true"
	for RESULT in "${SUCCESSFULLY_TESTED[@]}"; do
		if [[ "$RESULT" == "false" ]]; then
			local ALL_TESTS_PASSED="false"
			break
		fi
	done

	if [[ "$ALL_TESTS_PASSED" == "false" ]]; then
		echo -e "\n${ORANGE}[!] Some tests are not passed:${RESET}"
	else
		echo -e "\n${GREEN}[*] All tests are successfully passed!${RESET}"
	fi

	echo "(${SUCCESSFULLY_TESTED[@]})"
}

function clear_screen() {
	clear
}

function is_debian_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is Debian based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$DEBIAN_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_arch_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is Arch based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$ARCH_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_alpine_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is Alpine based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$ALPINE_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_gentoo_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is Gentoo based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$GENTOO_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_void_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is Void based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$VOID_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_dragora_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is Dragora based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$DRAGORA_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
 		return 0
	else
		return 1
	fi
}

function is_slackware_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is Slackware based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$SLACKWARE_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_fedora_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is Fedora based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$FEDORA_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_centos_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is CentOS based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$CENTOS_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_guix_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is Guix based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$GUIX_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_freebsd_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is FreeBSD based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$FREEBSD_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_openbsd_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is OpenBSD based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$OPENBSD_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function is_netbsd_based() {
	local DISTRO="$1"
	local LOG="$2"

	if [[ "$LOG" == "true" ]]; then
		echo "[<==] Checking if $DISTRO is NetBSD based..."
	fi

	local FOUND=false
	for BASE_DISTRO in "$NETBSD_BASED[@]"; do
		if [[ "$DISTRO" == "$BASE_DISTRO" ]]; then
			local FOUND=true
			break
		fi
	done

	if $FOUND; then
		return 0
	else
		return 1
	fi
}

function prompt_user() {
	local PROMPT="$1"
	local DEFAULT="${2:-N}"

	read -rp "$PROMPT (y/n): " USER_INPUT
	local USER_INPUT=$(echo "$USER_INPUT" | sed "s/^[[:space:]]*//;s/[[:space:]]*$//" | tr "[:upper:]" "[:lower:]")	
	
	if [[ -z "$USER_INPUT" ]]; then
		local USER_INPUT=$(echo "$DEFAULT" | tr "[:upper:]" "[:lower:]")
	fi

	case "$USER_INPUT" in
		y|ye|es|yes)
			return 0
			;;
		n|no)
			return 1
			;;
		*)
			return 1
			;;
	esac
}

function get_user_distro() {
	if [[ -f /etc/os-release ]]; then
		source /etc/os-release
		echo "$ID"
	else
		echo -e "${RED}[!] Error: Cannot detect distribution from /etc/os-release.${RESET}"
		read -p "[==>] Write your OS name yourself: " ID
		echo "$ID"
	fi
}

function get_init_system() {
	if [[ -f /run/systemd/system ]]; then
		echo "systemd"
		return
	fi

	if [[ -d /etc/init.d ]]; then
		if [[ -d /etc/init.d/openrc ]]; then
			echo "openrc"
			return
		else
			echo "sysvinit"
			return
		fi
	fi

	if [[ -d /etc/s6 ]]; then
		echo "s6"
		return
	fi

	if [[ -d /etc/runit ]]; then
		echo "runit"
		return
	fi

	local INIT_PID=$(ps -p 1 -o comm= 2>/dev/null)
	if [[ "$INIT_PID" == "init" ]]; then
		echo "init"
		return
	fi

	echo "unknown"
}

the_unix_manager_tester
