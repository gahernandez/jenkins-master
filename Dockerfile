FROM jenkins/jenkins:2.338-jdk11

COPY --chown=jenkins:jenkins jenkins-resources/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt 

COPY --chown=jenkins:jenkins jenkins-resources/groovy-config/*.groovy /usr/share/jenkins/ref/init.groovy.d/
COPY --chown=jenkins:jenkins jenkins-resources/jenkins.yaml /usr/share/jenkins/ref/jenkins.yaml

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
