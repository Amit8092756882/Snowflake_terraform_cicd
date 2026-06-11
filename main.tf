terraform {
    required_providers {
      snowflake = {
        source  = ""
        version = ""
        }
      }

      backend "remote" {
        organization = ""

        workspaces {
          name = ""
          }
        }
      }

      provider "snowflake" {
      }

      resource "snowflake_database" "demo_db" {
        name     = "DEMO_DB"
        COMMENT  = "Database for Snowflake Terraform demo"
      }
       resource "snowflake_schema" "demo_schema" {
        name     = "DEMO_SCHEMA"
        COMMENT  = "Schema for Snowflake Terraform demo"
      }
