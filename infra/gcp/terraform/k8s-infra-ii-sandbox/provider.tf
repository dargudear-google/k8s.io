/*
Copyright 2021 The Kubernetes Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

/*
This file defines:
- Required provider versions
- Storage backend details
*/

terraform {

  backend "gcs" {
    bucket = "k8s-infra-tf-sandbox-ii"
    // TODO(spiffxp): the names not matching weirds me out a bit, it would be
    //                nice to rename the project at some point
    prefix = "k8s-infra-ii-sandbox"
  }


  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.87.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 3.87.0"
    }
  }
}
