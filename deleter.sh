oc delete clusterlogforwarders instance          -n openshift-logging
oc delete service              logstash          -n openshift-logging
oc delete deployment           logstash          -n openshift-logging
oc delete configmaps           logstash-config   -n openshift-logging
oc delete configmaps           logstash-pipeline -n openshift-logging
oc delete configmaps           logstash-ruby     -n openshift-logging
oc delete clusterloggings      instance          -n openshift-logging
