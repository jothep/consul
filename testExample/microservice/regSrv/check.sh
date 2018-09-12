#check service from host
curl 127.0.0.1:8500/v1/agent/services?pretty

#check all service
curl http://127.0.0.1:8500/v1/catalog/services?pretty

#check aimed service
curl http://127.0.0.1:8500/v1/catalog/service/webtest?pretty

#check service by dig
dig @127.0.0.1 -p 8600 webtest.service.consul SRV

#check service by dnsmasq
nslookup webtest.service.consul

#health check all service
curl 127.0.0.1:8500/v1/health/state/any?pretty 

#health check all critical
curl http://localhost:8500/v1/health/state/critical?pretty

#health check aimed service
curl 127.0.0.1:8500/v1/health/checks/webtest?pretty
