#!/usr/bin/env bash

print_banner() {
  echo -e "${RED}"
  echo "__________                             _________                .___          ____  ___"
  echo " \____    \__ __  ____   ____   ____  /   _____/_____ ___.__. __| _/__________\   \/  /"
  echo " |       _// __ \_/ ___\/  _ \ /    \ \_____  \____ <   |  |/ __ |/ __ \_  __ \     / "
  echo " |    |   \  ___/\  \__(  <_> )   |  \/        \  |_> >___  / /_/ \  ___/|  | \/     \ "
  echo " |____|_  /\___  >\___  >____/|___|  /_______  /   __// ____\____ |\___  >__| /___/\  \ "
  echo "        \/     \/     \/           \/        \/|__|   \/         \/    \/           \_/"
  echo -e "${BLUE}🔥 ReconSpyderX : by RootXploit.0x"
  echo -e "${BLUE}GitHub: https://github.com/silentfalcon"
  echo -e "${RESET}"
}
# install_tools.sh
RED='\033[0;31m'
RESET='\033[0m'
print_banner
# Single-file installer listing repo links and install commands for each tool.
# Usage: bash install_tools.sh
# Requires: go (1.18+ recommended), pip3 for shodan CLI

# By : RootXploit.0x
# GitHub: https://github.com/silentfalcon

set -euo pipefail


GREEN='\033[0;32m'
NC='\033[0m'
GOBIN=${GOBIN:-"$HOME/go/bin"}

echo -e "${RED}GOBIN=$GOBIN${NC}"

# Ensure Go
if ! command -v go >/dev/null 2>&1; then
  echo "ERROR: 'go' not found. Install Go first: https://go.dev/dl/"
  exit 1
fi

# Ensure pip3 for shodan
if ! command -v pip3 >/dev/null 2>&1; then
  echo "Warning: 'pip3' not found. Shodan CLI install will be skipped."
fi

echo -e "\n${RED}Installing Go tools (binaries will go to $GOBIN):${NC}\n"

# Subfinder
# Repo: https://github.com/projectdiscovery/subfinder
echo -e "${GREEN}-> subfinder: github.com/projectdiscovery/subfinder/v2/cmd/subfinder${NC}"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# httpx
# Repo: https://github.com/projectdiscovery/httpx
echo -e "${GREEN}-> httpx: github.com/projectdiscovery/httpx/cmd/httpx${NC}"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

# nuclei
# Repo: https://github.com/projectdiscovery/nuclei
echo -e "${GREEN}-> nuclei: github.com/projectdiscovery/nuclei/v3/cmd/nuclei${NC}"
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

# waybackurls
# Repo: https://github.com/tomnomnom/waybackurls
echo -e "${GREEN}-> waybackurls: github.com/tomnomnom/waybackurls${NC}"
go install github.com/tomnomnom/waybackurls@latest

# Shodan CLI (Python)
# Docs: https://github.com/achillean/shodan-python (official client)
echo -e "${GREEN}-> shodan (Python CLI)${NC}"
if command -v pip3 >/dev/null 2>&1; then
  pip3 install --user shodan
else
  echo "   Skipped shodan install: pip3 not found"
fi

# Google dork - example Go implementation (replace with preferred repo)
# Example repo: https://github.com/Abhinandan-Khurana/go-dork-google
echo -e "${GREEN}-> google-dork (example): github.com/Abhinandan-Khurana/go-dork-google${NC}"
# Uncomment and replace with your preferred google-dork repo:
# go install github.com/Abhinandan-Khurana/go-dork-google@latest

# GitHub dork - example repo (replace with preferred repo)
# Example repo: https://github.com/techgaun/github-dorks
echo -e "${GREEN}-> github-dork (example): github.com/techgaun/github-dorks${NC}"
# Uncomment and replace with your preferred github-dork repo:
# go install github.com/techgaun/github-dorks@latest

echo -e "\n${GREEN}Finished installing selected tools.${NC}"

echo -e "${BLUE}Make sure $GOBIN is on your PATH, for example add to ~/.bashrc or ~/.profile:${NC}\n"
echo -e "${GREEN}  export PATH=\"$PATH:$HOME/go/bin\"${NC}"

echo -e "\n${BLUE}Notes:${NC}\n - For reproducible installs pin versions by replacing @latest with @vX.Y.Z\n - Replace the example google-dork/github-dork repos with the specific repo you want and uncomment the corresponding go install lines.\n"
