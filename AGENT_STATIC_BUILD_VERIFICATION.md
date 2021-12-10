# Agent Static Build Verification

This check is required when a new feature or bundle is introduced.
It is also required when a bundle is updated, eg: a dependency is added or upgraded.

## Purpose

It ensures that all feature dependencies and dependency licences are in place.

## Steps

1. Make sure that you checked out the corresponding branch within [agent-update-site](https://github.ibm.com/instana/agent-update-site)
2. Build `agent-update-site` locally.
3. Clone [agent-installer project](https://github.ibm.com/instana/agent-installer), 
   if it has not been done yet.
4. Open `agent-installer` directory in a terminal.
5. Switch to branch `main` and pull the latest changes `git checkout main && git pull`.
   * After pulling `main` you should switch to your development branch `git checkout <your-branch>` and rebase `git rebase main`.
6. Install parent pom.xml first:  
   `mvn -f agent-assembly/pom.xml -N -U clean install`
7. Build the static distro:
   `mvn -f agent-assembly/pom-offline.xml -DBUILD_TYPE=public-offline clean package`

If no relevant errors occur with the changes, everything is OK. 
If errors occur in relation to `[ERROR] No licensing data found for Jar file`, 
you have to provide a license file for the dependency in the [agent-installer project](https://github.ibm.com/instana/agent-installer/tree/main/agent-assembly/licenses).
