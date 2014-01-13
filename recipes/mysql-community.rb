# Encoding: utf-8
#
# Author:: zaininnari (<zaininnari@gmail.com>)
# Cookbook Name:: yum
# Recipe:: remi-php55
#
# Copyright:: Copyright (c) 2011 Opscode, Inc.
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

yum_repository 'mysql-community' do
  description "Les RPM de remi en test pour Enterprise Linux #{node['platform_version']} - $basearch"
  mirrorlist node['yum']['mysql-community']['url']
  failovermethod 'priority'
  includepkgs node['yum']['mysql-community']['includepkgs']
  exclude node['yum']['mysql-community']['exclude']
  action :create
end
