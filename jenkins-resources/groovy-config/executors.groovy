import jenkins.model.*
Jenkins.instance.setNumExecutors(2) // Recommended to not run builds on the built-in node
