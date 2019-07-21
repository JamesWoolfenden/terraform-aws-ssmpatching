
[![Slalom][logo]](https://slalom.com)

# terraform-aws-ssmpatching [![Build Status](https://travis-ci.com/JamesWoolfenden/terraform-aws-ssmpatching.svg?branch=master)](https://travis-ci.com/JamesWoolfenden/terraform-aws-ssmpatching) [![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-ssmpatching.svg)](https://github.com/JamesWoolfenden/terraform-aws-ssmpatching/releases/latest)

Terraform module to provision SSM scheme.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

  ```hcl
  module "ssmpatching" {
  source      = "JamesWoolfenden/ssmpatching/aws"
  version     = "0.0.4"
  common_tags = "${var.common_tags}"
  }
  ```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cron |  | string | n/a | yes |
| patchbaseline\_arn\_id |  | string | n/a | yes |
| patchgroup |  | string | n/a | yes |

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

Copyright © 2019-2019 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

  [![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

  [jameswoolfenden_homepage]: https://github.com/jameswoolfenden
  [jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-ssmpatching&url=https://github.com/JamesWoolfenden/terraform-aws-ssmpatching
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-ssmpatching&url=https://github.com/JamesWoolfenden/terraform-aws-ssmpatching
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-ssmpatching
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-ssmpatching
[share_email]: mailto:?subject=terraform-aws-ssmpatching&body=https://github.com/JamesWoolfenden/terraform-aws-ssmpatching
