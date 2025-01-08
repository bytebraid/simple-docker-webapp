#!/bin/bash
docker stop simple-docker-webapp
docker rm simple-docker-webapp
docker build -t simple-docker-webapp .

# DISCLAIMERS
# This app is not production fit, flask is only a dev server.
# In production the -u flag should specify an appropriate production user ID
# with scoped privileges.
# A restart policy is not specified here, but could be used. YMMV.
# Further considerations for web security / scalability, not exemplified here:
#  - Load balancing (appliance or cloud), auto scaling 
#  - Reverse proxying / Defense-In-Depth / Application Firewalls
#  - Container Limits (cgroups / disk quotas etc)
#  - Automated container hygiene, log rotation, SIEM tools (splunk etc)
#  - Credential vaults / Certificate provisioning / Auto-renewal
#  - Caching / Edge services / Cloudflare / Fastly etc
#  
docker run -d -p 11000:11000 --name simple-docker-webapp simple-docker-webapp