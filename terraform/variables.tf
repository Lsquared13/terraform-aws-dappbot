# --------------------------------------------------------
# REQUIRED NPM VARIABLES
# --------------------------------------------------------

variable "npm_user" {
    description = "Username for the NPM account which is a member of the eximchain organization. Required, @eximchain/dappsmith is private."
}

variable "npm_pass" {
    description = "Password for the NPM account which is a member of the eximchain organization. Required, @eximchain/dappsmith is private."
}

variable "npm_email" {
    description = "Email for the NPM account which is a member of the eximchain organization. Required, @eximchain/dappsmith is private."
}

# --------------------------------------------------------
# OPTIONAL AWS & DOMAIN VARIABLES
# --------------------------------------------------------

variable "aws_region" {
    description = "AWS Region to use"
    default     = "us-east-1"
}

variable "root_domain" {
    description = "Root domain on Route 53 on which to host the API"
    default     = "eximchain-dev.com"
}

variable "subdomain" {
    description = "subdomain on which to host the API. The API DNS will be {subdomain}.{root_domain}"
    default     = "api-test"
}
