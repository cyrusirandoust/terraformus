# terraformus
Terraform by Cyrus - hence the name... (I know it's not funny)

All my public friendly project I feel to share will be going to each folder from the root. 

For now, I have only one I invite you to check, it has its own README.md file in it: 
* avd-hub-spoke-dc

This Terraform code will create the following resources:

* An Azure Virtual Network to be used as the hub network
* A subnet for an Azure Firewall, which may be added later
* A subnet for the domain controller
* A subnet for the host pool
* An Azure Virtual Machine with ADDS installed and configured

Credit goes to @ned1313 who teachs AVD in Pluralsight.
You can update the `terraform.tfvars` file as needed with the domain you want to use.

## Prerequisites

It is recommended to use Terraform Cloud (free) with a VCS like GitHub (also free). The first will let you automatically run the code change from the second. Hence that set-up is done, you will have a real life experience of an Infrastructure-as-a-Code. The ultimate goal is to have a working lab in Azure for AVD, but that seztup will allow you to scale and adapt the lab for other use cases. 

I will provide more information on how I've adapted the previous work from ned-in-the-cloud to suit my use case, which is to have all the sensitive variables, the environement and terraform variables, and the state file stored directly in Terraform Cloud.

**Remember that you should NEVER store any password or sensitive information in your source code repository, even setup in private. The best practice in Azure would be to store them in Key Vault. You can also consider storing them as sensitive in Terraform Cloud or Azure DevOps, but remember that bugs are often found in those solutions, like having the sensitive value being shared in the logs.**

## Preparing your Azure and Azure AD environment

You will need an Azure AD tenant and ideally a custom DNS domain name. Before setting up Azure AD Connect, you can add the custom domain name that matches you Active Directory domain to your Azure AD tenant. Be sure to verify the custom domain name as well. That should involve adding a TXT record to the custom domain name zone to verify you control the domain.

The resources you deploy from the Terraform script should use a subscription associated with the Azure AD tenant you'll be using for Azure Virtual Desktop.