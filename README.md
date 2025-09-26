<h1 align="center">
  <br>
  <a href="https://github.com/silentfalcon/ReconSpyderX"><img src="https://raw.githubusercontent.com/silentfalcon/ReconSpyderX/main/images/banner.png" alt="ReconSpyderX"></a>
  <br>
  ReconSpyderX
  <br>
</h1>

<p align="center">
  <a href="https://github.com/silentfalcon/ReconSpyderX/releases">
    <img src="https://img.shields.io/badge/release-v1.0-green">
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg">
  </a>
  <a href="https://github.com/silentfalcon/ReconSpyderX/issues?q=is%3Aissue+is%3Aclosed">
    <img src="https://img.shields.io/github/issues-closed-raw/silentfalcon/ReconSpyderX.svg">
  </a>
  <a href="https://github.com/silentfalcon/ReconSpyderX/wiki">
    <img src="https://img.shields.io/badge/doc-wiki-blue.svg">
  </a>
</p>

---

**ReconSpyderX** is an automated reconnaissance tool built for **bug bounty hunters** and **penetration testers**.  
It streamlines reconnaissance by integrating subdomain enumeration, HTTP probing, vulnerability scanning, dorking, and OSINT into a single workflow.

---

## 📔 Table of Contents
- [✨ Features](#-features)
- [📦 Installation](#-installation)
- [🚀 Usage](#-usage)
- [🧾 Output](#-output)
- [⚙️ Requirements](#️-requirements)
- [⚠️ Disclaimer](#️-disclaimer)
- [🤝 Contributing](#-contributing)
- [📜 License](#-license)

---

## ✨ Features
- Subdomain enumeration (**Subfinder**)
- Live host detection (**httpx**)
- Vulnerability scanning (**nuclei**)
- Wayback Machine URL collection (**waybackurls**)
- DAST scanning on archived URLs
- Shodan IP search & IP-based nuclei scanning
- Google & GitHub dork links

---

## 📦 Installation

### Clone the repository
```bash
git clone https://github.com/silentfalcon/ReconSpyderX.git
cd ReconSpyderX
```

### Install dependencies
```bash
chmod +x reconspyderx.sh tools.sh
bash tools.sh
```

Make sure your Go bin path is exported:
```bash
export PATH=$PATH:$HOME/go/bin
```

---

## 🚀 Usage
```bash
bash reconspyderx.sh -u target.com
```

All results will be saved in a folder named `target.com-recon/`.

---

## 🧾 Output
Example output directory:
```
target.com-recon/
│── subdomains.txt
│── httpx.txt
│── nuclei-output.txt
│── wayback.txt
│── dast-result.txt
│── shodan.txt
│── ip-nuclei.txt
│── google-dorks.txt
│── github-dorks.txt
```

---

## ⚙️ Requirements
- Linux / macOS
- **Go 1.18+**
- **pip3** (for Shodan CLI)
- Bash shell

---

## ⚠️ Disclaimer
This tool is for **educational purposes** and **authorized security testing only**.  
The author assumes **no liability** for misuse or damage caused by this tool.  
Always ensure you have **explicit permission** before scanning any target.

---

## 🤝 Contributing
Contributions, issues, and feature requests are welcome!  
Please read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting.

---

## 📜 License
This project is licensed under the **MIT License** — see [LICENSE](LICENSE) for details.

---

## ⭐ Star History
[![Star History Chart](https://api.star-history.com/svg?repos=silentfalcon/ReconSpyderX&type=Date)](https://star-history.com/#silentfalcon/ReconSpyderX&Date)

---

<p align="center">Made with ❤️ by <a href="https://github.com/silentfalcon">RootXploit.0x</a></p>
