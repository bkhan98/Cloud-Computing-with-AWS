# Cloud-Computing-with-AWS
# AWS/DevOps/IT Best Practices
* #### Naming convention: eng110_shahrukh
* #### AWS service i.e EC2 instances should turned off/stopped/terminated by 1800 
everyday, if you would like to use later than 1800 please ask, latest time 2000
* #### Only use Ireland - eu-west-1/a/b/c
* #### AWS KEYS MUST BE NOT BE SHARED WITH ANYONE - PUBLIC CLOUD OR PLATFORM/GITHUB 
ETC.
* #### eng119.pem - move to .ssh folder in your machine

# Introduction to Cloud Computing (AWS in our case):
* Cloud computing is the practice of using a network of remote servers hosted on the 
internet to store, manage and process data. It is an alternative to setting up and 
maintaining a server on local hardware. There are three big public cloud vendors: 
Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform.
* Cloud computing is a term referred to storing and accessing data over the internet. 
It doesn’t store any data on the hard disk of your personal computer. In cloud 
computing, you can access data from a remote server.
* Simply put, cloud computing is the delivery of computing services—including servers, 
storage, databases, networking, software, analytics, and 
intelligence—over the Internet (“the cloud”) to offer faster innovation, flexible 
resources, and economies of scale.

## Advantages of Cloud Computing:
#### On-Demand Self-service
#### Multi-tenancy
#### Offers Resilient Computing
#### Fast and effective virtualization
#### Provide you low-cost software
#### Offers advanced online security
#### Location and Device Independence
#### Always available, and scales automatically to adjust to the increase in demand
#### Allows pay-per-use
#### Web-based control & interfaces
#### API Access available.

# Types of Cloud Computing
## Private Cloud (on premises)
A private cloud refers to cloud computing resources used exclusively by a single 
business or organisation. A private cloud can be physically located on the company’s 
on-site datacenter. Some companies also pay third-party service providers to host 
their private cloud. A private cloud is one in which the services and infrastructure 
are maintained on a private network.
## Public Cloud
Public clouds are owned and operated by a third-party cloud service providers, which 
deliver their computing resources like servers and storage over the Internet. AWS 
(Amazon Web Services) is an example of a public cloud. With a public cloud, all 
hardware, software and other supporting infrastructure is owned and managed by the 
cloud provider. You access these services and manage your account using a web browser.
## Hybrid cloud (Banking use it)
Hybrid clouds combine public and private clouds, bound together by technology that 
allows data and applications to be shared between them. By allowing data and 
applications to move between private and public clouds, a hybrid cloud gives your 
business greater flexibility, more deployment options and helps optimise your existing 
infrastructure, security and compliance.
For example, banks can opt for a hybrid cloud computing architecture. Banks could 
store data such as a user's personal bank account details on their own premises where 
they have a great deal of control over the security of sensitive information. But 
areas of the business that are not sensitive, such as the registration page of the 
bank's website, could be put onto the cloud. That way, even if someone manages to gain 
access to the data, they do not gain any confidential information. By therefore 
adopting for a hybrid architecture, a bank can manage its own security whilst reaping 
the rewards of cloud computing such as cost effectiveness and scalability.

# Benefits of Cloud Computing
## Cost Savings
* Cloud computing eliminates the capital expense of buying hardware and software and 
setting up and running on-site datacenters—the racks of servers, the round-the-clock 
electricity for power and cooling, the IT experts for managing the infrastructure. It 
adds up fast.
* Cloud computing also offers its users a pay as you go approach to pricing. For 
example, with AWS you pay only for the individual services you need, for as long as 
you use them, and without requiring long-term contracts or complex licensing. AWS 
pricing is similar to how you pay for utilities like water and electricity. You only 
pay for the services you consume, and once you stop using them, there are no 
additional costs or termination fees.
* Cost saving is one of the biggest Cloud Computing benefits. It helps you to save 
substantial capital cost as it does not need any physical hardware investments. Also, 
you do not need trained personnel to maintain the hardware. The buying and managing of 
equipment is done by the cloud service provider.

## Reliability
* Cloud computing makes data backup, disaster recovery and business continuity easier 
and less expensive because data can be mirrored at multiple redundant sites on the 
cloud provider’s network. In AWS, for example, there exist different regions which are 
physical locations around the world where Amazon cluster data centers. Each group of 
logical data centers is called an Availability Zone (AZ), and each AWS Region consists 
of multiple, isolated, and physically separate AZs within a geographic area. That way, 
even if something disastrous happens to one AZ, such as a natural disaster like 
flooding, the product will not go done as AWS will automatically redirect the traffic 
for your instances to another AZ in the region.

## Accessibility
* Cloud computing ensures details such as a low latency can easily be achieved. For 
example, if the end user is based in Australia, the region you use could also be in 
Australia to improve their experience with the product. (SIDE NOTE: CDN - Contact 
delivery network. Helps latency/response time if the servers from the users are very 
far away.)

## Flexibility through Scalability
* Predicting future traffic is difficult, especially when unforeseen events can arise 
such as a pandemic. As people were locked inside for months on end, internet usage 
increased and the traffic websites received increased significantly. But cloud 
computing is flexible, and it can meet unpredictable events because it offers its 
users the ability to increase or decrease IT resources as needed to meet changing 
demand.
* Apps can even be deployed into multiple regions. That way, if the Ireland region for 
AWS goes down, it can still serve the users from London. However, as you use more 
regions, the costs will become greater so the business will have to carry out a 
cost-benefit analysis.


## AWS Security - Keys - IAM role:
An IAM role is an IAM identity that you can create in your account that has specific 
permissions. An IAM role is similar to an IAM user, in that it is an AWS identity with 
permission policies that determine what the identity can and cannot do in AWS.


## Availability zones (why we need 3 instead of 1):
* An availability zone is a logical data center in a region available for use by any 
AWS customer. Each zone in a region has redundant and separate power, networking and 
connectivity to reduce the likelihood of two zones failing simultaneously.
* High availability: 








# AWS/DevOps/IT Best Practices
* Naming convention: eng110_shahrukh
* AWS service i.e EC2 instances should turned off/stopped/terminated by 1800 everyday, 
if you would like to use later than 1800 please ask, latest time 2000
* Only use Ireland - eu-west-1/a/b/c
* AWS KEYS MUST BE NOT BE SHARED WITH ANYONE - PUBLIC CLOUD OR PLATFORM/GITHUB ETC.
* eng119.pem - move to .ssh folder in your machine

# Steps to set up AWS instance
