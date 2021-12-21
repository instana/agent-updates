## Updating the Public Reference Repository for Instana Agent Updates

This manual is only for the Gatekeepers. 

### (first time only) Add a remote to `agent-updates`
Make sure the given name aligns with below commands:

```shell
git remote add agent-updates git@github.com:instana/agent-updates.git
```

### Checkout the public branch from origin

```shell
git checkout public origin/public
```

### Verify the public branch is checked out from origin remote

```shell
git branch -vv
```

### Make sure the public branch is up-to-date 

```shell
git pull --rebase origin public
```

### Push to the agent-updates remote to bring it in sync

```shell
git push agent-updates public:public
```