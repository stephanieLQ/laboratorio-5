FROM openjdk:11
RUN mkdir -p /home/agent/
RUN curl -sO http://192.168.142.198:8080/jnlpJars/agent.jar
RUN cp agent.jar /home/agent/
RUN echo 'running slave'
CMD ["java", "-jar", "/home/agent/agent.jar", "-jnlpUrl",
"http://192.168.142.198:8080/computer/docker%5Fslave/jenkins-agent.jnlp", "-secret",
"ef84d6ba976dfe8f231b6b32e488c2cfb6385ac70f1243d51892da147d00846c", "-workDir",
"'/home/agent/'", "-noCertificateCheck"]