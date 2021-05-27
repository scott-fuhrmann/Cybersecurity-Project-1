## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![ELK stack network diagram](/Diagrams/ELK_stack_network.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above, or alternatively, select files may be used to install certain items, such as Filebeat. The playbook files are:

| File name     | Description                   |
|---------------|-------------------------------|
| ![setup-dvwa-servers-playbook.yml](/Ansible/setup-dvwa-servers-playbook.yml) | Install instance of DVWA on Webservers |
| ![install-elk.yml](/Ansible/install-elk.yml) | Install ELK stack onto ELK server |
| ![filebeat-playbook.yml](/Ansible/filebeat-playbook.yml) | Install Filebeat monitoring onto Webservers |
| ![metricbeat-playbook.yml](/Ansible/metricbeat-playbook.yml) | Install Metricbeat monitoring onto Webservers |

### Contents
This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures high availability for the Vulnerable web application, in addition to restricting external access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for irregularities highlighted in system logs as well as monitoring system metrics.

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump-Box | Gateway  | 10.0.0.4 | Linux (Ubuntu Server) |
| Web-1    | DVWA Webserver | 10.0.0.5 | Linux (Ubuntu Server) |
| Web-2    | DVWA Webserver | 10.0.0.6 | Linux (Ubuntu Server) |
| Web-3    | DVWA Webserver | 10.0.0.7 | Linux (Ubuntu Server) |
| ELK-server | ELK Stack | 10.1.0.4 | Linux (Ubuntu Server) |

### Access Policies

The machines on the internal network are not exposed to the public Internet except for the Jump-Box machine. This means that only the Jump-Box machine is able to be logged into from an IP address outside the Azure resource group. The Jump-box machine can only be accessed (logged into) from IP address 101.182.75.17 (identified as "Workstation" in the diagram above).

All other machines within the network can only be accessed (logged into) from the Jump-Box machine.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 40.127.80.215        |
| Web-1    | No                  | 10.0.0.5             |
| Web-2    | No                  | 10.0.0.6             |
| Web-3    | No                  | 10.0.0.7             |
| ELK-server | No                  | 10.1.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it enables the installation instructions for the ELK machine to be prepared and reviewed prior to deployment. In addition, new ELK machines may be deployed using the same configuration time and again, quickly and consistently.

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
- 10.0.0.5 (Web-1)
- 10.0.0.6 (Web-2)
- 10.0.0.7 (Web-3)

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat collects and organises log files from the machines being monitored. An example of the logging performed is file system information to identify any files that have been changed and when the change occurred.
- Metricbeat collects metrics on the machines being monitored and the services running on those machines. An example of the metrics taken are CPU and memory utilisation.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the `install-elk.yml` file to /etc/ansible/files.
- Copy the `filebeat-playbook.yml` file to /etc/ansible/files.
- Copy the `metricbeat-playbook.yml` file to /etc/ansible/files.
- Update the /etc/ansible/hosts file to include the IP address for the Server
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
