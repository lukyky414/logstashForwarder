oc delete configmaps logstash-config
oc delete configmaps logstash-pipeline
oc delete deployment logstash
oc delete clusterlogforwarders instance
oc delete clusterloggings instance
oc delete svc logstash-application
oc delete svc logstash-infrastructure
oc delete svc logstash-audit
