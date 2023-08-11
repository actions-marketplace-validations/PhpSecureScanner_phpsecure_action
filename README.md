# Phpsecure GitHub Action

Using this GitHub Action, scan your code with phpsecure scanner (SaaS https://phpsecure.net/) to detect vulnerabilities in php code.

## Requirements

* You need to register at https://phpsecure.net/. Get a free API key in your profile.
* That's all!

### Inputs

These are some of the supported input parameters of action.

- `auth_token` - **_(Required)_** this is the API key for accessing the check service https://phpsecure.net/
- `project_name` - Name of the project that will be displayed on https://phpsecure.net/ web interface.
