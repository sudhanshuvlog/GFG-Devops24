## Jenkins

### Important tips for Jenkins

- Instead of installing Jenkins on your local machine, which involves numerous configurations and dependencies, consider using a Docker Image to run Jenkins.
- Use the following command to run Jenkins on your local machine:

```bash
docker run -p 8080:8080 -p 50000:50000 -dit --name jenkins --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17
```

### Why do we need Jenkins Cluster (Or) Jenkins Master-Slave Architecture?

- **Jenkins Cluster** is a group of Jenkins master nodes and slave nodes.
- Consider a scenario with a Jenkins server and 1000 jobs to run. Running all jobs on a single Jenkins server consumes a lot of resources from the master node and becomes difficult to manage.

**Example:**

- Handling increased workload or parallel jobs might be challenging for a single machine, leading to slower build times.
- If the master server fails or becomes unavailable, the entire CI/CD process is disrupted.

### Pipeline in Jenkins

- Jenkins Pipeline streamlines the execution of multiple stages within a single job, simplifying the overall workflow.
- **Pre-requisites** - You need to install the `Pipeline plugin` in your Jenkins server.
- Before the installation of the Pipeline plugin, the conventional approach involved running multiple jobs to handle distinct stages of a process.
- With the installation of the Pipeline plugin, the need for managing multiple jobs is eliminated. Now, all stages can be seamlessly executed within a single job, optimizing the CI/CD pipeline.

### Jenkinsfile

- In Pipeline, we can define the stages in a file called `Jenkinsfile`.
- Jenkinsfile uses Groovy language.
- By encapsulating all stages within the Jenkinsfile, users can execute an entire workflow within a single job. This simplifies job management and enhances pipeline efficiency.
- Example of Jenkinsfile:

```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
```

### Jenkins Pipeline Triggers

- Poll SCM - It will check the changes in the repository for every x minutes we mentioned.
- If we use `Poll SCM` trigger, It will waste a lot of resources, It is better for the use cases for data backup, etc.
- So we can use `Webhook` trigger, This trigger is event-driven and activates the Jenkins job only when there is a change in the repository.