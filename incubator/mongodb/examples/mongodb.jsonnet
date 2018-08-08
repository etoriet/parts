local k = import 'k.libsonnet';
local mongo = import '../mongodb.libsonnet';

local appName = "mongo";
local rootPassword = "foobar";
local password = "bar";


k.core.v1.list.new([
  mongo.parts.deployment.persistent(appName),
  mongo.parts.pvc(appName),
  mongo.parts.secrets(appName, rootPassword, password),
  mongo.parts.service(appName),
])
