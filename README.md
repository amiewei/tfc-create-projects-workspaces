**Use Terraform to Manage Projects and Workspaces**

Example creates 3x3 workspaces in a project named Azure. Each workspace will contain an environment for an application (dev, test, prod)

In Terraform cloud, if using:

-   Local Execution Mode: can use your own user token, as privileges are inherited by the run itself locally
-   Remote Execution Mode: needs a separate token with adequate permissions (such as an Org Token) explicitly mentioned in the workspace, either through TFE_TOKEN environment variable, or defined in the provider block

```
# provider block example
    provider "tfe" {
        token = "xyz"
    }

```
