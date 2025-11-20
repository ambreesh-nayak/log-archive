# Log Archive Tool

This is a CLI tool that compresses log files into a `.tar.gz` archive on demand.  
It helps keep systems clean and maintain old logs safely.

Project URL:  
https://roadmap.sh/projects/log-archive-tool

---

## Features

- Accepts any log directory as input  
- Compresses logs into `tar.gz` archives  
- Generated archives stored in the `archives/` folder  
- Logs the date & time of each archive in `archive.log`  
- Lightweight and works on any Linux/Unix system  

---

## Usage

```bash
./log-archive.sh <log-directory>
