#!/bin/bash

juju deploy --to lxc:0 mysql
juju deploy --to lxc:0 rabbitmq-server
juju deploy --to lxc:1 keystone --config=openstack.cfg
juju deploy --to lxc:1 openstack-dashboard --config=openstack.cfg
juju deploy --to lxc:1 nova-cloud-controller --config=openstack.cfg
juju deploy --to lxc:1 glance --config=openstack.cfg
juju deploy quantum-gateway --to 1 --config=openstack.cfg
juju deploy --config=openstack.cfg --to 2 nova-compute
