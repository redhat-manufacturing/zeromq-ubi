# Zeromq Universal Base Image

## Objective

Create a rootless UBI image for zeromq for manufacturing. This is a base image to add things like EII to, so you wont execute this container directly.

### Prerequisites

Fedora 34+ or Rhel8 + machine with podman installed

### Initial Build

To build this container:

```shell
podman build -t zeromq .
```

Output:

```shell
podman build -t zeromq .
STEP 1: FROM registry.access.redhat.com/ubi8/ubi-init:latest
STEP 2: RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
warning: /var/tmp/rpm-tmp.p1wM2i: Header V4 RSA/SHA256 Signature, key ID 2f86d6a1: NOKEY
Retrieving https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
Verifying...                          ########################################
Preparing...                          ########################################
Updating / installing...
epel-release-8-13.el8                 ########################################
--> c45a5021edf
STEP 3: RUN yum install -y python3-paho-mqtt log4cpp llvm-googletest zeromq     && yum clean all        && rm -rf /var/cache/yum
Updating Subscription Management repositories.
Unable to read consumer identity
Subscription Manager is operating in container mode.
Extra Packages for Enterprise Linux Modular 8 - 585 kB/s | 955 kB     00:01    
Extra Packages for Enterprise Linux 8 - x86_64  8.8 MB/s |  10 MB     00:01    
Red Hat Enterprise Linux 8 for x86_64 - AppStre  21 MB/s |  32 MB     00:01    
Red Hat Enterprise Linux 8 for x86_64 - BaseOS   22 MB/s |  37 MB     00:01    
Red Hat Universal Base Image 8 (RPMs) - BaseOS  1.2 MB/s | 793 kB     00:00    
Red Hat Universal Base Image 8 (RPMs) - AppStre 6.7 MB/s | 2.4 MB     00:00    
Red Hat Universal Base Image 8 (RPMs) - CodeRea  51 kB/s |  15 kB     00:00    
Last metadata expiration check: 0:00:01 ago on Thu Oct 14 20:59:39 2021.
Dependencies resolved.
==========================================================================================================
 Package             Arch    Version                               Repository                         Size
==========================================================================================================
Installing:
 llvm-googletest     x86_64  11.0.0-2.module+el8.4.0+8598+a071fcd5 rhel-8-for-x86_64-appstream-rpms  335 k
 log4cpp             x86_64  1.1.3-1.el8                           epel                              133 k
 python3-paho-mqtt   noarch  1.5.0-2.el8                           epel                              110 k
 zeromq              x86_64  4.3.4-2.el8                           epel                              479 k
Installing dependencies:
 libsodium           x86_64  1.0.18-2.el8                          epel                              162 k
 libunwind           x86_64  1.3.1-3.el8                           epel                               75 k
 openpgm             x86_64  5.2.122-21.el8                        epel                              180 k
Enabling module streams:
 llvm-toolset                rhel8                                                                        

Transaction Summary
==========================================================================================================
Install  7 Packages

Total download size: 1.4 M
Installed size: 5.2 M
Downloading Packages:
(1/7): libunwind-1.3.1-3.el8.x86_64.rpm         172 kB/s |  75 kB     00:00    
(2/7): libsodium-1.0.18-2.el8.x86_64.rpm        344 kB/s | 162 kB     00:00    
(3/7): log4cpp-1.1.3-1.el8.x86_64.rpm           257 kB/s | 133 kB     00:00    
(4/7): openpgm-5.2.122-21.el8.x86_64.rpm        1.7 MB/s | 180 kB     00:00    
(5/7): python3-paho-mqtt-1.5.0-2.el8.noarch.rpm 1.4 MB/s | 110 kB     00:00    
(6/7): zeromq-4.3.4-2.el8.x86_64.rpm            2.8 MB/s | 479 kB     00:00    
(7/7): llvm-googletest-11.0.0-2.module+el8.4.0+ 569 kB/s | 335 kB     00:00    
--------------------------------------------------------------------------------
Total                                           1.0 MB/s | 1.4 MB     00:01     
warning: /var/cache/dnf/epel-fafd94c310c51e1e/packages/libsodium-1.0.18-2.el8.x86_64.rpm: Header V3 RSA/SHA256 Signature, key ID 2f86d6a1: NOKEY
Extra Packages for Enterprise Linux 8 - x86_64  1.6 MB/s | 1.6 kB     00:00    
Importing GPG key 0x2F86D6A1:
 Userid     : "Fedora EPEL (8) <epel@fedoraproject.org>"
 Fingerprint: 94E2 79EB 8D8F 25B2 1810 ADF1 21EA 45AB 2F86 D6A1
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
Key imported successfully
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Installing       : openpgm-5.2.122-21.el8.x86_64                          1/7 
  Installing       : libunwind-1.3.1-3.el8.x86_64                           2/7 
  Installing       : libsodium-1.0.18-2.el8.x86_64                          3/7 
  Installing       : zeromq-4.3.4-2.el8.x86_64                              4/7 
  Installing       : llvm-googletest-11.0.0-2.module+el8.4.0+8598+a071fcd   5/7 
  Installing       : python3-paho-mqtt-1.5.0-2.el8.noarch                   6/7 
  Installing       : log4cpp-1.1.3-1.el8.x86_64                             7/7 
  Running scriptlet: log4cpp-1.1.3-1.el8.x86_64                             7/7 
  Verifying        : libsodium-1.0.18-2.el8.x86_64                          1/7 
  Verifying        : libunwind-1.3.1-3.el8.x86_64                           2/7 
  Verifying        : log4cpp-1.1.3-1.el8.x86_64                             3/7 
  Verifying        : openpgm-5.2.122-21.el8.x86_64                          4/7 
  Verifying        : python3-paho-mqtt-1.5.0-2.el8.noarch                   5/7 
  Verifying        : zeromq-4.3.4-2.el8.x86_64                              6/7 
  Verifying        : llvm-googletest-11.0.0-2.module+el8.4.0+8598+a071fcd   7/7 
Installed products updated.

Installed:
  libsodium-1.0.18-2.el8.x86_64                                                 
  libunwind-1.3.1-3.el8.x86_64                                                  
  llvm-googletest-11.0.0-2.module+el8.4.0+8598+a071fcd5.x86_64                  
  log4cpp-1.1.3-1.el8.x86_64                                                    
  openpgm-5.2.122-21.el8.x86_64                                                 
  python3-paho-mqtt-1.5.0-2.el8.noarch                                          
  zeromq-4.3.4-2.el8.x86_64                                                     

Complete!
Updating Subscription Management repositories.
Unable to read consumer identity
Subscription Manager is operating in container mode.
62 files removed
STEP 4: COMMIT zeromq
--> cb83bd19b82
Successfully tagged localhost/zeromq:latest
```