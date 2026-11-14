# Jenkins Training outline

Two 3-hour masterclasses (6 hours total) with one assignment between sessions and a capstone after.

**Audience:** Linux, Git, GitHub and GitHub Actions knowledge only. No prior Jenkins experience.

---

## Day 1: Core Jenkins and Freestyle (3 hrs)

| Time | Topic |
|---|---|
| 0:00-0:20 | CI/CD recap, Jenkins architecture (controller, agents, executors, `JENKINS_HOME`), mapping to Actions |
| 0:20-0:45 | Initial setup with a pre-baked Docker Compose: unlock, wizard, UI tour, admin user |
| 0:45-1:30 | **Lab:** freestyle job with GitHub checkout, shell step, parameters, triggers (webhook or poll SCM) |
| 1:30-1:40 | Break |
| 1:40-2:05 | Plugins: Plugin Manager, install and update, dependencies, risks |
| 2:05-2:45 | **Lab:** credentials (types, scopes, binding, masking) and private repo checkout |
| 2:45-3:00 | Recap and Assignment 1 briefing |

### Assignment 1 (between sessions)

Create a freestyle job for a private repo using a stored credential. The job must:

- Take a `BRANCH` parameter
- Run tests
- Publish the JUnit report
- Archive an artifact
- Trigger on a GitHub webhook or SCM poll

**Deliverable:** screenshots of the job config and a green build, plus a short note on plugins used.

---

## Day 2: Pipelines, Agents, Admin (3 hrs)

| Time | Topic |
|---|---|
| 0:00-0:10 | Assignment 1 review |
| 0:10-1:00 | **Lab:** declarative pipeline: Jenkinsfile from SCM, stages, `environment`, `post`, `withCredentials`, `parallel`, Replay, snippet generator |
| 1:00-1:10 | Break |
| 1:10-1:50 | **Lab:** agents: controller vs agent, labels, add an agent (SSH or inbound), pin a stage, Docker agent |
| 1:50-2:15 | Admin essentials: security and matrix permissions, users, backup, safe restart and upgrade, build retention |
| 2:15-2:45 | **Demos (about 10 min each):** matrix, multibranch pipeline, folders |
| 2:45-3:00 | Wrap-up, best practices, next steps, capstone briefing |

### Assignment 2 (capstone, take-home)

Build a multibranch pipeline inside a folder that:

- Runs on a labeled agent
- Has a matrix test stage
- Uses a folder-scoped credential
- Has `post` notifications

**Deliverable:** repo link and screenshots.

---

## Topic Checklist

### Masterclass 1

**Intro and architecture**
- [ ] CI/CD recap and why Jenkins
- [ ] Controller, agents, executors
- [ ] `JENKINS_HOME` layout
- [ ] Jenkins vs GitHub Actions mapping

**Setup**
- [ ] Install (Docker Compose or Linux package)
- [ ] Unlock with the initial admin password
- [ ] Setup wizard and suggested plugins
- [ ] Create admin user, set Jenkins URL
- [ ] UI tour (dashboard, job page, console output)

**Freestyle job**
- [ ] Create job and configure SCM (GitHub)
- [ ] Shell build step
- [ ] Workspace and build history
- [ ] Parameters
- [ ] Triggers: manual, poll SCM, GitHub webhook
- [ ] Post-build: archive artifacts, publish JUnit

**Plugins**
- [ ] Plugin Manager (available, installed, updates)
- [ ] Dependencies and restarts
- [ ] Risks (trust, maintenance, security advisories)

**Credentials**
- [ ] Types: username/password, secret text, SSH key
- [ ] Scopes (system vs global) and domains
- [ ] Binding in a job and log masking
- [ ] Private repo checkout
      
**Declarative pipeline**
- [ ] Why pipeline as code
- [ ] Jenkinsfile structure: `pipeline`, `agent`, `stages`, `steps`
- [ ] `environment`, `parameters`, `post`, `when`
- [ ] "Pipeline script from SCM"
- [ ] `withCredentials`
- [ ] `parallel`
- [ ] Replay and the snippet generator
- [ ] Scripted vs declarative (one-liner)

**Agents**
- [ ] Controller vs agent
- [ ] Executors and labels
- [ ] Add an agent (SSH or inbound/WebSocket)
- [ ] Pin a stage to a labeled agent
- [ ] Docker agent in a Jenkinsfile

**Admin essentials**
- [ ] Manage Jenkins tour (System, Tools, Nodes, Plugins)
- [ ] Security: authentication, authorization, matrix or role-based
- [ ] Disable anonymous access, CSRF
- [ ] Users and permissions
- [ ] Backup of `JENKINS_HOME`
- [ ] Safe restart and upgrade
- [ ] Build retention
- [ ] System logs (quick mention)

**Demos**
- [ ] Matrix (freestyle matrix and declarative `matrix {}`)
- [ ] Multibranch pipeline (GitHub Branch Source, PR discovery, webhooks)
- [ ] Folders (organization, scoped credentials and permissions)

**Wrap-up**
- [ ] Best practices
- [ ] Next steps: Shared Libraries, JCasC, Kubernetes agents
- [ ] Capstone briefed

### Prep (before Masterclass 1)

- [ ] Docker Compose environment (Jenkins plus an SSH agent) tested
- [ ] Sample repo (with tests) for learners to fork
- [ ] Private repo and token or SSH key for the credentials lab
- [ ] Webhook reachability sorted (tunnel or poll SCM fallback)
- [ ] Assignment 1 and capstone rubrics ready

---
