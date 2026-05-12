## Auto-update Verification

### Purpose
This verification step ensures that all artifacts needed for a successful upgrade are available in Artifactory before a release to the `public` branch. It also ensures that a module can be updated from version `n` to `n+1` without any issues or errors.

### Verification Steps
1. Update the `instana-agent/etc/org.ops4j.pax.url.mvn.cfg` configuration file:
    * Use the `shared` Maven repository:
        ```
        org.ops4j.pax.url.mvn.repositories=https://artifact-public.instana.io/artifactory/shared@id=shared@snapshots@snapshotsUpdate=always
        ```

    * Use `karaf.home` as the only default Maven repository:
        ```
        org.ops4j.pax.url.mvn.defaultRepositories=file:${karaf.home}/${karaf.default.repository}@id=system.repository@snapshots
        ```

2. Start the agent.

3. Verify that the agent uses the latest **public** sensor version (e.g. `MySQL 1.0.9`) - either by looking at the logs or by using the *Sensors information* button in the Instana UI.

4. Return to the `instana-agent/etc/org.ops4j.pax.url.mvn.cfg` configuration file and switch to the `features-internal` Maven repository:
    ```
    org.ops4j.pax.url.mvn.repositories=https://artifact-public.instana.io/artifactory/features-internal@id=features@snapshots@snapshotsUpdate=always,https://artifact-public.instana.io/artifactory/shared@id=shared
    ```

5. Use the Instana UI to update the agent. Do not restart (or stop and start) the agent manually during this process.

6. Verify that the agent uses the latest **internal** sensor version now (e.g. `MySQL 1.0.10`).

**Note:** In Kubernetes environments, you can use `sed` to update the Maven repository URLs:
```sh
kubectl exec -it -n instana-agent daemonset/instana-agent -- sed -i 's|org.ops4j.pax.url.mvn.repositories=https://artifact-public.instana.io/artifactory/shared@id=shared@snapshots@snapshotsUpdate=always|org.ops4j.pax.url.mvn.repositories=https://artifact-public.instana.io/artifactory/features-internal@id=features@snapshots@snapshotsUpdate=always,https://artifact-public.instana.io/artifactory/shared@id=shared|g' /opt/instana/agent/etc/org.ops4j.pax.url.mvn.cfg
```
