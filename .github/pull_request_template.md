## Naming convention

The first commit message in the PR and the PR title need to be in the following format:
```
<SENSOR_NAME> Sensor <1.2.3>: <CHANGE_DESCRIPTION>
```

Examples:
```
MySql Sensor 1.0.13: Collect database metrics
IBM MQ Sensor 1.0.11: Fix connection increased issue
Java Trace Sensor 1.2.388: Add EJB support for WildFly 22
```
(note that word `Sensor` should always be present after the sensor name)

## References
- [Sensor PR](<INSERT_LINK_TO_THE_SENSOR_PR_HERE>)

## Checklist 

The PR Author and the Reviewer need to check the following before merging the PR to `internal` branch:
- [] All feature versions are bumped in the discovery-feature and sensor-feature modules (`feature.xml` files)
- [] Sensor PR is merged to `master` branch
- [] Sensors Jenkins build has finished successfully 
- [] PR title and the merge commit message adhere to the naming convention mentioned above
- [] PR tagged with `Review & Merge` label? 
- [] If the PR is for public release, is it tagged with `public` label? 
