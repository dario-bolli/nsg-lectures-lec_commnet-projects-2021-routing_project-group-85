# Routing Project - Group 85

This is your group repository it contains the credentials to access your network and the necessary information to setup the VPN from the bonus question. You will also use this repository to submit your work---both the configurations and the report---at the end of the project.

## Accessing your network

To access your network, follow [these instructions](https://gitlab.ethz.ch/nsg/lectures/lec_commnet/projects/2021/routing_project/assignment/-/wikis/2.-Tutorial/2.1-Accessing-your-devices) using the following credentials:

* __user:__ `root`
* __port:__ `2085`
* __password:__ `95f359e87f55bf3a`

For example, you can use:
```bash
ssh -p 2085 root@snowball.ethz.ch
```

## Accessing the measurement container

The password to access the measurement container is `5ffa634282d3ca8e`.

## Bonus Question: Setting up your VPN

When trying to solve the [bonus question](https://gitlab.ethz.ch/nsg/lectures/lec_commnet/projects/2021/routing_project/assignment/-/wikis/1.-Assignment/1.3-Questions#bonus-question-35-05-point), you will need the certificate files and ports at which the VPN servers are listening:

* __VPN server at S1:__  
Port: `10102`  Certificate: [vnp1_ca.crt](/resources/vpn1_ca.crt)

* __VPN server at S2:__  
Port: `10103`  Certificate: [vnp2_ca.crt](/resources/vpn2_ca.crt)

* __VPN server at S3:__  
Port: `10104`  Certificate: [vnp3_ca.crt](/resources/vpn3_ca.crt)

Note, that you will have to specify the correct certificate in the `client.conf` under `ca` (e.g., `ca vnp1_ca.crt`).

