# Automate Docker builds using Jenkins Pipelines | Dockerize Python App | Upload Images into Azure Container Registry (ACR)

This repository contains the necessary resources to automate the build and deployment of a Dockerized Python application. We'll use Jenkins Pipelines to manage the build process and Azure Container Registry (ACR) to store the Docker images from inside our provisioned Linux Vm.
#

# Steps 

- Creating a Linux Vm with Terraspace
- Creating a ACR with Terraspace
- Installing Docker into the Linux Vm
- Installing Jenkins from a container inside the VM
- Building our image with Jenkins Pipeline and Deploy it to the ACR.
- Running a container from our image to provision our Python App.
#

1 - Create the Linux Vm with Terraspace 

<a href="https://github.com/hkaanturgut/Automate-Docker-builds-using-Jenkins-Pipelines-Dockerize-Python-App-Upload-Images-into-Azure-Con/tree/main/azure_terraspace_linux-vm" target="_blank">Terraspace Code Repository</a> 

![Screenshot 2023-01-31 at 6 21 57 PM](https://user-images.githubusercontent.com/113396342/215906529-b0bdca76-be36-4caa-bb0e-f35646b49daa.png)
#

2- Creating a ACR with Terraspace

<a href="https://github.com/hkaanturgut/Automate-Docker-builds-using-Jenkins-Pipelines-Dockerize-Python-App-Upload-Images-into-Azure-Con/tree/main/azure_terraspace_acr" target="_blank">Terraspace Code Repository</a> 

![Screenshot 2023-01-30 at 10 04 38 PM](https://user-images.githubusercontent.com/113396342/215906667-d768657b-8591-40d9-bf47-9020ed0fd7fb.png)


    - Connect to the VM by doing [ssh username@vm_public_ip] and then punch in the password to login.
#
3-  Installing Docker into the Linux Vm

Step 1: Update the apt cache.

      - sudo apt-get update -y
Step 2: Add the GPG key.

      - curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
Step 3: Add the docker apt repository.

      - sudo add-apt-repository \ "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    
Step 4: Update the apt cache again.

      - sudo apt-get update -y
      
Step 5: Install all docker components.

      - sudo apt-get install docker-ce docker-ce-cli containerd.io -y
      
Step 6: Verify the Docker installation

      - sudo docker version
      
#
4- Installing Jenkins from a container inside the VM

    - 
