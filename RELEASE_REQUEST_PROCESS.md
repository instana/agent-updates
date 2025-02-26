# Requesting a release of a sensor or agent - Process overview
> Effective from 2025.02.21

1. Head over to [#agent-and-sensor-releases](https://ibm.enterprise.slack.com/archives/C05V4JZKSJV) Slack channel.
2. Click on `Sensor-Agent Release Request v2` button
3. Fill out the form as follows:

- `Sensor Name` - the name of the sensor or agent. e.g. "Host Sensor", "Agent"
- `Version` - the version which needs to be released
- `Title` - short description about the change
- `PR - agent-update-site` - link to `agent-update-site:public` PR
- `PR - agent-installer` - [OPTIONAL] link to `agent-installer` PR
- `AGENT - Release notes PR` - [OPTIONAL] link to release notes PR (applicable only for releasing a new version of agent)
- `SENSORS - Release notes - Features` - [OPTIONAL] if you change contains features, write them down in customer oriented fashion
- `SENSORS - Release notes - Improvements` - [OPTIONAL] if you change contains improvements, write them down in customer oriented fashion
- `SENSORS - Release notes - Fixes` - [OPTIONAL] if you change contains fixes, write them down in customer oriented fashion

4. Click `Submit`
5. The `@eng-agent-sensor-gatekeepers` review the changes
6. Once approved and merged, the `eng-agent-sensor-gatekeepers` notifies the Content Team about the release by clicking on `Notify Content Team for RN` button. A Slack message will be generated (with all details) in [#agent-and-sensor-release-notes](https://ibm.enterprise.slack.com/archives/C08E7RAK6T0) channel.
7. The Content Team analyses the request, creates a release notes PR and merges it to `main` branch of [docs repository](https://github.ibm.com/instana/docs). (in the near future most likely the PRs will be merged to the latest `release-xxx` branch)
