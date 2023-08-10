provider "snowflake" {
  account = "qjwdjfx-wj60537"
  username = "SNOW_TERRAFORM_SERVICE_USER"
  private_key_path = "C:\\Users\\jsingh46\\.ssh\\snowflake_tf_snow_key.p8"
  role = "ORGADMIN"
  alias = "orgadmin"
 
}


resource "snowflake_account" "ac1" {
  provider             = snowflake.orgadmin
  name                 = "SNOWFLAKE_TEST_ACCOUNT"
  admin_name           = "jas4091"
  admin_password       = "Abcd1234!"
  email                = "jascap.sandbox@gmail.com"
  first_name           = "John"
  last_name            = "Doe"
  must_change_password = true
  edition              = "STANDARD"
  comment              = "Snowflake Test Account"
  region               = "AWS_US_WEST_2"
}