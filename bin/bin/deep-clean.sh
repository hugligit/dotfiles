#!/bin/bash
# Deep clean script for Debian-based systems

# 1. Remove packages that are no longer needed AND purge their config files
sudo apt autoremove --purge -y

# 2. Remove obsolete package files (.deb) from the apt cache
#    These are packages no longer downloadable (old versions)
sudo apt autoclean -y

# 3. Reduce systemd journal size by keeping only logs from the last 14 days
sudo journalctl --vacuum-time=14d

# 4. Clear temporary files from /var/tmp
sudo rm -rf /var/tmp/*

# 5. Delete old compressed log files (*.gz) in /var/log
sudo find /var/log -type f -name "*.gz" -delete

# 6. Delete unusually large logs (>50 MB) in /var/log
#    This helps remove runaway logs without wiping all logging
sudo find /var/log -type f -size +50M -delete

# Optional: Uncomment to remove ALL cached packages, forcing apt to redownload them
# sudo apt clean

