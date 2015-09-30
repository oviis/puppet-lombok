#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with lombok](#setup)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

The module will install on Debian derivates a lombok.jar

## Module Description

This module install lombok with eclipse, but you need for this to work a machine who have an Xserver inside, with GUI 

## Setup

### What lombok affects

* the lombok jar is in Sixt environment stored, without beeing into this environment, 
you should need to change the variable  `$install_location` from manifests/params.pp to download it directly from the spring download page  
* the lombok.jar can only be accesible with the springiotools

### Setup Requirements **OPTIONAL**

you should need to change the variable  `$default_url_location` from manifests/params.pp to download it directly from the spring download page  

### Beginning with lombok

## Usage

STS should be started from location `/opt/sts-bundle/sts-home/STS`

## Reference

for this to run, you NEED the `puppet-springiotools` https://github.com/oviis/puppet-springiotools !!!

## Limitations

at the moment it is only limited on Debian derivates, like Linux Ubuntu, Mint 

also this module need the `puppet-springiotools` to work, https://github.com/oviis/puppet-springiotools !!!

## Development

you can fork or copy and distribute the module 

