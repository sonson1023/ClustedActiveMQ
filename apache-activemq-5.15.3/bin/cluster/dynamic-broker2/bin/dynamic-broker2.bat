@echo off
set ACTIVEMQ_HOME="C:/Users/admin/Downloads/apache-activemq-5.15.3-bin(1)/apache-activemq-5.15.3"
set ACTIVEMQ_BASE="C:/Users/admin/Downloads/apache-activemq-5.15.3-bin(1)/apache-activemq-5.15.3/bin/cluster/dynamic-broker2"
set ACTIVEMQ_CONF=%ACTIVEMQ_BASE%/conf
set ACTIVEMQ_DATA=%ACTIVEMQ_BASE%/data
set PARAM=%1
:getParam
shift
if "%1"=="" goto end
set PARAM=%PARAM% %1
goto getParam
:end

%ACTIVEMQ_HOME%/bin/activemq %PARAM%