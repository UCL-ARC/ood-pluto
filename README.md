# Batch Connect - Pluto Server

A fork of the [official example Batch Connect app](https://github.com/OSC/bc_example_jupyter), converting it to launch a [Pluto](https://plutojl.org/) server instead of a Jupyter server.


## Prerequisites

This Batch Connect app requires the following software be available on the
**compute nodes** that the batch job is intended to run on (**NOT** the
OnDemand node):

- Julia (tested with 1.10.1)
- Environment Modules (to load the Julia module)

## Install

1) Clone the repository under one of your OnDemand's application directories, e.g. `/var/www/ood/apps/sys/`
2) Customise the scripts in `template` to be able to start a Pluto server on the intended system.

The submission script details can be inherited from the cluster definition unless you need something different.

All the configuration for the JupyterLab server is handled by generating a config file in `template/before.sh.erb`, using info passed down from the application. Look there for details and to alter that.

The details of how Julia is run are in `template/script.sh.erb`, including the setup of any modules required.
