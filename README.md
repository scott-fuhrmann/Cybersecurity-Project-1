## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![ELK Stack Network Diagram](/Diagrams/ELK_Stack_Network_Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above, or alternatively, select files may be used to install certain items, such as Filebeat. The playbook files are:

| File name     | Description                   |
|---------------|-------------------------------|
| ![setup-dvwa-servers-playbook.yml](/Ansible/setup-dvwa-servers-playbook.yml) | Install instance of DVWA on Webservers |
| ![install-elk.yml](/Ansible/install-elk.yml) | Install ELK stack onto ELK server |
| ![filebeat-playbook.yml](/Ansible/filebeat-playbook.yml) | Install Filebeat monitoring onto Webservers |
| ![metricbeat-playbook.yml](/Ansible/metricbeat-playbook.yml) | Install Metricbeat monitoring onto Webservers |

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures high availability for the application, in addition to restricting external access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the file system and system metrics.

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump-Box | Gateway  | 10.0.0.4 | Linux (Ubuntu Server) |
| Web-1    | DVWA Webserver | 10.0.0.5 | Linux (Ubuntu Server) |
| Web-2    | DVWA Webserver | 10.0.0.6 | Linux (Ubuntu Server) |
| Web-3    | DVWA Webserver | 10.0.0.7 | Linux (Ubuntu Server) |
| ELK-server | ELK Stack | 10.1.0.4 | Linux (Ubuntu Server) |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box and ELK-server machines can accept connections from the Internet. Access to these machines are only allowed from the following IP address:
- 101.182.75.17

Machines within the network can only be accessed by _____.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it enables the installation instructions for the ELK machine to be prepared and reviewed before deployment. In addition, new ELK machines can be deployed with the same configuration time and again, quickly and consistently.

The playbook implements the following tasks:
- Install the Docker engine onto the VM to allow the use of containers
- Install the Python 3 Package Manager onto the VM
- Use the Python 3 Package Manager to install the Python client for Docker
- Increase the Virtual memory on the VM to allow the ELK applications to run successfully
- Download and launch the ELK application into the Docker container
- Ensure that the Docker container is started everytime that the VM is started

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Screenshot of docker ps output](/Diagrams/sudo_docker_ps.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
