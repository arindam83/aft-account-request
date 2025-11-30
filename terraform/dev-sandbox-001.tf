module "dev_sandbox_001" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "dev-sandbox-001@yourdomain.com"  # Must be unique across ALL AWS accounts
    AccountName               = "dev-sandbox-001"
    ManagedOrganizationalUnit = "Sandbox"  # Must exist in your Control Tower
    SSOUserEmail              = "halder.anshupriya@gmail.com"  # Your admin email
    SSOUserFirstName          = "Anshu"
    SSOUserLastName           = "Admin"
  }

  account_tags = {
    Environment = "Development"
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