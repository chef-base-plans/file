[![Build Status](https://dev.azure.com/chefcorp-partnerengineering/Chef%20Base%20Plans/_apis/build/status/chef-base-plans.file?branchName=master)](https://dev.azure.com/chefcorp-partnerengineering/Chef%20Base%20Plans/_build/latest?definitionId=74&branchName=master)

# file

## Maintainers

* The Habitat Maintainers: <humans@habitat.sh>

## Type of Package

Binary package

## Usage

In addition to the `file` command, this package also provides the `magic.mgc` data file that is typically available at `/usr/share/misc/magic.mgc`

The `MAGIC` environment variable is commonly used for instructing applications to look for this file in a nonstandard location. A PHP application, for example, could be configured to make use of this `magic.mgc` file by adding a custom runtime environment variable to the application's `plan.sh`:

```bash
do_setup_environment() {
  set_runtime_env MAGIC "$(pkg_path_for file)/share/misc/magic.mgc"
}
```
