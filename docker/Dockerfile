FROM golang:1.12

LABEL "com.github.actions.name"="Terraform-Docs-As-Code"
LABEL "com.github.actions.description"="Building a terraform documentation pipeline."
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/erindatkinson/Terraform-Docs-As-Code"
LABEL "homepage"="http://github.com/erindatkinson/Terraform-Docs-As-Code"
LABEL "maintainer"="Erin Atkinson <20285458+erindatkinson@users.noreply.github.com>"

RUN apt-get update && apt-get install -y less git 
RUN go get github.com/segmentio/terraform-docs

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
