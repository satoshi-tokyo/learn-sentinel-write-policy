sentinel {
  features = {
    terraform = true
  }
}

import "plugin" "tfplan/v2" {
  config = {
    plan_path = "./plan.json"
  }
}

policy "restrict-aws-instances-type-and-tag" {
  source            = "./policies/restrict-aws-instances-type-and-tag.sentinel"
  enforcement_level = "hard-mandatory"
}
