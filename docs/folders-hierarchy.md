# Folders hierarchy

This document briefly explains where the files are and in which folders they should go.

## root folder

Only the mains scripts (install, init, launch) and others files should be hold here.


### .github

GitHub specific files, like templates, workflows or others related settings.

### configs

Special folder that will be moved and symlinked at initialization who contains all the configs files and private environment files of each services in their own subfolder.
That folder will be encrypted and synced automatically when a change is made **( to upstream or downstream?)**.

### deps

Dependencies in their own subfolder, **that aren't found in Debian stable or Ubuntu LTS repository**.

### docs

Hold all the documentations (obviously).

### scripts

Hold sub-scripts that can be called my mains scripts found in the root folder.
They're divided in the following sub-folder depending on their usage.

#### scripts/inst-deb

Scripts that are called for Debian based initialization (install of dependencies, etc.) and **who aren't platform-agnostic**.

#### scripts/init

Scripts that are called for base initialization (init of docker swarm, init of config folder, ...) and **who are platform-agnostic**.

### services

Contain all the containers configs (or services) in their own subfolder that should be launched as a stack.
Each folder should contain one *docker-compose.yml* file and a *.env* one for their own variables(override or not).
