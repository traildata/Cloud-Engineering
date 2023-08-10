terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.68"
    }
  }
    backend "remote" {
    organization = "capg"

    workspaces {
      name = "SNOWFLAKE-DEMO"
    }
  }

}



provider "snowflake" {
}

resource "snowflake_database" "db" {
  name = "TF_DEMO"
  comment = "The terraform automated demo database"
  data_retention_time_in_days = 6

}

