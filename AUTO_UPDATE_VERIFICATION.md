## Auto-update Verification

### Purpose
The purpose of the verification step before a release to `public` is to ensure all artefacts needed for successful 
upgrade are available in the artifactory. It also ensures that a module can be updated from version `X` to `X+1` without any issues and errors.

### Steps 

1. Switch to `features-public` and default agent repository in`instana-agent/etc/org.ops4j.pax.url.mvn.cfg`:

1a. Set the mvn repository link to use `features-public`:
    
```xml
org.ops4j.pax.url.mvn.repositories=https://artifact-public.instana.io/artifactory/features-public@id=features@snapshots@snapshotsUpdate=always,https://artifact-public.instana.io/artifactory/shared@id=shared@snapshots@snapshotsUpdate=always
```
    
1b.  set default repository to `karaf.home`:

```xml
org.ops4j.pax.url.mvn.defaultRepositories=file:${karaf.home}/${karaf.default.repository}@id=system.repository@snapshots
```

2. Start the agent and verify the latest public sensor version is being used (eg. `MySQL 1.0.9`) - either from the 
   logs or using the Sensors Info UI option 

3. Switch the mvn repository to `features-internal`:
```
org.ops4j.pax.url.mvn.repositories=https://artifact-public.instana.io/artifactory/features-internal@id=features@snapshots@snapshotsUpdate=always,https://artifact-public.instana.io/artifactory/shared@id=shared
```

3.1. For Kubernetes environments you can update the url by running the following:

```
kubectl exec -it -n instana-agent daemonset/instana-agent -- sed -i 's/features-public/features-internal/g' /opt/instana/agent/etc/org.ops4j.pax.url.mvn.cfg
```

4. Update the Agent from the UI (**DO NOT STOP/START** or **RESTART** the agent manually during this process) and verify the agent pulls the latest sensor 
   version internal (eg: `MySQL 1.0.10`)
