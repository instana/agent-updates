# Writing and publishing release notes for sensors
> Effective after the SaaS release 284 (2024.10.14 - 2024 October 14th)

## Problem we are trying to solve

The release of components are not documented within our public docs, hence the customers don't have a good way to follow and get informed about the releases.

## Current way of working

1. The developer raises an `agent-update-site:public` PR
2. Gatekeeper reviews it and merges it

The customers can check commits on https://github.com/instana/agent-updates/commits/public/ (which is a mirror of `agent-update-site:public` branch) to get informed about new releases.

## Solution

Add ["Sensor Releases" section](https://ibmdocs-test.dcs.ibm.com/docs/en/instana-observability/284?topic=notes-sensor-releases) to Public Docs where every sensor has its own page with the list of versions released after SaaS Release 284 (2024.10.14 - 2024 October 14th). Similar solution has been already provided for [Agent](https://www.ibm.com/docs/en/instana-observability/current?topic=notes-agent-releases) and [Tracers](https://www.ibm.com/docs/en/instana-observability/current?topic=notes-tracer-releases).

## What are we changing in the process

The developer needs to create a [docs](https://github.ibm.com/instana/docs) PR against `main` branch. The PR contains the sensor version and the description of the release ([example PR](https://github.ibm.com/instana/docs/pull/11140)). The content can be the same as the commit title or a broader description. Once merged the content of the PR will reflect on Sensor Releases section of public docs (example: [IBM Docs Staging - MS SQL sensor release](https://ibmdocs-test.dcs.ibm.com/docs/en/instana-observability/284?topic=server-microsoft-sql-sensor-releases) **You need to log in with your w3 to access**). The release notes will be shipped to [publicly available docs site](https://www.ibm.com/docs/en/instana-observability/current) with the next SaaS Release.

> ✅ The docs PR is merged by the author.

## Step-by-step guidance for docs PR creation and process

1. The developer raises an `agent-update-site:public` PR
2. The developer raises a `docs` PR against main branch([example PR can be found here](https://github.ibm.com/instana/docs/pull/11140))
    - 📋 The description can fall into 3 categories: **Features**, **Improvements**, **Fixes**. Add sections to your description as needed
    - 🔎 Reviewers should be: `instana/eng-agent-sensor-gatekeepers` and `instana/instana-content-team`
    - ⚠️ **IMPORTANT: Please write costumer oriented text in the description**
    - ⚠️ **IMPORTANT: For "Private Preview" sensors the lines within [SUMMARY.md](https://github.ibm.com/instana/docs/blob/main/SUMMARY.md) and [index.md](https://github.ibm.com/instana/docs/blob/14496e1898e6902a55f922817b3b85d92b5d8821/src/pages/releases/sensor_release_notes/index.md) should remain commented**
3. Add the link of `docs` PR to the `agent-update-site` PR and vise-versa
4. Gatekeeper reviews and approves the `docs` PR only after the `agent-update-site` PR is merged and informs the content team that the PR is ready for content review (write a 📝 comment on the PR: "PR is ready for content review" and 🏷️ label the PR with `In ID Review`)
5. Content Team reviews the `docs` PR from wording and grammar perspective
6. The developer incorporates content review comments
7. Once both parties (Gatekeeper and Content Team) approved the PR, the **Author of the PR merges** the `docs` PR
