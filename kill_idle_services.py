services = [
"acpi-support",
"acpid",
"alsa-restore",
"alsa-store",
"anacron",
"apparmor",
"apport",
"atd",
"avahi-daemon",
"bluetooth",
"bootlogd",
"brltty",
"console-setup",
"cron",
"cups",
"dbus",
#"dmesg",
"dns-clean",
"failsafe-x",
"friendly-recovery",
#"grub-common",
"hostname",
"hwclock",
"hwclock-save",
"irqbalance",
#"kerneloops",
#"killprocs",
"lightdm",
"modemmanager",
"module-init-tools",
"network-interface",
"network-interface-container",
"network-interface-security",
"network-manager",
"networking",
"ondemand",
"passwd",
"plymouth",
"plymouth-log",
"plymouth-ready",
"plymouth-splash",
"plymouth-stop",
"plymouth-upstart-bridge",
"pppd-dns",
# "procps",
"pulseaudio",
"rc.local",
"resolvconf",
"rfkill-restore",
"rfkill-store",
"rsync",
"rsyslog",
"saned",
"screen-cleanup",
# "sendsigs",
"setvtrgb",
"speech-dispatcher",
"ssh",
"stop-bootlogd",
"stop-bootlogd-single",
"sudo",
"udev",
"udev-fallback-graphics",
"udev-finish",
"udevmonitor",
"udevtrigger",
"ufw",
#"umountfs",
#"umountnfs.sh",
#"umountroot",
"unattended-upgrades",
# "urandom",
"whoopsie"
# "x11-common",
# "xend",
# "xendomains" 
]

import subprocess
for x in xrange(0,len(services)):
  #subprocess.call(["ls", services[x], "-l" ])
  subprocess.call(["service", services[x], "stop" ])
  #subprocess.call(["update-rc.d","-f", services[x], "remove" ])
