# oscap

OpenSCAPの調査用のプロジェクト。

## 動作環境

- vagrant: 2.2.10
- virtualbox: 6.1.12

## vagrantの使い方

### 基本的な使い方

起動。

```shell
vagrant up
```

停止。

```shell
vagrant halt
```

廃棄。

```shell
vagrant destroy
```

boxの状況確認。

```shell
vagrant status
```

ssh接続。

```shell
vagrant ssh
```

### リリース

boxを作成。

```ssh
vagrant up
```

作成したboxを永続化。

```ssh
vagrant package
```

永続化したboxをアップロード。

```ssh
./upload.sh
```

永続化したboxを削除。

```ssh
rm -rf package.box
vagrant destroy
```

### マニュアル

以下のサイト参照。

- [vagrant command](https://qiita.com/pugiemonn/items/bcd95a35c3ec7624cd61)
- <https://www.vagrantup.com/docs/vagrantfile>

## OpenSCAP

### scap-security-guide

インストール。

```shell
yum install scap-security-guide
```

SCAPは、`/usr/share/xml/scap/ssg/content/`にインストールされる。

### scap-workbench

インストール。

```shell
yum install scap-workbench
```

ログのサンプルは以下。

[log](samples/log.txt)

修復用スクリプトのサンプルは以下。

- [SHELL](samples/remediation.sh)

レポートのサンプルは以下。

- [ARF](samples/ssg-centos7-ds-arf.xml)
- [HTML](samples/ssg-centos7-ds-xccdf.report.html)
- [XCCDF](samples/ssg-centos7-ds-xccdf.results.xml)

### Base

インストール。

```shell
yum install openscap-scanner
```

動作確認。

```shell
$ oscap -V
OpenSCAP command line tool (oscap) 1.2.17
Copyright 2009--2017 Red Hat Inc., Durham, North Carolina.

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
Probes: /usr/libexec/openscap

==== Inbuilt CPE names ====
Red Hat Enterprise Linux - cpe:/o:redhat:enterprise_linux
Red Hat Enterprise Linux 5 - cpe:/o:redhat:enterprise_linux:5
Red Hat Enterprise Linux 6 - cpe:/o:redhat:enterprise_linux:6
Red Hat Enterprise Linux 7 - cpe:/o:redhat:enterprise_linux:7
Red Hat Enterprise Linux 8 - cpe:/o:redhat:enterprise_linux:8
Oracle Linux 5 - cpe:/o:oracle:linux:5
Oracle Linux 6 - cpe:/o:oracle:linux:6
Oracle Linux 7 - cpe:/o:oracle:linux:7
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
openSUSE 42.2 - cpe:/o:novell:leap:42.2
openSUSE All Versions - cpe:/o:opensuse:opensuse
Red Hat Enterprise Linux Optional Productivity Applications - cpe:/a:redhat:rhel_productivity
Red Hat Enterprise Linux Optional Productivity Applications 5 - cpe:/a:redhat:rhel_productivity:5
Wind River Linux all versions - cpe:/o:windriver:wrlinux
Wind River Linux 8 - cpe:/o:windriver:wrlinux:8

==== Supported OVAL objects and associated OpenSCAP probes ====
OVAL family   OVAL object                  OpenSCAP probe
----------    ----------                   ----------
(null)        system_info                  probe_system_info
independent   family                       probe_family
independent   filehash                     probe_filehash
independent   environmentvariable          probe_environmentvariable
independent   textfilecontent54            probe_textfilecontent54
independent   textfilecontent              probe_textfilecontent
independent   variable                     probe_variable
independent   xmlfilecontent               probe_xmlfilecontent
independent   environmentvariable58        probe_environmentvariable58
independent   filehash58                   probe_filehash58
linux         inetlisteningservers         probe_inetlisteningservers  
linux         rpminfo                      probe_rpminfo
linux         partition                    probe_partition
linux         iflisteners                  probe_iflisteners
linux         rpmverify                    probe_rpmverify
linux         rpmverifyfile                probe_rpmverifyfile
linux         rpmverifypackage             probe_rpmverifypackage
linux         selinuxboolean               probe_selinuxboolean
linux         selinuxsecuritycontext       probe_selinuxsecuritycontext
linux         systemdunitproperty          probe_systemdunitproperty
linux         systemdunitdependency        probe_systemdunitdependency
unix          file                         probe_file
unix          interface                    probe_interface
unix          password                     probe_password
unix          process                      probe_process
unix          runlevel                     probe_runlevel
unix          shadow                       probe_shadow
unix          uname                        probe_uname
unix          xinetd                       probe_xinetd
unix          sysctl                       probe_sysctl
unix          process58                    probe_process58
unix          fileextendedattribute        probe_fileextendedattribute
unix          routingtable                 probe_routingtable
unix          symlink                      probe_symlink
```

SCAPの内容を確認する。

xccdfファイル。

```shell
$ oscap info /usr/share/xml/scap/ssg/content/ssg-centos7-xccdf.xml
Document type: XCCDF Checklist
Checklist version: 1.1
Imported: 2020-04-02T13:13:58
Status: draft
Generated: 2020-04-02
Resolved: true
Profiles:
        Title: PCI-DSS v3.2.1 Control Baseline for Red Hat Enterprise Linux 7
                Id: pci-dss
        Title: Standard System Security Profile for Red Hat Enterprise Linux 7
                Id: standard
Referenced check files:
        ssg-rhel7-oval.xml
                system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        ssg-rhel7-ocil.xml
                system: http://scap.nist.gov/schema/ocil/2
        https://www.redhat.com/security/data/oval/com.redhat.rhsa-RHEL7.xml
                system: http://oval.mitre.org/XMLSchema/oval-definitions-5
```

dsファイル。

```shell
$ oscap info /usr/share/xml/scap/ssg/content/ssg-centos7-ds.xml
Document type: Source Data Stream
Imported: 2020-04-02T13:14:30

Stream: scap_org.open-scap_datastream_from_xccdf_ssg-rhel7-xccdf-1.2.xml
Generated: (null)
Version: 1.3
Checklists:
        Ref-Id: scap_org.open-scap_cref_ssg-rhel7-xccdf-1.2.xml
WARNING: Datastream component 'scap_org.open-scap_cref_security-data-oval-com.redhat.rhsa-RHEL7.xml' points out to the remote 'https://www.redhat.com/security/data/oval/com.redhat.rhsa-RHEL7.xml'. Use '--fetch-remote-resources' option to download it.
WARNING: Skipping 'https://www.redhat.com/security/data/oval/com.redhat.rhsa-RHEL7.xml' file which is referenced from datastream
                Status: draft
                Generated: 2020-04-02
                Resolved: true
                Profiles:
                        Title: PCI-DSS v3.2.1 Control Baseline for Red Hat Enterprise Linux 7
                                Id: xccdf_org.ssgproject.content_profile_pci-dss
                        Title: Standard System Security Profile for Red Hat Enterprise Linux 7
                                Id: xccdf_org.ssgproject.content_profile_standard
                Referenced check files:
                        ssg-rhel7-oval.xml
                                system: http://oval.mitre.org/XMLSchema/oval-definitions-5
                        ssg-rhel7-ocil.xml
                                system: http://scap.nist.gov/schema/ocil/2
                        security-data-oval-com.redhat.rhsa-RHEL7.xml
                                system: http://oval.mitre.org/XMLSchema/oval-definitions-5
        Ref-Id: scap_org.open-scap_cref_ssg-rhel7-pcidss-xccdf-1.2.xml
WARNING: Skipping 'https://www.redhat.com/security/data/oval/com.redhat.rhsa-RHEL7.xml' file which is referenced from datastream
                Status: draft
                Generated: 2020-04-02
                Resolved: true
                Profiles:
                Referenced check files:
                        ssg-rhel7-oval.xml
                                system: http://oval.mitre.org/XMLSchema/oval-definitions-5
                        ssg-rhel7-ocil.xml
                                system: http://scap.nist.gov/schema/ocil/2
                        security-data-oval-com.redhat.rhsa-RHEL7.xml
                                system: http://oval.mitre.org/XMLSchema/oval-definitions-5
Checks:
        Ref-Id: scap_org.open-scap_cref_ssg-rhel7-oval.xml
        Ref-Id: scap_org.open-scap_cref_ssg-rhel7-ocil.xml
        Ref-Id: scap_org.open-scap_cref_ssg-rhel7-cpe-oval.xml
        Ref-Id: scap_org.open-scap_cref_ssg-rhel7-oval.xml000
        Ref-Id: scap_org.open-scap_cref_ssg-rhel7-ocil.xml000
        Ref-Id: scap_org.open-scap_cref_security-data-oval-com.redhat.rhsa-RHEL7.xml
Dictionaries:
        Ref-Id: scap_org.open-scap_cref_ssg-rhel7-cpe-dictionary.xml
```

診断実行。

```shell
oscap xccdf eval \
--remediate \
--profile xccdf_org.ssgproject.content_profile_standard \
--fetch-remote-resources \
--results-arf results.xml \
/usr/share/xml/scap/ssg/content/ssg-centos7-ds.xml
```

各オプションの意味は以下の通り。

```shell
$ oscap xccdf eval -h
oscap -> xccdf -> eval

Perform evaluation driven by XCCDF file and use OVAL as checking engine

Usage: oscap [options] xccdf eval [options] INPUT_FILE [oval-definitions-files]

INPUT_FILE - XCCDF file or a source data stream file

Options:
   --profile <name>              - The name of Profile to be evaluated.
   --rule <name>                 - The name of a single rule to be evaluated.
   --tailoring-file <file>       - Use given XCCDF Tailoring file.
   --tailoring-id <component-id> - Use given DS component as XCCDF Tailoring file.
   --cpe <name>                  - Use given CPE dictionary or language (autodetected)
                                   for applicability checks.
   --oval-results                - Save OVAL results as well.
   --sce-results                 - Save SCE results as well. (DEPRECATED! use --check-engine-results)
   --check-engine-results        - Save results from check engines loaded from plugins as well.
   --export-variables            - Export OVAL external variables provided by XCCDF.
   --results <file>              - Write XCCDF Results into file.
   --results-arf <file>          - Write ARF (result data stream) into file.
   --stig-viewer <file>          - Writes XCCDF results into FILE in a format readable by DISA STIG Viewer
   --thin-results                - Thin Results provides only minimal amount of information in OVAL/ARF results.
                                   The option --without-syschar is automatically enabled when you use Thin Results.
   --without-syschar             - Don't provide system characteristic in OVAL/ARF result files.
   --report <file>               - Write HTML report into file.
   --skip-valid                  - Skip validation.
   --fetch-remote-resources      - Download remote content referenced by XCCDF.
   --progress                    - Switch to sparse output suitable for progress reporting.
                                   Format is "$rule_id:$result\n".
   --datastream-id <id>          - ID of the datastream in the collection to use.
                                   (only applicable for source datastreams)
   --xccdf-id <id>               - ID of component-ref with XCCDF in the datastream that should be evaluated.
                                   (only applicable for source datastreams)
   --benchmark-id <id>           - ID of XCCDF Benchmark in some component in the datastream that should be evaluated.
                                   (only applicable for source datastreams)
                                   (only applicable when datastream-id AND xccdf-id are not specified)
   --remediate                   - Automatically execute XCCDF fix elements for failed rules.
                                   Use of this option is always at your own risk.
   --verbose <verbosity_level>   - Turn on verbose mode at specified verbosity level.
   --verbose-log-file <file>     - Write verbose informations into file.
```
