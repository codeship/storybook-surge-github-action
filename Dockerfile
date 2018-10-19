FROM node:8.12.0-slim

LABEL "com.github.actions.name"="Publish Storybook to Surge.sh"
LABEL "com.github.actions.description"="Deploy your built storybook to branch specific surge.sh sites with github deployments integration"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="#5CC18D"

RUN apt-get update && apt-get install jq

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
