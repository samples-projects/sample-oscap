# oscap

OpenSCAPの調査用のプロジェクト。

## 使い方

```bash
vagrant up online
```

```bash
$ ls /usr/share/xml/scap/ssg/content/
ssg-firefox-cpe-dictionary.xml  ssg-jre-oval.xml              ssg-rhel7-ds.xml
ssg-firefox-cpe-oval.xml        ssg-jre-xccdf.xml             ssg-rhel7-ocil.xml
ssg-firefox-ds-1.2.xml          ssg-rhel6-cpe-dictionary.xml  ssg-rhel7-oval.xml
ssg-firefox-ds.xml              ssg-rhel6-cpe-oval.xml        ssg-rhel7-xccdf.xml
ssg-firefox-ocil.xml            ssg-rhel6-ds-1.2.xml          ssg-rhel8-cpe-dictionary.xml
ssg-firefox-oval.xml            ssg-rhel6-ds.xml              ssg-rhel8-cpe-oval.xml
ssg-firefox-xccdf.xml           ssg-rhel6-ocil.xml            ssg-rhel8-ds-1.2.xml
ssg-jre-cpe-dictionary.xml      ssg-rhel6-oval.xml            ssg-rhel8-ds.xml
ssg-jre-cpe-oval.xml            ssg-rhel6-xccdf.xml           ssg-rhel8-ocil.xml
ssg-jre-ds-1.2.xml              ssg-rhel7-cpe-dictionary.xml  ssg-rhel8-oval.xml
ssg-jre-ds.xml                  ssg-rhel7-cpe-oval.xml        ssg-rhel8-xccdf.xml
ssg-jre-ocil.xml                ssg-rhel7-ds-1.2.xml
```

