# HomeAssistant Config check as a GitHub Action

## Example

```yaml
steps:
  - uses: actions/checkout@v1.0.0
  - uses: sinclairpaul/ha-configcheck@v0.0.x
```

Runs the check_config command against the checked out files.  Currently only
runs against the /latest docker container.
