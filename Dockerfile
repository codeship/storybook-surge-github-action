FROM node:8.12.0-slim

LABEL "com.github.actions.name"="Publish Storybook to Surge.sh"
LABEL "com.github.actions.description"="Deploy your built storybook to branch specific surge.sh sites with github deployments integration"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="#5CC18D"

LABEL "repository"="http://github.com/codeship/storybook-surge-github-action"
LABEL "homepage"="http://github.com/codeship/storybook-surge-github-action"

RUN apt-get update && apt-get install jq
RUN npm install --global surge@0.20.1

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
