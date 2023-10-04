## Author/Reviewer's PR Checklist

Each box needs to be checked or deleted in case it does not apply:

- [ ] Title: adheres to the [naming convention](#naming-convention), is informative, not too technical and makes sense from the customers' perspective
- [ ] Labels: `Review & Merge` + `internal`/`PUBLIC` to indicate the destination branch
- [ ] Reviewer: `internal` branch = your team, `public` branch = `@eng-agent-sensor-gatekeepers`
- [ ] All feature versions are bumped in `discovery-feature/src/main/feature/feature.xml` & `sensor-feature/src/main/feature/feature.xml`
- [ ] The Sensor PR is merged to `master`: INSERT_LINK_TO_THE_SENSOR_PR_HERE
- [ ] The [sensors-deploy:master](https://ci.instana.io/teams/sensors/pipelines/sensors-deploy:master) Concourse CI build successfully finished (checkout [#tech-sensors-delivery-notifications](https://instana.slack.com/archives/C047QU12MUP) Slack channel): INSERT_LINK_TO_THE_BUILD_JOB_HERE

When the destination branch is `public` the following is required:
- [ ] Auto-update verified as described in the [Auto-update Verfication](https://github.ibm.com/instana/agent-update-site/blob/internal/AUTO_UPDATE_VERIFICATION.md). 
- [ ] Agent static build is verified as described in the [Agent Static Build Verification](https://github.ibm.com/instana/agent-update-site/blob/internal/AGENT_STATIC_BUILD_VERIFICATION.md)
- [ ] Agent Installer PR to be merged after merging this PR: INSERT_AGENT_INSTALLER_PR-IF_PRESENT
- [ ] Ping `@eng-agent-sensor-gatekeepers` and inform others about release to `public` in `#agent-and-sensor-releases` Slack channel 

<hr />

### Naming convention

The first commit message in the PR and the PR title need to be in the following format:
```
<SENSOR_NAME> Sensor <1.2.3>: <CHANGE_DESCRIPTION>

for example: 
MySql Sensor 1.0.13: Collect database metrics
```
(note that word `Sensor` should always be present after the sensor name)

The change description message part should be informative, imperative and make sense from customer's perspective. 
