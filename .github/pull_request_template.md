## Author/Reviewer's PR Checklist

Each box needs to be checked or deleted in case it does not apply:

- [ ] 📝 Title: adheres to the [naming convention](#naming-convention), is informative, not too technical and makes sense from the customers' perspective
- [ ] 🏷️ Labels: `Review & Merge` + `internal`/`PUBLIC` to indicate the destination branch
- [ ] 🔍 Reviewer: `internal` branch = your team, `public` branch = `@eng-agent-sensor-gatekeepers`
- [ ] 🆙 All feature versions are bumped in `discovery-feature/src/main/feature/feature.xml` & `sensor-feature/src/main/feature/feature.xml`
- [ ] 📋 The Sensor PR is merged to `master`: ❗️**_INSERT_LINK_**
- [ ] 🚀 The [sensors-deploy:master](https://ci.instana.io/teams/sensors/pipelines/sensors-deploy:master) Concourse CI build successfully finished (checkout [#tech-sensors-delivery-notifications](https://instana.slack.com/archives/C047QU12MUP) Slack channel, ask for access in [#brewery-sensors](https://instana.slack.com/archives/G9T01QQUQ)): ❗**_INSERT_LINK_**

When the destination branch is `public` the following is required:
- [ ] ♻️ Auto-update verified as described in the [Auto-update Verfication](https://github.ibm.com/instana/agent-update-site/blob/internal/AUTO_UPDATE_VERIFICATION.md).
- [ ] 📜 Release Notes (Public docs PR link - [guidance can be found here](https://github.ibm.com/instana/agent-update-site/blob/internal/SENSOR_RELEASE_NOTES.md)): ❗️**_INSERT_LINK_**
- [ ] 💻 Agent Installer PR to be merged after merging this PR (**_USE THE SAME BRANCH NAME AS FOR agent-update-site PR_**): ❗️**_INSERT_LINK_** (in case when pipeline is not working follow [this](https://github.ibm.com/instana/agent-update-site/blob/internal/AGENT_STATIC_BUILD_VERIFICATION.md))
- [ ] 🔔 Ping `@eng-agent-sensor-gatekeepers` and inform others about release to `public` in `#agent-and-sensor-releases` Slack channel 

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
