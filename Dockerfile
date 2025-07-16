FROM jenkins/jenkins:lts

USER root

# Optional: install curl if needed
RUN apt-get update && apt-get install -y curl

# Install Jenkins plugin(s) using plugin CLI
RUN jenkins-plugin-cli --plugins unique-id

# Switch back to Jenkins user
USER jenkins
