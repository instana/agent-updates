<!---
## Naming convention

The first commit message in the PR and the PR title need to be in the following format:
```
<SENSOR_NAME> Sensor <1.2.3>: <CHANGE_DESCRIPTION>
```
(note that word `Sensor` should always be present after the sensor name)

Examples:
```
MySql Sensor 1.0.13: Collect database metrics
IBM MQ Sensor 1.0.11: Fix connection increased issue
Java Trace Sensor 1.2.388: Add EJB support for WildFly 22
```
-->

## References

- [Sensor PR](<INSERT_LINK_TO_THE_SENSOR_PR_HERE>)

## Checklist

The PR Author and the Reviewer need to check the following:

### Before merging the PR to `internal` branch:

- [ ] The PR title and the merge commit message adhere to the naming convention mentioned above
- [ ] The PR is tagged with `Review & Merge` label?
- [ ] All feature versions are bumped in the `feature.xml` files in the `discovery-feature` and `sensor-feature`
  modules ()
- [ ] The Sensor PR is merged to `master` branch, and the Jenkins build job has finished successfully

### Before merging the PR to `public` branch:

- [ ] The PR is tagged with `public` label
- [ ] Auto-update verified as described in the [Auto-update Verfication](../AUTO_UPDATE_VERIFICATION.md).
