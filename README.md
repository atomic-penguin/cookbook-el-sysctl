DESCRIPTION:
===========

  This cookbook provides provides the ability to manage a sysctl file for
Enterprise Linux based systems.  The default attributes reflect default
sysctl kernel settings as shipped with RHEL 5.

  The iscsi and oracle cookbook both depend on this cookbook as they provide
additional tuning, or overriden, settings.

REQUIREMENTS:
=============

Recommended Cookbooks
------------------
  * oracle
  * iscsi

ATTRIBUTES:
===========

  * net["ipv4"] (namespace)
    - ["ip_forward"]: Servers providing routing need to be set to 1, default 0 
    - ["conf"]["default"]["rp_filter"]: Reverse path filtering, default 1
    - ["conf"]["default"]["accept_source_route"]: Accept source route packets, default 0

  * net["bridge"] (namespace)
    - ["bridge_nf_call_iptables"]: Pass bridged traffic to iptables, default nil
    - ["bridge_nf_call_ip6tables"]: Pass bridged ipv6 traffic to iprables, default nil
    - ["bridge_nf_call_arptables"]: Pass brdiged arp traffic to arptables, default nil

  * kernel (namespace)
    - ["sysrq"]: System request debugging, default 0
    - ["core_uses_pid"]: Core dumps append process ID to filename, default 1
    - ["ipv4"]["tcp_syncookies"]: Use of TCP SYN cookies, default 1
    - ["msgmnb"]: Maximum size of a message in bytes, default 65536
    - ["msgmax"]: Default maximum size of a message queue, default 65536
    - ["shmmax"]: Maximum shared segment size in bytes, default 4294967295
    - ["shmall"]: Maximum number of shared memory segments in pages, default 268435456
    - ["core_pattern"]: File pattern for core dumps

  * fs (namespace)
    - ["suid_dumpable"]: Should processes create core dumps, default nil

  * sysctl["vm"] (namespace)
    - ["nr_hugepages"]: Number of multiple memory pages, default nil
    - ["swappiness"]: How aggressively memory pages are swapped to disk, default nil

USAGE:
======

  Set role specific overrides, and add recipe["el-sysctl"] to runlist
  be sure to modprobre bridge it you get errors regarding the net.bridge.bridge-nf-call* params.

LICENSE AND AUTHOR:
===================

Copyright 2010-2011, Eric G. Wolfe

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

