# txlab-ssh-callhome-scripts
This repository contains two automated setup scripts for building a simple SSH-based C2 as described in the following two blog posts by Stanislav Sinyagin:

- https://txlab.wordpress.com/2012/01/25/call-home-ssh-scripts/
- https://txlab.wordpress.com/2012/03/14/improved-call-home-ssh-scripts/

The repository implements the design described in the second blog post (Improved Call Home SSH Scripts).

Credit for the C2 architecture itself should go exclusively to Stanislav Sinyagin (Github: [ssinyagin](https://github.com/ssinyagin)), since the only real contributions here are two Python scripts that automate the installation process. Go read the blog posts if you want to know what it does and how it works, and make sure to give a shoutout to the original author if you benefit from this.

## Setup Instructions 

__Step 1__ - Server Setup

Execute init-server on the C2 server as shown in the following command:

```
  ./init-server 
```

__Step 2__ - Client Setup

Execute init-client on the client device as shown in the following command, where:

- PORT is the port number you selected in Step 1
- SERVER is the FQDN or IP of your C2 server

```
  ./init-client --server SERVER --port PORT
```

Repeat this step for each client device that you wish to be able to connect to.

__Step 3__ - Connect to Device(s)

You should now be able to SSH to each client device by establishing an SSH tunnel to your C2 server as shown in the following command, where:

- PORT is the port number you selected in Step 1
- SERVER is the FQDN or IP of your C2 server
- USERNAME is a valid user on the client device

```

ssh -p PORT USERNAME@SERVER

```
