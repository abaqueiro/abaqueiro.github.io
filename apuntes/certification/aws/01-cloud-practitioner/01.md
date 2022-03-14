<title>@abb on AWS Cloud Practitioner Certification</title>

<style>
#date {
	float: right;
}
blockquote {
	border: 1px solid black;
	border-left: 6px solid black;
	background-color: #C0C0C0;
	padding-left: 1em;
}
</style>

<div id="date">
Sunday March 13, 2022
</div>
[ UP ](../..)

<hr>

# AWS Cloud Practitioner

## The Exam CLF-C01

General understanding of the AWS cloud

Oriented toward people in roles
- technical management
- compliance
- security
- sales
- financial

The exam includes knowledge in
- Available services and their common use cases
- Architectural principles at conceptual level
- Account security and compliance
- Costs, economics, billing and pricing
- AWS shared responsability model

Recommended 6 months of experience with AWS cloud

Questions of multiple choice:

- single response
- multiple response

You need score 700 of 1000

### Domains:

- 1. Cloud concepts 26%º

	- 1.1 AWS cloud and its value proposition
	- 2.1 Identify aspects of cloud economics
	- 3.1 List different cloud architecture design principles

- 2. Security and compliance 25%

	- 2.1 Define AWS shared responsability model
	- 2.2 Define AWS cloud security and compliance concepts
	- 2.3 Identify AWS access management capabilities
	- 2.4 Identify resources for security support

- 3. Technology 33%

	- 3.1 Define methods of deploying and operating the AWS cloud
	- 3.2 Define AWS globla infra
	- 3.3 Identify core AWS services
	- 3.4 Identify resources for technology support

- 4. Billing and pricing 16%

	- 4.1 Compare and contrast the various pricing models
	- 4.2 Recognize various account structures in relation to AWS billing and pricing
	- 4.3 Identify resources available for billing support

## Cloud computing

> According to AWS is the on-demand delivery of compute power, databases, storage, applications
and other IT resources through a cloud services platform via the internet with pay as yo go pricing.
<br>You provision what you need via a webapp.

- There is no need for initial investment
- No need of management for cabling and hw
- Provision only what you need at any moment, with posibility to deprovision

Support for emerging technologies:

- Blockchain
- Virtual and augmented reality
- IoT
- Machine Learning and AI
- Robotics
- Database technology

## Cloud computing types

**aaS** means AS A SERVICE

- **IaaS** Infra as a service, provides components as virtual machines, networks, firewalls and storage
<br>VPC are virtual private clouds for your servers

- **PaaS** Platform as a service, eliminates the need for managing infra, provides runtimes, languages,
frameworks, updates, patches, database engines, containers, microservices runtimes. You loose
control over underlying infra.
<br>Examples in DB category, Mysql, Postgresql, Aurora, Amazon lightsail.

- **Saas** Software as a service, offers a finished product that is run and managed by the provider, no
concer about infra or platform where software runs.
<br>Example, web based email, Workspaces, CRMs, HR workplaces, cloud storage, collaboration
tools, finance, sales and marketing (sap).
<br>Other examples, dropbox, office 365, salesforce, yammer, google drive

## Cloud deployment models

- **Cloud-based** fully deployed in AWS cloud

- **Hybrid** is the most popular, some resources on-premise and others on the cloud.
<br>Example
	- Fully managed compute and storage hw built with AWS designed solutions
	- Extends AWS services to consumer data centers, co-location spaces, or on-premises.
		- Can use AWS o Virtualization on AWS

- **On-premises** your own data center, hosted privately, required for regulations and governance.
<br>Uses virtualization, hypervisors.

## AWS Services

- Compute
	- Linux or windows servers
	- functions (AWS Lambda)
	- containers (AWS Fargate)
- Networking and CDN
	- VPCs
- Storage
	- Block Storage
	- Object storage (S3)
- Database
	- mysql
	- nosql: Dynamo DB

### Locations

- Regions
	- Availability Zones in each Region

Example:

- North Virginia
	- East US
	- East US2
	- US Gov Virginia

As of 2020:

- 4 Regions
- 77 availability zones in total
- 245 countries serviced
- 205 edge locations
- 11 regional edge caches

AWS is **Leader** according to 2020 Gartner Magic Quadrant, 10th year in row
, and 2x more regions with multiple availability zones than nearest competition

## AWS Value proposition: Agility

- **Agility** AWS as producer, we as consumer: co-create value and deliver data, applications
, services and solutions to the world.
- Includes the concept of **flexibility**
- Integrates with **Agile** development, spirar development, and project management
- Leveraging for rapid deployment, testing, experimentation and innovation
- Overcoming geographical limitations
- Ability to replicate/move data from one region to another

## AWS Value proposition: Elasticicy

- **Elasticity** is the ability to almost instantly **provision** and **deprovision** resources
- Leveraging dynamic auto-scaling technologies is part of the solution

> Allows to add thousands of virtual servers and petabytes of storage within minutes.
<br>Regions, enables dynamically shift around expanding global infra capacity, creating
a better and more enjoyable streaming experience for Netflix members wherever they are.
<br>Netflix manager

## AWS Value proposition: Cost

- **Reduce costs** and investments in conectivity, network, devices, servers, racks, cabling, buildings
- No need for employments and training, certification
- No need for maintenance and upgrades
- No need for facilities
- You can have disaster recovery sites
- Lower cost of DB and storage
- More AWS usage comes with discounted prices

## AWS Value proposition: Security

- AWS responsible for physical security
- AWS responsible for the infra resources (compute, storage, database and network)
- Consumer responsible for software, data and access on top of infra
- AWS has highly-secure non-descript datacenters with stringent physical security and multi-factor
authentication of their employees

### Security triad
1. IAM Identity and Access Management
2. KMS Key Management Service
3. Infrastructure security
	- Through VPC design, firewalls, and managed services (AWS shield, GuardDuty, Inspector)

## References

- [AWS Certified Cloud Practitioner](https://aws.amazon.com/certification/certified-cloud-practitioner/)
- [AWS Certification exam preparation](https://aws.amazon.com/certification/certification-prep/)

