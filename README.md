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

![Screenshot 2023-01-30 at 9 27 45 PM](https://user-images.githubusercontent.com/113396342/215927980-43838eba-2940-4d5b-910b-ef6b8aeae09c.png)

SUCH A SPEED DEPLOYMENT , ISN'T IT?

<a href="https://github.com/hkaanturgut/Automate-Docker-builds-using-Jenkins-Pipelines-Dockerize-Python-App-Upload-Images-into-Azure-Con/tree/main/azure_terraspace_linux-vm" target="_blank">Terraspace Code Repository</a> 

![Screenshot 2023-01-31 at 6 21 57 PM](https://user-images.githubusercontent.com/113396342/215906529-b0bdca76-be36-4caa-bb0e-f35646b49daa.png)
#

2- Creating a ACR with Terraspace

<a href="https://github.com/hkaanturgut/Automate-Docker-builds-using-Jenkins-Pipelines-Dockerize-Python-App-Upload-Images-into-Azure-Con/tree/main/azure_terraspace_acr" target="_blank">Terraspace Code Repository</a> 

![Screenshot 2023-01-30 at 10 04 38 PM](https://user-images.githubusercontent.com/113396342/215906667-d768657b-8591-40d9-bf47-9020ed0fd7fb.png)


    - Connect to the VM by doing [ssh username@vm_public_ip] and then punch in the password to login.
    
![Screenshot 2023-01-30 at 9 29 36 PM](https://user-images.githubusercontent.com/113396342/215928174-23333182-ee00-4fd2-8e1c-ca4ae77e1e8b.png)

#
3-  Installing Docker into the Linux Vm

Step 1: Update the apt cache.

      sudo apt-get update -y
Step 2: Add the GPG key.

      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
Step 3: Add the docker apt repository.

      sudo add-apt-repository \ "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    
Step 4: Update the apt cache again.

      sudo apt-get update -y
      
Step 5: Install all docker components.

      sudo apt-get install docker-ce docker-ce-cli containerd.io -y
      
Step 6: Verify the Docker installation

      sudo docker version
      
#
4- Installing Jenkins from a container inside the VM

Clone Github Repository which includes Dockerfile of the Jenkins image by doing :

      git clone https://github.com/hkaanturgut/Automate-Docker-builds-using-Jenkins-Pipelines-Dockerize-Python-App-Upload-Images-into-Azure-Con/tree/main/jenkins-nodejs-image

How to build Jenkins? 

      docker build -t jenkins-nodejs-dind .
      
How to run Jenkins?

      docker run -p 8080:8080 -p 50000:50000 -d --restart=on-failure -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd)/datadir:/var/jenkins_home --name jenkins-nodejs-dind jenkins-nodejs-dind
      
How to monitor Jenkins?

      docker logs -f jenkins-nodejs-dind
#

- In order to unlock the Jenkins , administrator password needs to be entered. You can see your password by going to :
   
      docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

![Screenshot 2023-01-31 at 9 02 42 PM](https://user-images.githubusercontent.com/113396342/215927010-a0d10854-c9c2-46a7-9dc3-3e1a9e9ff999.png)
#

- Install suggested plugins!

![Screenshot 2023-01-31 at 9 13 11 PM](https://user-images.githubusercontent.com/113396342/215928476-0e49990d-a699-43a5-894a-a307b180a4a6.png)
#

- Create your admin credentials

![Screenshot 2023-01-30 at 9 40 12 PM](https://user-images.githubusercontent.com/113396342/215928690-6c6a6673-b070-4617-b809-5f79ea88b920.png)
#

- In order to be able to containerized our app , we need to install Docker plugins for our Jenkins.
 
     - From Dashboard > Manage Jenkins > Plugin Manager > Available Plugins > type Docker and select these two plugins > Install without restart
     
![Screenshot 2023-01-31 at 4 07 53 PM](https://user-images.githubusercontent.com/113396342/215929121-0c88075f-4994-4004-b6b7-0c9d3728cbcb.png)
#

- To be able to deploy our image to ACR , we need to connect our Jenkins with our ACR by adding credentials of ACR

     - From Dashboard > Manage Jenkins > Credentials > System > Global Credentials > Add credentials 
     
- ACR credentials from Azure Portal
   
   ![Screenshot 2023-01-30 at 10 04 38 PM](https://user-images.githubusercontent.com/113396342/215930665-b300cbe1-e901-4ca5-8d9c-d8bef88df9c1.png)

![Screenshot 2023-01-30 at 10 05 25 PM](https://user-images.githubusercontent.com/113396342/215930412-0fb7e273-c891-4336-bb56-12e8edb91683.png)


![Screenshot 2023-01-30 at 10 05 50 PM](https://user-images.githubusercontent.com/113396342/215929954-df4add05-bb6f-4e40-a349-98bea9666cfc.png)
#


