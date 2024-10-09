# Batch Connect - Jupyter Lab Server

![GitHub Release](https://img.shields.io/github/release/osc/bc_example_jupyter.svg)
![GitHub License](https://img.shields.io/github/license/osc/bc_example_jupyter.svg)

A fork of the [official example Batch Connect app](https://github.com/OSC/bc_example_jupyter)
that launches a Jupyter Lab server within a batch job.

This is part of the [tutorial in how to make OnDemand applications][ood-app-tutorial],
but also covers one of the more popular applications people want to add in to OnDemand.

[ood-app-tutorial]: https://osc.github.io/ood-documentation/latest/app-development/tutorials-interactive-apps/add-jupyter.html#app-development-tutorials-interactive-apps-add-jupyter

## Prerequisites

This Batch Connect app requires the following software be installed on the
**compute nodes** that the batch job is intended to run on (**NOT** the
OnDemand node):

- [Jupyter Lab](http://jupyter.readthedocs.io/en/latest/) 4.2.3+ (earlier
  versions are untested but may work for you)
- [OpenSSL](https://www.openssl.org/) 1.0.1+ (used to hash the Jupyter Lab
  server password)

## Install

1) Clone the repository under one of your OnDemand's application directories, e.g. `/var/www/ood/apps/sys/`
2) Customise the scripts in `template` to be able to start a JupyterLab server on the intended system.

The submission script details can be inherited from the cluster definition unless you need something different.

All the configuration for the JupyterLab server is handled by generating a config file in `template/before.sh.erb`, using info passed down from the application. Look there for details and to alter that.

The details of how JupyterLab is run are in `template/script.sh.erb`, including the setup of the virtualenv and any modules required.
