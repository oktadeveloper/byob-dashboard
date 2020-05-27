# Terraform
This application is represented by an OpenID Connect application in Okta, so we need to configure one. We'll use the [Okta Terraform Provider](https://www.terraform.io/docs/providers/okta/index.html) to automate this process.

## Details
If you prefer to configure your org manually:

### Manually Configure Okta
1. In your **Developer Console**, navigate to the **Applications** menu, click **Add Application** and select **Single-Page App**
2. Click **Next**, then enter an Application **Name**. Then:
   * Set Base URIs to `http://localhost:8080/` (it should already be set by default)
   * Add an entry in *Redirect URIs*: `http://localhost:8080/oauth/callback`
   * Leave the default setting, Group assignments = **Everyone**
   * Select **Authorization Code** and deselect the default **Implicit** checkbox
3. Click **Done** to redirect back to the *General* tab of your application.
4. Make note of the **Client ID**, as it will be needed environment configuration. 
5. Make sure that **Use PKCE (for public clients)** (underneath the Client Id) is selected
6. Navigate to **Api** > **Trusted Origins** and add `http://localhost:8080` as a type = **CORS** entry.