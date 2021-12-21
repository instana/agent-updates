## Author/Reviewer's Checklist

- [ ] The title adheres to the [Naming convention](naming-convention) 
- [ ] The PR is correctly labeled 
    - `Review & Merge`
    - `internal` / `PUBLIC` label to indicate the destination branch
- [ ] At least 1 reviewer is added
    - Your team for `internal` PR review
    - `@eng-agent-sensor-gatekeepers` for `public` (and pinged on Slack)
- [ ] All feature versions are bumped
    - `discovery-feature/src/main/feature/feature.xml`
    - `sensor-feature/src/main/feature/feature.xml`
- [ ] The [Sensor PR](<INSERT_LINK_TO_THE_SENSOR_PR>) is merged to the `master` branch
- [ ] The [Sensors Jenkins](https://agent-jenkins.instana.io/view/Agent/job/sensors) build job [successfully finished](<INSERT_THE_BUILD_JOB_LINK_HERE>)
- [ ] Auto-update verified as described in the [Auto-update Verfication](../AUTO_UPDATE_VERIFICATION.md).
- [ ] Agent static build is verified as described in the [Agent Static Build Verification](../AGENT_STATIC_BUILD_VERIFICATION.md)

**Each box needs to be checked or deleted in case it does not apply, 
and only then the PR is ready to be merged.**

<hr />

## Gatekeepers after party

### Merge Agent Installer PR

This step in needed only if the target branch is `public` and there's corresponding Agent Installer PR that should be
merged.
[Agent Installer PR](<INSERT_AGENT_INSTALLER_PR-IF_PRESENT_>) to be merged once this PR is merged.

### Update the Public Reference Repository

Update the Public Reference Repository for Instana Agent Updates as described in [this document](UPDATE_PUBLIC_REFERENCE_REPOSITORY.md). 

<hr /> 

### Naming convention

The first commit message in the PR and the PR title need to be in the following format:
```
<SENSOR_NAME> Sensor <1.2.3>: <CHANGE_DESCRIPTION>
```
(note that word `Sensor` should always be present after the sensor name)

The change description message part should be informative and make sense from customer's perspective. 

Examples:
```
MySql Sensor 1.0.13: Collect database metrics
IBMMQ Sensor 1.0.11: Fix connection increased issue
Java Trace Sensor 1.2.388: Add EJB support for WildFly 22
```
