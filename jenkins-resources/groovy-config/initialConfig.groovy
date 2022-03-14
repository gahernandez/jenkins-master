import jenkins.model.*

//Configure Jenkins URL dinamically based on the env vars
url = System.env.JENKINS_URL
urlConfig = JenkinsLocationConfiguration.get()
urlConfig.setUrl(url)
urlConfig.save()
