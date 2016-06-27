# nis

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with nis](#setup)
    * [What nis affects](#what-nis-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with nis](#beginning-with-nis)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Pretty simple NIS client module.

Sets up a NIS client via ypbind/yp.conf, for either a broadcast domain, or list of servers specifically. Does NOT modify nsswitch/authconfig/pam/etc. This JUST sets up NIS. Making your auth' stack use it is up to you. 

## Setup

### What nis affects **OPTIONAL**

* ypbind package
* ypbind service
* /etc/yp.conf


### Beginning with nis

`puppet module install sjoeboo-nis`

## Usage

`include ::nis`

## Reference

`package`: *String* Package name to manage *Default* **'ypbind'**

`domain`: *String* NIS domain to join/use, *Default* **'nis'**

`servers`: *Array* NIS servers to use if not using a broadcast domain *Default* **[]**

`broadcast`: *Boolean* Toggle broadcast on/off. *Default* **false**

## Limitations

This is fairly Redhat (family, ie CentOS, etc) sepecific, though, basic. PR's welcome!
