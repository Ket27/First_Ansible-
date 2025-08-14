sudo apt update -y && sudo apt upgrade -y

sudo apt install ansible

# For passwordless connection

#In master node
ssh-keygen
nano /home/ubuntu/.ssh/id_rsa.pub  #Copy the public key

#In worker node
nano ~/.ssh/authorized_keys  ## Paste the copied public key


#To run ansible playbook
ansible_playbook -i inventory playbook.yaml
