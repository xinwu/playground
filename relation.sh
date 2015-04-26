#!/bin/bash

juju add-relation keystone mysql
juju add-relation nova-cloud-controller mysql
juju add-relation nova-cloud-controller rabbitmq-server
juju add-relation nova-cloud-controller glance
juju add-relation nova-cloud-controller keystone
juju add-relation nova-compute mysql
juju add-relation nova-compute:amqp rabbitmq-server:amqp
juju add-relation nova-compute glance
juju add-relation nova-compute nova-cloud-controller
juju add-relation glance mysql
juju add-relation glance keystone
juju add-relation quantum-gateway mysql
juju add-relation quantum-gateway:amqp rabbitmq-server:amqp
juju add-relation quantum-gateway nova-cloud-controller
juju add-relation openstack-dashboard keystone
