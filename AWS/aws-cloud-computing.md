## Cloud Computing

### Private Cloud/Data Center Management

- Switching from the traditional model of managing private cloud and data centers, which involves buying and maintaining hardware and software, to utilizing public cloud services is a game-changer. The traditional setup demands hefty investments in infrastructure setup, maintenance, and personnel, draining both time and capital. In contrast, embracing cloud services eliminates the need for owning and managing physical infrastructure, offering scalability and cost-efficiency. This shift liberates organizations to focus resources on innovation rather than infrastructure upkeep, fostering agility and competitive edge in today's fast-paced market.

### Cloud Computing Overview

- Utilize cloud services instead of owning and maintaining hardware and software.
- AWS, Azure, GCP, etc., offer diverse cloud services.
- Leverage cloud provider services to create and deploy applications without managing underlying hardware and software.
- Eliminate concerns about hardware/software maintenance, focusing on deploying and scaling applications.

### AWS

- AWS stands for Amazon Web Services, They provide cloud services for infrastructure, storage, databases, and more.

### AWS Global Infrastructure

- AWS has multiple data centers in different regions across the world.
- AWS Global Infrastructure consists of the following components:
    - **Region**
    - **Availability Zone**
    - **Edge Location**
- Each region has multiple availability zones.
- Each availability zone has one or more data centers.
- Each data center has redundant power, networking, and connectivity.
- Edge locations are used to cache the content and to reduce the latency.

### AWS IAM

- AWS Identity and Access Management (IAM) is a web service that helps you securely control access to AWS resources.
- It allows you to manage users and their level of access to the AWS Console.
- It is used to manage the users, groups, roles, and policies.

IAM Reference: [AWS IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)

### AWS Cloud - Notes & Documents

- Configuring a static website on Amazon S3 - https://docs.aws.amazon.com/AmazonS3/latest/userguide/HostingWebsiteOnS3Setup.html
- AWS ECS With FARGATE Case Study(Wombo) - https://aws.amazon.com/solutions/case-studies/wombo-case-study/
- AWS VPC - https://aws.amazon.com/solutions/case-studies/wombo-case-study/
- Deploy your WordPress App on ECS With Serverless Computing(FARGATE) - `wordpress-ECS-task-defination.json`
- AWS Policy Generator- https://awspolicygen.s3.amazonaws.com/policygen.html
- Setup CodeCommit And Authenticate with local Git - https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html
- Create a CodeBuild Project - Use `buildspec.yml` file, just change your `bucket-name` and your ECR Registry URL, Currently it is  - `730335248074.dkr.ecr.ap-south-1.amazonaws.com`, Replace this with your's.
- AWS ElasticBeanstalk (eb CLI)- https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3.html
- AWS CodePipeline - https://aws.amazon.com/codepipeline/
<img width="871" alt="image" src="https://github.com/sudhanshuvlog/GFG-Devops16/assets/124223047/462420ac-ee8b-4904-bd81-0d3f2b94ed3c">


- AWS ECS 
<img width="871" alt="image" src="https://github.com/sudhanshuvlog/GFG-Devops16/assets/124223047/57ba63af-f998-4321-8fa9-e2eaaa030c74">


- AWS ElasticBeanstalk - 
<img width="871" alt="image" src="https://github.com/sudhanshuvlog/GFG-Devops16/assets/124223047/08024fbe-c51b-4995-842c-b32a36a6bff6">

## Auto Scaling Group and Load Balancer

### Auto Scaling Group
An Auto Scaling Group (ASG) is a collection of Amazon EC2 instances that are treated as a logical grouping for the purposes of automatic scaling and management. Auto Scaling helps ensure that you have the right number of Amazon EC2 instances available to handle the load for your application.

#### Key Concepts of Auto Scaling

- Scaling Policies: These are rules that define how to scale the number of instances up or down. Scaling policies can be based on metrics such as CPU usage, network traffic, or custom metrics.

- Launch Configuration or Launch Template: This defines the instance configuration information such as the AMI ID, instance type, key pair, security groups, and block device mapping.

- Desired Capacity: The number of instances that you want in your Auto Scaling Group.

- Minimum Size: The minimum number of instances that your Auto Scaling Group should have.

- Maximum Size: The maximum number of instances that your Auto Scaling Group can have.

#### Load Balancer
A Load Balancer is a service that distributes incoming traffic across multiple targets (like EC2 instances) in one or more Availability Zones. Load balancing increases the availability and fault tolerance of your application.

##### Types of Load Balancers in AWS

- Application Load Balancer (ALB): Operates at the application layer (Layer 7) and can make routing decisions based on the content of the request.

- Network Load Balancer (NLB): Operates at the transport layer (Layer 4) and is capable of handling millions of requests per second while maintaining ultra-low latencies.

- Classic Load Balancer (CLB): Provides basic load balancing across multiple EC2 instances and operates at both the request level and connection level.

#### Creating an Auto Scaling Group with a Load Balancer

Step 1: Create a Launch Template
- Navigate to the EC2 Dashboard:
    * Open the Amazon EC2 console at https://console.aws.amazon.com/ec2/.

- Create a Launch Template:
    * Choose Launch Templates in the left navigation pane.
    * Click Create launch template.
    * Provide a Name and Version description.
    * Under Launch template contents, specify the necessary configurations such as AMI ID, instance type, key pair, security groups, etc.
    * Click Create launch template.

Step 2: Create an Auto Scaling Group
- Navigate to Auto Scaling Groups:
    * In the EC2 dashboard, choose Auto Scaling Groups in the left navigation pane.
    * Click Create Auto Scaling group.

- Configure the Auto Scaling Group:
    * Enter a Name for the Auto Scaling Group.
    * Choose the Launch template created in the previous step.
    * Configure Network settings by selecting the VPC and subnets.

- Attach a Load Balancer:
    * In the Load balancing section, select the load balancer type and specify the target group.
    * If using an ALB or NLB, choose an existing target group or create a new one.

- Set Scaling Policies:
    * Configure the Desired capacity, Minimum capacity, and Maximum capacity.
    * Add Scaling policies to adjust the number of instances based on CloudWatch alarms.

- Review and Create:
    * Review the configuration and click Create Auto Scaling group.
* Sample Configuration in Markdown

## Launch Template Configuration

- **Name**: MyLaunchTemplate
- **AMI ID**: ami-0abcdef1234567890
- **Instance Type**: t2.micro
- **Key Pair**: MyKeyPair
- **Security Groups**: sg-0abcdef1234567890
- **Block Device Mappings**: /dev/sda1 (8 GiB, gp2)

## Auto Scaling Group Configuration

- **Name**: MyAutoScalingGroup
- **Launch Template**: MyLaunchTemplate
- **VPC**: vpc-0abcdef1234567890
- **Subnets**: subnet-0abc1234567890def, subnet-0def1234567890abc
- **Load Balancer**: Application Load Balancer
- **Target Group**: my-target-group
- **Desired Capacity**: 2
- **Minimum Capacity**: 1
- **Maximum Capacity**: 4
- **Scaling Policies**:
  - **Policy Name**: ScaleOutPolicy
  - **Metric Type**: CPUUtilization
  - **Threshold**: 75%
  - **Action**: Add 1 instance
  - **Policy Name**: ScaleInPolicy
  - **Metric Type**: CPUUtilization
  - **Threshold**: 25%
  - **Action**: Remove 1 instance
This configuration ensures that your application can scale based on the load, providing high availability and fault tolerance.



