oc apply -f 1-ClusterLogging.yml
oc apply -f 2-ConfigMap-config.yml -f 2-ConfigMap-pipeline.yml -f 2-ConfigMap-ruby.yml -f 2-ConfigMap-splunk.yml -f 2-Secret-splunk.yml
oc apply -f 3-Deployment.yml
oc apply -f 4-Service.yml
oc apply -f 5-ClusterLogForwarder.yml