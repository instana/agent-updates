## Author/Reviewer's PR Checklist

Each box needs to be checked or deleted in case it does not apply:

- [ ] 📝 Title: adheres to the [naming convention](#naming-convention), is informative, not too technical and makes sense from the customers' perspective
- [ ] 🏷️ Labels: `Review & Merge` + `internal`/`PUBLIC` to indicate the destination branch
- [ ] 🔍 Reviewer: `internal` branch = your team, `public` branch = `@eng-agent-sensor-gatekeepers`
- [ ] 🆙 All feature versions are bumped in `discovery-feature/src/main/feature/feature.xml` & `sensor-feature/src/main/feature/feature.xml`
- [ ] 📋 The Sensor PR is merged to `master`: ❗️**_INSERT_LINK_**
- [ ] 🚀 The [sensors-deploy:master](https://ci.instana.io/teams/sensors/pipelines/sensors-deploy:master) Concourse CI build successfully finished (checkout [#tech-sensors-delivery-notifications](https://instana.slack.com/archives/C047QU12MUP) Slack channel, ask for access in [#brewery-sensors](https://instana.slack.com/archives/G9T01QQUQ)): ❗**_INSERT_LINK_**

When the destination branch is `public` the following is required:
- [ ] ♻️ Auto-update (**DO NOT RESTART THE AGENT DURING THE PROCESS**) verified as described in the [Auto-update Verfication](https://github.ibm.com/instana/agent-update-site/blob/internal/AUTO_UPDATE_VERIFICATION.md).
- [ ] 💻 Agent Installer PR to be merged after merging this PR (**_USE THE SAME BRANCH NAME AS FOR agent-update-site PR_**): ❗️**_INSERT_LINK_** (in case when pipeline is not working follow [this](https://github.ibm.com/instana/agent-update-site/blob/internal/AGENT_STATIC_BUILD_VERIFICATION.md))
- [ ] 📘 Fill out section "Sensor/Agent Release Notes" below
- [ ] 🔔 Ping `@eng-agent-sensor-gatekeepers` and inform others about release to `public` in `#agent-and-sensor-releases` Slack channel ([GUIDANCE](https://github.ibm.com/instana/agent-update-site/blob/internal/RELEASE_REQUEST_PROCESS.md))

<hr />

## Sensor/Agent Release Notes

When the destination branch is `public`, please write **_customer oriented release notes_** (delete the section which is not applicable).

> [!IMPORTANT]
> OPTIONALLY IF YOU ARE RELEASING MULTIPLE SENSORS AT ONCE, PLEASE DUPLICATE THE BELOW SECTION AND NAME THEM SEPARATELY.

```markdown
## <sensor-version>

<sensor-name>

### Features

<📝 awesome feature - you can use markdown to help Content Team's work (e.g. `monospace text`)>

### Fixes

<📝 awesome fix - you can use markdown to help Content Team's work (e.g. `monospace text`)>

### Improvements

<📝 awesome improvement - you can use markdown to help Content Team's work (e.g. `monospace text`)>
```

The release notes is taken care by the Content Team. It will be available [here](https://www.ibm.com/docs/en/instana-observability/current?topic=notes-sensor).

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
