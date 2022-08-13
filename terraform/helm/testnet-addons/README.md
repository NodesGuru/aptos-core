# testnet-addons

![Version: 0.1](https://img.shields.io/badge/Version-0.1-informational?style=flat-square) ![AppVersion: 0.1.0](https://img.shields.io/badge/AppVersion-0.1.0-informational?style=flat-square)

Additional components for aptos-nodes testnet

**Homepage:** <https://aptoslabs.com/>

## Source Code

* <https://github.com/aptos-labs/aptos-core>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| aws.cluster_name | string | `nil` | AWS EKS cluster resources are deployed in |
| aws.region | string | `nil` | AWS region resources are deployed in |
| aws.role_arn | string | `nil` | AWS Role ARN for k8s integrations |
| aws.vpc_id | string | `nil` | AWS VPC ID resources are deployed in |
| aws.zone_name | string | `nil` | Route53 zone name to create external-dns records in |
| genesis.chain_id | string | `nil` | Aptos Chain ID |
| genesis.numValidators | string | `nil` | Number of validators deployed in this testnet |
| genesis.username_prefix | string | `"aptos-node"` | Validator username prefix, used to get genesis secrets. This should be the fullname for the aptos-node helm release |
| ingress.acm_certificate | string | `nil` | The ACM certificate to install on the ingress |
| ingress.cookieDurationSeconds | int | `86400` | If stickiness is enabled, how long the session cookie should last |
| ingress.enableStickyness | bool | `true` | Whether to enable session stickiness on the underlying load balancer |
| ingress.loadBalancerSourceRanges | string | `nil` | List of CIDRs to accept traffic from |
| ingress.wafAclArn | string | `nil` | The ARN of the WAF ACL to install on the ingress |
| load_test.affinity | object | `{}` |  |
| load_test.config.duration | int | `300` | How long to emit transactions for |
| load_test.config.enableBurst | bool | `false` | Whether to send a burst of transactions without waiting |
| load_test.config.mempool_backlog | int | `5000` | Number of transactions outstanding in mempool |
| load_test.config.mint_key | string | `nil` | The private key used to mint to fund load test |
| load_test.config.numFullnodeGroups | string | `nil` | The number of fullnode groups to run traffic against |
| load_test.config.txn_expiration_time_secs | int | `30` | How long to wait for transactions to be expired |
| load_test.config.use_validators | bool | `false` | Whether to submit transactions through validator REST API |
| load_test.config.waitMillis | int | `1000` | How long to wait for transactions to be finalized |
| load_test.enabled | bool | `false` | Whether to enable the load test CronJob |
| load_test.fullnode | object | `{"groups":[{"name":"fullnode"}]}` | The fullnode groups to target |
| load_test.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy to use for tools image |
| load_test.image.repo | string | `"aptoslabs/tools"` | Image repo to use for tools image for running load tests |
| load_test.image.tag | string | `nil` | Image tag to use for tools image |
| load_test.intervalMins | int | `15` | How many minutes between load test runs |
| load_test.nodeSelector | object | `{}` |  |
| load_test.resources.limits.cpu | int | `1` |  |
| load_test.resources.limits.memory | string | `"512Mi"` |  |
| load_test.resources.requests.cpu | int | `1` |  |
| load_test.resources.requests.memory | string | `"512Mi"` |  |
| load_test.tolerations | list | `[]` |  |
| service.domain | string | `nil` | If set, the base domain name to use for External DNS |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `nil` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| waypoint.affinity | object | `{}` |  |
| waypoint.nodeSelector | object | `{}` |  |
| waypoint.tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)