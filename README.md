# KubernetesReferences

**Current API version: v1.23**

This Ruby gem attempts to collect all the Kubernetes objects available in the API as Ruby objects. Although not very useful at the moment, it could come in handy if you want to develop tools that need to play with the api's schemas.

## Naming and conventions

The files in this gem are named in snake_case and the classes are in camelCase.

Class attributes are in snake_case to respect Ruby standards, unlike the official API, which is in camelCase.

All attributes for each supported object are accepted.

Plurals are preserved. `Object array` are implemented as `Array[Object]` with basic Ruby Array object, there is no such thing as a plural class.

```yaml
good: Array[KubernetesReferences::Container]
bad: KubernetesReferences::Containers -> [KubernetesReferences::Container]
```

## Example

```ruby
require "kubernetes_references"

container = KubernetesReferences::Container.new(
  name: "my-container",
  ports: [KubernetesReferences::ContainerPort.new(
    container_port: 80,
    name: "http",
    protocol: "TCP"
  )]
)
```

Tired of writing "KubernetesReferences::" ? Shortcuts are present with the `Kube` prefix:

```ruby
require "kubernetes_references"

container = KubeContainer.new(
  name = "my-container",
  ports: [KubeContainerPort.new(
    container_port: 80,
    name: "http",
    protocol: "TCP"
  )]
)
```

Please check the test files for more examples of how to use this gem.

## Types

All objects have type definitions as rbs files, in the "sig" folder. To check types, the project uses Steep.

```bash
steep check

No type error detected. 🧉
```

## How it works ?

All classes in `lib/kubernetes_references` are inheriting from `KubernetesReferences::API`.

This class implements a `#_set!` method that takes a constructor hash (`#initialize`) in order to populate class attributes (if present).

```ruby
module KubernetesReferences
  class MyObjectClass < KubernetesReferences::API
    attr_accessor :my_field
    attr_accessor :another_field

    # obj must be hash withfields:
    # {
    #   my_field: "my-value",
    #   another_field: 1
    # }
    def initialize(obj)
      _set!(obj)
    end
  end
end
```

Types of `my_field` and `another_field` are validated by `Steep` (in the `sig` folder):

```ruby
class KubernetesReferences::MyObjectClass
  attr_accessor my_field: String
  attr_accessor another_field: Integer
end
```

This method avoids the need for additional requires such as OpenStruct or Struct.

## Supported objects

The Kubernetes api is extremely large and evolves regularly. For the moment, the following objects are supported:

```
core/v1 Capabilities
core/v1 ConfigMapEnvSource
core/v1 ConfigMapKeySelector
core/v1 Container
core/v1 ContainerPort
core/v1 EnvFromSource
core/v1 EnvVar
core/v1 EnvVarSource
core/v1 ExecAction
core/v1 GRPCAction
core/v1 HTTPGetAction
core/v1 HTTPHeader
core/v1 Lifecycle
core/v1 LifecycleHandler
core/v1 ObjectFieldSelector
core/v1 Probe
core/v1 Quantity # todo
core/v1 ResourceFieldSelector
core/v1 ResourceRequirements
core/v1 SeccompProfile
core/v1 SecretEnvSource
core/v1 SecretKeySelector
core/v1 SecurityContext
core/v1 SELinuxOptions
core/v1 TCPSocketAction
core/v1 VolumeDevice
core/v1 VolumeMount
core/v1 WindowsSecurityContextOptions
```

## Tests

The tests are written with Minitest.

```
rake test
```