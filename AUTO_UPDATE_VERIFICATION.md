## Auto-update Verification

### Purpose
The purpose of the verification step before a release to `public` is to ensure all artefacts needed for successful 
upgrade are available in the artifactory.

### Steps 

1. Switch to `features-public` and default agent repository in`instana-agent/etc/org.ops4j.pax.url.mvn.cfg`:

1a. Set the mvn repository link to use `features-public`:
    
```xml
org.ops4j.pax.url.mvn.repositories=https://artifact-public.instana.io/artifactory/features-internal@id=features@snapshots@snapshotsUpdate=always,https://artifact-public.instana.io/artifactory/shared@id=shared@snapshots@snapshotsUpdate=always
```
    
1b.  set default repository to `karaf.home` (not local .m2 repo):

```xml
org.ops4j.pax.url.mvn.defaultRepositories=file:${karaf.home}/${karaf.default.repository}@id=system.repository@snapshots
```

2. Start the agent and verify the latest public sensor version is being used (eg. `MySQL 1.0.9`) - either from the 
   logs or using the Sensors Info UI option 

3. Switch the mvn repository to `features-internal`:
```
org.ops4j.pax.url.mvn.repositories=https://artifact-public.instana.io/artifactory/features-internal@id=features@snapshots@snapshotsUpdate=always,https://artifact-public.instana.io/artifactory/shared@id=shared@snapshots@snapshotsUpdate=always
```

4. Update the Agent from the UI (no need to restart the agent manually) and verify the agent pulls the latest sensor 
   version internal (eg: `MySQL 1.0.10`)
