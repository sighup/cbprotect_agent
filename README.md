# Carbon Black Cb Protection Cookbook

## Scope

This cookbook is concerned with the Carbon Black Cb Protection Agent. This cookbook performs installation and uninstalltion of the Cb Protection Agent. 

## Requirements

- RHEL and derivatives

### Chef

- Tested with Chef client version 12.19.36

### Platform Support

Tests are configured for the following:

- `supports 'centos', '~> 6.7'`
- `supports 'windows', '~> 6.3.9600'`

The following platforms have been tested with Test Kitchen:

Windows 2012 R2
CentOS 6.7

## Attributes

- `default['cbprotect_agent']['source_url']` - URL for CbProtection agent media, this is the generated media for the desired installation profile for each OS.

## Recipes

- `default` installs Cb Protection agent and related services. Invoking the default recipe will include either the rhel or windows recipe and complete the installation for the respective platform. On Linux this invokes a subsequent installation script.
- `remove` removes Cb Protection agent and related services. Invoking the remove recipe will include either the rhel_remove or windows_remove recipes. On Linux this invokes a subsequent uninstallation script.

## License

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
