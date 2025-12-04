module "dev_sandbox_001" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "arindam.halder+test-sandbox-001@clorox.com"  # Must be unique across ALL AWS accounts
    AccountName               = "test-sandbox-001-1"
    ManagedOrganizationalUnit = "Sandbox"  # Arindam Must exist in your Control Tower from AWS
    SSOUserEmail              = "halder.anshupriya@gmail.com"  # Your admin email
    SSOUserFirstName          = "Anshu"
    SSOUserLastName           = "Admin"
  }

  account_tags = {
    Environment = "Testing"
    Purpose     = "Testing AFT"
    ManagedBy   = "AFT"
    Owner       = "Anshu"
  }

  change_management_parameters = {
    change_requested_by = "Anshu Halder"
    change_reason       = "Testing AFT account vending process"
  }

  custom_fields = {
    CostCenter = "Engineering"
  }

  account_customizations_name = ""  # Leave empty for now, we'll add customizations later
}