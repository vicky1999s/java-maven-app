## CI/CD pipeline for a Java Maven application using Jenkins as the automation server, GitHub as the version control system (VCS), S3 for storing build artifacts, and AWS CodeDeploy for deploying the application to AWS EC2 instances

prerequesties:

An AWS account with access to create resources like EC2 instances, S3 buckets, and CodeDeploy applications.
Familiarity with Java, Maven, Jenkins, GitHub, and AWS CodeDeploy concepts.

### Step 1: Install Jenkins
To start, we need to install Jenkins on your system. Jenkins is an open-source automation server that allows you to automate various stages of the software development lifecycle. Follow the installation instructions for your operating system to get Jenkins up and running.

### Step 2: Add Jenkins Agent (AWS EC2 Instance - Ubuntu)
Next, we'll set up an AWS EC2 instance running Ubuntu to act as a Jenkins agent. This agent will handle the execution of Jenkins jobs. Configure the agent by following the steps outlined in the Jenkins documentation.

### Step 3: Create a Sample Java Project
Now, let's create a sample Java Maven project that we'll use throughout the pipeline. Set up a basic Java Maven project with your preferred IDE or by using the command line. This project will serve as a demonstration for the CI/CD pipeline.

### Step 4: Configure GitHub Apps and Webhooks
To enable integration between GitHub and Jenkins, we need to configure GitHub Apps and set up webhooks to trigger Jenkins builds automatically whenever changes are pushed to the repository. Follow the GitHub and Jenkins documentation to properly configure these integrations.

### step 5: create s3 bucket
Create an s3 bucket with required permissions.

### Step 6: Create AWS CodeDeploy Application and Deployment Group
In this step, we'll create an AWS CodeDeploy application and deployment group. AWS CodeDeploy is a fully managed deployment service that automates application deployments to EC2 instances. Set up an application and deployment group with the required service role to deploy your Java Maven app.

### Step 7: Install CodeDeploy Agent on EC2 Instances and Grant Permissions
To enable the deployment process, install the AWS CodeDeploy agent on your EC2 instances. The agent facilitates communication between the instances and the CodeDeploy service. Additionally, ensure that the EC2 instances have the necessary permissions to access the S3 buckets where your build artifacts will be stored.

### Step 8: Pipeline Script
The pipeline script provided below demonstrates the different phases of the CI/CD pipeline, including BUILD, TEST, and DEPLOY. Each phase has specific actions and configurations:

### BUILD:
* Execute the Maven package command to package (create a jar) your Java application.

### TEST:
* Retrieve the current month and year for organizing artifacts.
* Fetch the project name and version from the Maven project.
* Run the Maven test command to execute unit tests.
* Create a compressed ZIP file containing the necessary deployment artifacts.
* Upload the ZIP file to the designated S3 bucket.

### DEPLOY:
* Deploy the artifact stored in the S3 bucket using AWS CodeDeploy.
* Specify the application, deployment group, and configuration settings.
Jenkins will  wait for the deployment to complete and return whether it is success or failure.
