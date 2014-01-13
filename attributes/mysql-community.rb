# Encoding: utf-8
#
# Cookbook Name:: yum
# Attributes:: mysql-community
#
# Copyright 2011, Opscode, Inc.
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

case node['platform']
when 'fedora'
  default['yum']['mysql-community']['url'] = "http://repo.mysql.com/mysql-community-release-fc#{node['platform_version'].to_i}.rpm"
else
  default['yum']['mysql-community']['url'] = "http://repo.mysql.com/mysql-community-release-el#{node['platform_version'].to_i}noarch.rpm"
end

default['yum']['mysql-community']['includepkgs'] = nil
default['yum']['mysql-community']['exclude'] = nil
