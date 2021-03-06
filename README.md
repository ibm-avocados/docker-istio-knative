# docker istio knative

## Scope

A simple docker container that has everything required for istio to run on the IBM Cloud.

## Usage

Run via a `docker` `ENTRYPOINT` check: <https://phoenixnap.com/kb/docker-cmd-vs-entrypoint> if you are wondering why.

**EXAMPLE**:
```bash
docker run quay.io/ibm-advocados/docker-istio-knative:latest "APIKEY" "CLUSTER"
```

## Official Doc on Installing Istio
[Installing Istio of Knative](https://knative.dev/docs/install/installing-istio/)

## Configuring DNS
[Official Doc](https://knative.dev/docs/install/installing-istio/#configuring-dns)

## License & Authors

If you would like to see the detailed LICENCE click [here](./LICENCE).

- Author: JJ Asghar <awesome@ibm.com>
- Author: Mofi Rahman <moficodes@ibm.com>
```text
Copyright:: 2020- IBM, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

