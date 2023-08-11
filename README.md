# Phpsecure GitHub Action

Using this GitHub Action, scan your code with phpsecure scanner (SaaS https://phpsecure.net/) to detect vulnerabilities in php code.

## Requirements

* You need to register at https://phpsecure.net/. Get a free API key in your profile.
* That's all!

### Inputs

These are some of the supported input parameters of action.

- `auth_token` - **_(Required)_** this is the API key for accessing the check service https://phpsecure.net/
- `project_name` - Name of the project that will be displayed on https://phpsecure.net/ web interface.


## Usage

First, add secret variable (see https://docs.github.com/en/actions/security-guides/encrypted-secrets).

Secret variable name: PHPSECURE_AUTH_TOKEN

Secret variable value: get it for free in your profile on the site https://phpsecure.net/

Second, create the workflow, usually declared in `.github/workflows/build.yaml`, looks like:
```yaml
name: GitHub Actions Phpsecure
on:
  push:
    branches:
      - master
jobs:
  Phpsecure-Action:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Phpsecure Vulnerabilities Scanner
        uses: PhpSecureScanner/phpsecure_action@v0.1.6
        env:
          PHPSECURE_AUTH_TOKEN: ${{ secrets.PHPSECURE_AUTH_TOKEN }}
```

You can change the project name by using the optional input like this:
```yaml
      - name: Phpsecure Vulnerabilities Scanner
        uses: PhpSecureScanner/phpsecure_action@v0.1.6
        env:
          PHPSECURE_AUTH_TOKEN: ${{ secrets.PHPSECURE_AUTH_TOKEN }}
          PROJECT_NAME: "your project name"
```