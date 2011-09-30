#
# Cookbook Name:: el-sysctl
# Recipe:: default
#
# Copyright 2010, Eric G. Wolfe
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default["net"]["ipv4"]["ip_forward"] = 0
default["net"]["ipv4"]["tcp_syncookies"] = 1
default["net"]["ipv4"]["conf"]["default"]["rp_filter"] = 1
default["net"]["ipv4"]["conf"]["default"]["accept_source_route"] = 0
default["sysctl"]["vm"]["nr_hugepages"] = nil

default["kernel"]["sysrq"] = 0
default["kernel"]["core_uses_pid"] = 1
default["kernel"]["msgmnb"] = 65536
default["kernel"]["msgmax"] = 65536
default["kernel"]["shmmax"] = 4294967295
default["kernel"]["shmall"] = 268435456

default["sysctl"]["is_oracle"] = false
default["sysctl"]["has_iscsi"] = false
