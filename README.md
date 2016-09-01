## Instana Agent Update Repository

This repository contains all released Instana agent versions.

There can be potentially many different release branches, like alpha or beta, but currently there is only one: `public`

This release branch is referenced in each agent installation in `etc/org.ops4j.pax.url.mvn.cfg`

with the line: `http://repo-public.instana.io/artifactory/features-public@id=features@snapshots@snapshotsUpdate=always`
(This url matches the URL from `pom.xml` distribution management section)

Updates from that repository will be pulled automatically by the agent.
The update interval is defined in `etc/instana/com.instana.agent.main.config.UpdateManager.cfg`.

Should automatic update not be desired, it is possible to pin the agent to a specific version. This can be done in `etc/instana/com.instana.agent.bootstrap.AgentBootstrap.cfg`, where the `version` needs to correspond to a commit of the respective release branch, like `06fba01ca3c13265c0ac33bfcb4e5b0ef08ec385`.
Once the version is pinned, no updates are performed anymore.
