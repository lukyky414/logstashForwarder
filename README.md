# logstashForwarder

Create a Logstash pod, to forward log between OpenShift Cluster Fluentd and an external log storage.
A single pod is used to produce a single point for log input and output.

Three containers of logstash are running in the pod, one for each of this log categories:
- Application
- Infrastructure
- Audit

___
## Configuration

#### File to look at:
- **1-ClusterLogging.yml**: Put the ressources limit and request
- **2-ConfigMap-pipeline & 2-ConfigMap-ruby**: Put personnal filters
- **2-ConfigMap-splunk**: Put splunk URL and Port
- **2-Secret-splunk**: Put splunk access token
- **5-ClusterLogForwarder**: Put log level for each log cateories

___
## How to use

#### Prerequisites:
- Cluster Logging Operator installed.
- No Cluster Logging or Cluster Log Forwarder instance running.
- Image `docker.elastic.co/logstash/logstash:7.11.1` available to the cluster.

#### Installation:
- Use `oc apply -f <file>` with every `.yml` file in order, or use `create.sh`

#### Uninstall:
- Delete every resources created by `.yml` files, or user `delete.sh`

___
## File content

#### 1-ClusterLogging:
Contain Fluentd configuration of the Cluster Logging instance.

#### 2-ConfigMap:
- **config**: Contain logstash path to pipelines files.
- **pipeline**: Contain input, output and filters.
- **ruby**: Contain every ruby scripts
- **splunk**: Contain splunk URL and Port

#### 2-Secret:
Contain splunk access token

#### 3-Deployment:
Contain logstash deployment configuration.

#### 4-Service:
Contain service used to access logstash inside the cluster

#### 5-ClusterLogForwarder:
Contain configuration for Fluentd to send log to Logstash
