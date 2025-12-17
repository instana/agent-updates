# Bob instructions for Agent commit message

You are creating a git commit message for an **Instana Agent release**.

Your goal:

* Generate a **single git commit message** that documents the Agent release.
* Use the **condensed release-notes layout** shown below.
* You MUST derive **Features**, **Fixes**, and **Internal Updates** **ONLY** from commits that are:

  * present in the release branch, **and**
  * **not present in the `main` branch**, **and**
  * **not introduced via a merge of `main` into the release branch**.

---

## 1. INPUT

You receive:

* `<version>`
* `<tag>`
* A list of commits produced by:

```bash
git log --oneline main..agent-<version>
```

Each commit may include:

* commit hash
* commit subject/message
* PR number and title (if applicable)

---

## 2. MANDATORY COMMIT FILTERING RULES

Before classification, you MUST filter the commit list.

### 2.1 Exclude commits already in `main`

* Any commit that exists in `main` MUST be ignored.
* Only process commits that are **exclusively reachable from `agent-<version>` and not from `main`**.

---

### 2.2 Exclude merge commits

* You MUST ignore **all merge commits**.
* Merge commits do **not** represent release changes and MUST NOT produce:

  * bundle entries
  * Features
  * Fixes
  * Internal Updates

Examples to ignore (non-exhaustive):

* `Merge branch 'main' into agent-<version>`
* `Merge remote-tracking branch 'origin/main'`
* `Merge main`
* `Merge pull request ...`

---

### 2.3 Exclude commits merged *from* `main` into the release branch

* You MUST ignore **all commits whose changes originated from `main`**, even if:

  * they appear in `main..agent-<version>`, or
  * they are reachable through a merge commit.

This includes:

* commits that were already in `main` and became reachable in the release branch due to a merge
* commits whose purpose is synchronization with `main`

If a commit’s inclusion is solely the result of merging `main` into the release branch, it MUST be ignored.

---

### 2.4 Heuristic when only `--oneline` is available

If only commit subjects are available, ignore commits whose subject contains or starts with patterns such as:

* `Merge branch 'main'`
* `Merge remote-tracking branch 'origin/main'`
* `Merge main into`
* `Merge pull request`
* `Merge`

When in doubt, **exclude the commit** rather than risk including a main-branch change.

---

## 3. VALID COMMIT SET

After filtering, the **valid commit set** is:

* commits that represent **actual release-specific work**
* commits that introduce changes **not yet present in `main`**
* commits that were **intentionally applied to the release branch**

Only this reduced set may be used for further processing.

---

## 4. CLASSIFICATION RULES

From the valid commit set, determine for each change:

### FEATURE (customer-visible new behaviour)

* New capabilities or measurable improvements
* Improved responsiveness or accuracy observable by customers
* Extended monitoring coverage (new container types, JVM behaviour, runtime environments)

### FIX (corrected behaviour)

* Resolved incorrect or buggy customer-visible behaviour
* Fixed regressions, misattribution, missing or wrong metrics

### INTERNAL UPDATE (not customer-visible)

* Refactoring, cleanup, preparatory work
* Internal detection or namespace logic with no visible effect
* Tests, build logic, internal restructuring

**NEVER mention class names, internal APIs, or implementation details.**

---

## 5. BUNDLE HANDLING RULES

For each bundle touched by the valid commits:

* If **ANY** commit introduces customer-visible behaviour:

  * include the bundle in the **main bundle list**
  * extract customer-visible changes into **Features** and **Fixes**

* If **ALL** changes for a bundle are internal-only:

  * do **NOT** list the bundle in the main bundle list
  * list the bundle **name + version only** under **Internal Updates**

---

## 6. CONDENSED RELEASE NOTES LAYOUT

This **exact layout** MUST appear in the commit message body:

```
Agent <version>

This agent release updates the following bundles:

* <bundle name X> <version>: <short customer-visible summary>
* <bundle name Y> <version>: <short customer-visible summary>

Features

This release adds the following features:

* <customer-facing new capability>

Fixes

This release includes the following fixes:

* Previously, <user-visible issue>. Now, <improved behaviour>.

Internal Updates

These changes improve internal stability and prepare future enhancements:

* <bundle name A> <version>
* <bundle name B> <version>
```

---

## 7. GIT COMMIT MESSAGE FORMAT

Your final output MUST be a valid git commit message.

**Subject line:**

```
Agent <version>: release notes and bundle updates
```

**Then:**

* one blank line
* the condensed release notes layout exactly as defined above