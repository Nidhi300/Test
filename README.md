# 2. Infrastructure

You are tasked with setting up a kubernetes cluster to host new web services. The web services will be providing a public API to an existing internal systems. The internal systems are hosted on a virtual network named "internal-assets", and it is imperative that a high level of security is maintained around this virtual network.
Please provide a brief description of the infrastructure you would put in place. You can describe your set up in words or pictures, but please ensure you account for the following constraints:

1. You have a choice of which hosting provider it is deployed with.
2. Your cluster is going to host web services that need to be published on the internet.
3. A support team will need to be notified if web services lose connectivity to the internal assets
4. Developers should be able to deploy code in an automated manner.
5. The cluster will need to be able to access pre-existing internal systems on the "internal-assets" virtual network. Describe how we can access that securely.

You do not need to provide complete implementation details for the above, but please be specific about the selection of technologies you would use.