```bash
$ oscap -V
OpenSCAP command line tool (oscap) 1.3.2
Copyright 2009--2018 Red Hat Inc., Durham, North Carolina.

==== Supported specifications ====
XCCDF Version: 1.2
OVAL Version: 5.11.1
CPE Version: 2.3
CVSS Version: 2.0
CVE Version: 2.0
Asset Identification Version: 1.1
Asset Reporting Format Version: 1.1
CVRF Version: 1.1

==== Capabilities added by auto-loaded plugins ====
No plugins have been auto-loaded...

==== Paths ====
Schema files: /usr/share/openscap/schemas
Default CPE files: /usr/share/openscap/cpe

==== Inbuilt CPE names ====
Red Hat Enterprise Linux - cpe:/o:redhat:enterprise_linux
Red Hat Enterprise Linux 5 - cpe:/o:redhat:enterprise_linux:5
Red Hat Enterprise Linux 6 - cpe:/o:redhat:enterprise_linux:6
Red Hat Enterprise Linux 7 - cpe:/o:redhat:enterprise_linux:7
Red Hat Enterprise Linux 8 - cpe:/o:redhat:enterprise_linux:8
Oracle Linux 5 - cpe:/o:oracle:linux:5
Oracle Linux 6 - cpe:/o:oracle:linux:6
Oracle Linux 7 - cpe:/o:oracle:linux:7
Oracle Linux 8 - cpe:/o:oracle:linux:8
Community Enterprise Operating System 5 - cpe:/o:centos:centos:5
Community Enterprise Operating System 6 - cpe:/o:centos:centos:6
Community Enterprise Operating System 7 - cpe:/o:centos:centos:7
Scientific Linux 5 - cpe:/o:scientificlinux:scientificlinux:5
Scientific Linux 6 - cpe:/o:scientificlinux:scientificlinux:6
Scientific Linux 7 - cpe:/o:scientificlinux:scientificlinux:7
Fedora 16 - cpe:/o:fedoraproject:fedora:16
Fedora 17 - cpe:/o:fedoraproject:fedora:17
Fedora 18 - cpe:/o:fedoraproject:fedora:18
Fedora 19 - cpe:/o:fedoraproject:fedora:19
Fedora 20 - cpe:/o:fedoraproject:fedora:20
Fedora 21 - cpe:/o:fedoraproject:fedora:21
Fedora 22 - cpe:/o:fedoraproject:fedora:22
Fedora 23 - cpe:/o:fedoraproject:fedora:23
Fedora 24 - cpe:/o:fedoraproject:fedora:24
Fedora 25 - cpe:/o:fedoraproject:fedora:25
Fedora 26 - cpe:/o:fedoraproject:fedora:26
Fedora 27 - cpe:/o:fedoraproject:fedora:27
Fedora 28 - cpe:/o:fedoraproject:fedora:28
Fedora 29 - cpe:/o:fedoraproject:fedora:29
Fedora 30 - cpe:/o:fedoraproject:fedora:30
Fedora 31 - cpe:/o:fedoraproject:fedora:31
Fedora 32 - cpe:/o:fedoraproject:fedora:32
SUSE Linux Enterprise all versions - cpe:/o:suse:sle
SUSE Linux Enterprise Server 10 - cpe:/o:suse:sles:10
SUSE Linux Enterprise Desktop 10 - cpe:/o:suse:sled:10
SUSE Linux Enterprise Server 11 - cpe:/o:suse:linux_enterprise_server:11
SUSE Linux Enterprise Desktop 11 - cpe:/o:suse:linux_enterprise_desktop:11
SUSE Linux Enterprise Server 12 - cpe:/o:suse:sles:12
SUSE Linux Enterprise Desktop 12 - cpe:/o:suse:sled:12
openSUSE 11.4 - cpe:/o:opensuse:opensuse:11.4
openSUSE 13.1 - cpe:/o:opensuse:opensuse:13.1
openSUSE 13.2 - cpe:/o:opensuse:opensuse:13.2
openSUSE 42.1 - cpe:/o:novell:leap:42.1
openSUSE Leap 42.1 - cpe:/o:opensuse:leap:42.1
openSUSE 42.2 - cpe:/o:novell:leap:42.2
openSUSE Leap 42.2 - cpe:/o:opensuse:leap:42.2
openSUSE Leap 42.3 - cpe:/o:opensuse:leap:42.3
openSUSE Leap 15.0 - cpe:/o:opensuse:leap:15.0
openSUSE All Versions - cpe:/o:opensuse:opensuse
Red Hat Enterprise Linux Optional Productivity Applications - cpe:/a:redhat:rhel_productivity
Red Hat Enterprise Linux Optional Productivity Applications 5 - cpe:/a:redhat:rhel_productivity:5
Wind River Linux all versions - cpe:/o:windriver:wrlinux
Wind River Linux 8 - cpe:/o:windriver:wrlinux:8
Wind River Linux 1019 - cpe:/o:windriver:wrlinux:1019
Microsoft Windows 7 - cpe:/o:microsoft:windows_7
Microsoft Windows 8 - cpe:/o:microsoft:windows_8
Microsoft Windows 8.1 - cpe:/o:microsoft:windows_8.1
Microsoft Windows 10 - cpe:/o:microsoft:windows_10
Microsoft Windows Server 2008 - cpe:/o:microsoft:windows_server_2008
Microsoft Windows Server 2012 - cpe:/o:microsoft:windows_server_2012
Microsoft Windows Server 2016 - cpe:/o:microsoft:windows_server_2016

==== Supported OVAL objects and associated OpenSCAP probes ====
OVAL family   OVAL object                  OpenSCAP probe
----------    ----------                   ----------
independent   environmentvariable          probe_environmentvariable
independent   environmentvariable58        probe_environmentvariable58
independent   family                       probe_family
independent   filehash                     probe_filehash
independent   filehash58                   probe_filehash58
independent   system_info                  probe_system_info
independent   textfilecontent              probe_textfilecontent
independent   textfilecontent54            probe_textfilecontent54
independent   variable                     probe_variable
independent   xmlfilecontent               probe_xmlfilecontent
linux         iflisteners                  probe_iflisteners
linux         inetlisteningservers         probe_inetlisteningservers
linux         partition                    probe_partition
linux         rpminfo                      probe_rpminfo
linux         rpmverify                    probe_rpmverify
linux         rpmverifyfile                probe_rpmverifyfile
linux         rpmverifypackage             probe_rpmverifypackage
linux         selinuxboolean               probe_selinuxboolean
linux         selinuxsecuritycontext       probe_selinuxsecuritycontext
linux         systemdunitdependency        probe_systemdunitdependency
linux         systemdunitproperty          probe_systemdunitproperty
unix          dnscache                     probe_dnscache
unix          file                         probe_file
unix          fileextendedattribute        probe_fileextendedattribute
unix          gconf                        probe_gconf
unix          interface                    probe_interface
unix          password                     probe_password
unix          process                      probe_process
unix          process58                    probe_process58
unix          routingtable                 probe_routingtable
unix          runlevel                     probe_runlevel
unix          shadow                       probe_shadow
unix          symlink                      probe_symlink
unix          sysctl                       probe_sysctl
unix          uname                        probe_uname
unix          xinetd                       probe_xinetd
```
