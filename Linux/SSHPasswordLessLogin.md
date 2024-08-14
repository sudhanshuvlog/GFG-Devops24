### Establishing Passwordless SSH Login:

1. Generate SSH Keys on OS2:
When you run the ssh-keygen command on OS2, it generates a pair of SSH keys:

Private Key (id_rsa): This key remains on OS2 and is used to authenticate yourself.
Public Key (id_rsa.pub): This key will be copied to OS1.

`ssh-keygen`
Copy Public Key to OS1:

When you use the ssh-copy-id command, it copies the public key from OS2 to OS1. The public key is added to the ~/.ssh/authorized_keys file on OS1. This file contains a list of public keys that are authorized to log in to the account.

`ssh-copy-id root@<IP of os1>`

While running the above command, It will ask for the password of os1, so for first time, we need to enable password login, So move to your OS1
`vi /etc/ssh/sshd_config` and in this file make PasswordLogin as `yes`, and Permitrootlogin also as `yes`
then restart the sshd server - `systemctl restart sshd`.

and now run the above command i.e `ssh-copy-id root@<IP of os1>`

### Explanation 

Public Key on OS1: The public key from OS2 is now stored in the ~/.ssh/authorized_keys file of the root user on OS1.
Private Key on OS2: The private key remains on OS2 and is used during the SSH connection process.
SSH Authentication Process:

When you try to SSH from OS2 to OS1, the SSH client on OS2 uses the private key to prove your identity.
OS1 checks its ~/.ssh/authorized_keys file to see if the public key corresponding to the private key is listed.
If it finds the matching public key, OS1 grants access without prompting for a password.
