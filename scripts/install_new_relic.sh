#!/bin/bash -ex

rpm -Uvh http://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm || true
yum install -y newrelic-php5 || true

export NR_INSTALL_SILENT=true
export NR_INSTALL_KEY=43a935a2c40e5aeabb3123ca5d12f26f6881a448
newrelic-install install
