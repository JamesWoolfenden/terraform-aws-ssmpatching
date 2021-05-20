# terraform-aws-ssmpatching

![Verify and Bump](https://github.com/JamesWoolfenden/terraform-aws-ssmpatching/workflows/Verify%20and%20Bump/badge.svg)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-ssmpatching.svg)](https://github.com/JamesWoolfenden/terraform-aws-ssmpatching/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-ssmpatching.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-ssmpatching/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-ssmpatching/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-ssmpatching&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-ssmpatching/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-ssmpatching&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module to provision SSM scheme.
Sets up task and patch window to apply to instances tagged with PatchGroup Key and a set value.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

```hcl
module "ssmpatching" {
   source               = "JamesWoolfenden/ssmpatching/aws"
   version              = "0.1.7"
   common_tags          = var.common_tags
   patchbaseline_arn_id = var.patchbaseline_arn_id
   patchgroup           = var.patchgroup
   cron                 = var.cron
   task                 = var.task
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.patchaccess](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.patchaccess](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_ssm_maintenance_window.production](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_maintenance_window) | resource |
| [aws_ssm_maintenance_window_target.target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_maintenance_window_target) | resource |
| [aws_ssm_maintenance_window_task.task](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_maintenance_window_task) | resource |
| [aws_ssm_patch_group.patchgroup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_patch_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cron"></a> [cron](#input\_cron) | The Cron statement to control the patch schedule | `string` | n/a | yes |
| <a name="input_patchbaseline_arn_id"></a> [patchbaseline\_arn\_id](#input\_patchbaseline\_arn\_id) | This is an AWS variable that describe the patch baseline | `string` | n/a | yes |
| <a name="input_patchgroup"></a> [patchgroup](#input\_patchgroup) | A named group of servers to apply tasks to | `string` | n/a | yes |
| <a name="input_task"></a> [task](#input\_task) | Contains the task details and command | `map` | <pre>{<br>  "name": "commands",<br>  "values": [<br>    "yum update -y; reboot"<br>  ]<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_maintenance_window"></a> [maintenance\_window](#output\_maintenance\_window) | n/a |
| <a name="output_patchgroup"></a> [patchgroup](#output\_patchgroup) | n/a |
| <a name="output_task"></a> [task](#output\_task) | n/a |
| <a name="output_window_target"></a> [window\_target](#output\_window\_target) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-ssmpatching/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-ssmpatching/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-ssmpatching&url=https://github.com/JamesWoolfenden/terraform-aws-ssmpatching
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-ssmpatching&url=https://github.com/JamesWoolfenden/terraform-aws-ssmpatching
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-ssmpatching
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-ssmpatching
[share_email]: mailto:?subject=terraform-aws-ssmpatching&body=https://github.com/JamesWoolfenden/terraform-aws-ssmpatching
