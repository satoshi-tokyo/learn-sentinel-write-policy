mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-fail-v2.sentinel"
  }
}

test {
    rules = {
        main = false
    }
}
