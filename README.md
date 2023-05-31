# KubernetesReferences

[![Gem Version](https://badge.fury.io/rb/kubernetes_references.svg)](https://badge.fury.io/rb/kubernetes_references)

**Current API version: v1.23**

This Ruby gem attempts to collect all the Kubernetes objects available in the API as Ruby objects. Although not very useful at the moment, it could come in handy if you want to develop tools that need to play with the api's schemas.

## What is it

* a dictionary of native Kubernetes objects
* a precise definition of object types
* a native library without external dependencies


## What it is not

* a wrapper around kubectl explain
* a Kubernetes client
* a tool officially managed by the Kubernetes team


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

Tired of writing "KubernetesReferences::" ? Classes are also callable with the `Kube` prefix:

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

    # obj must be hash with fields:
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
module KubernetesReferences
  class MyObjectClass < KubernetesReferences::API
    attr_accessor my_field: String
    attr_accessor another_field: Integer

    def initialize: (untyped obj) -> void
  end
end
```

This method avoids the need for additional requires such as OpenStruct or Struct.

## Supported objects

The Kubernetes api is extremely large and evolves regularly. For the moment, the following objects are supported:

### Workloads APIs

- [x] Container v1 core
- [x] CronJob v1 batch
- [] DaemonSet v1 apps
- [] Deployment v1 apps
- [] Job v1 batch
- [] Pod v1 core
- [] ReplicaSet v1 apps
- [] ReplicationController v1 core
- [] StatefulSet v1 apps

### Service APIs

- [] Endpoints v1 core
- [] EndpointSlice v1 discovery.k8s.io
- [] Ingress v1 networking.k8s.io
- [] IngressClass v1 networking.k8s.io
- [] Service v1 core

### Config and storage APIs

- [] ConfigMap v1 core
- [] CSIDriver v1 storage.k8s.io
- [] CSINode v1 storage.k8s.io
- [] Secret v1 core
- [] PersistentVolumeClaim v1 core
- [] StorageClass v1 storage.k8s.io
- [] CSIStorageCapacity v1beta1 storage.k8s.io
- [] Volume v1 core
- [] VolumeAttachment v1 storage.k8s.io

### Metadata APIs

- [] ControllerRevision v1 apps
- [] CustomResourceDefinition v1 apiextensions.k8s.io
- [] Event v1 events.k8s.io
- [] LimitRange v1 core
- [] HorizontalPodAutoscaler v1 autoscaling
- [] MutatingWebhookConfiguration v1 admissionregistration.k8s.io
- [] ValidatingWebhookConfiguration v1 admissionregistration.k8s.io
- [] PodTemplate v1 core
- [] PodDisruptionBudget v1 policy
- [] PriorityClass v1 scheduling.k8s.io
- [] PodSecurityPolicy v1beta policy

### Cluster APIs

- [] APIService v1 apiregistration.k8s.io
- [] Binding v1 core
- [] CertificateSigningRequest v1 certificats.k8s.io
- [] ClusterRole v1 rbac.authorization.k8s.io
- [] ClusterRoleBinding v1 rbac.authorization.k8s.io
- [] ComponentStatus v1 core
- [] FlowSchema v1beta1 flowcontrol.apiserver.k8s.io
- [] Lease v1 coordination.k8s.io
- [] LocalSubjectAccessReview v1 authorization.k8s.io
- [] Namespace v1 core
- [] Node v1 core
- [] PersistentVolume v1 core
- [] PriorityLevelConfiguration v1beta1 flowcontrol.apiserver.k8s.io
- [] ResourceQuota v1 core
- [] Role v1 rbac.authorization.k8s.io
- [] RoleBinding v1 rbac.authorization.k8s.io
- [] RuntimeClass v1 nodes.k8s.io
- [] SelfSubjectAccessReview v1 authorization.k8s.io
- [] SelfSubjectRulesReview v1 authorization.k8s.io
- [] ServiceAccount v1 core
- [] StorageVersion v1alpha1 internal.apiserver.k8s.io
- [] SubjectAccessReview v1 authorization.k8s.io
- [] TokenRequest v1 authentication.k8s.io
- [] TokenReview v1 authentication.k8s.io
- [] NetworkPolicy v1 networking.k8s.io
```
Affinity
AWSElasticBlockStoreVolumeSource
AzureDiskVolumeSource
AzureFileVolumeSource
Capabilities
CephFSVolumeSource
CinderVolumeSource
ConfigMapEnvSource
ConfigMapKeySelector
ConfigMapProjection
ConfigMapVolumeSource
Container
ContainerPort
ContainerState
ContainerStateRunning
ContainerStateTerminated
ContainerStateWaiting
ContainerStatus
CronJob
CronJobSpec
CronJobStatus
CSIVolumeSource
DownwardAPIProjection
DownwardAPIVolumeFile
DownwardAPIVolumeSource
EmptyDirVolumeSource
EnvFromSource
EnvVar
EnvVarSource
EphemeralContainer
EphemeralVolumeSource
ExecAction
FCVolumeSource
FieldsV1
FlexVolumeSource
FlockerVolumeSource
GCEPersistentDiskVolumeSource
GitRepoVolumeSource
GlusterfsVolumeSource
GRPCAction
HostAlias
HostPathVolumeSource
HTTPGetAction
HTTPHeader
InvalidObjectFieldError
ISCSIVolumeSource
JobSpec
JobTemplateSpec
KeyToPath
KubernetesReferences::Quantity
LabelSelector
LabelSelectorRequirement
Lifecycle
LifecycleHandler
LocalObjectReference
ManagedFieldsEntry
NFSVolumeSource
NodeAffinity
NodeSelector
NodeSelectorRequirement
NodeSelectorTerm
ObjectFieldSelector
ObjectMeta
ObjectReference
OwnerReference
PersistentVolumeClaimSpec
PersistentVolumeClaimTemplate
PersistentVolumeClaimVolumeSource
PhotonPersistentDiskVolumeSource
PodAffinity
PodAffinityTerm
PodAntiAffinity
PodDNSConfig
PodDNSConfigOption
PodOS
PodReadinessGate
PodSecurityContext
PodSpec
PodTemplateSpec
PortworxVolumeSource
PreferredSchedulingTerm
Probe
ProjectedVolumeSource
Quantity
QuobyteVolumeSource
RBDVolumeSource
ResourceFieldSelector
ResourceRequirements
ScaleIOVolumeSource
SeccompProfile
SecretEnvSource
SecretKeySelector
SecretProjection
SecretVolumeSource
SecurityContext
SELinuxOptions
ServiceAccountTokenProjection
StorageOSVolumeSource
Sysctl
TCPSocketAction
TestKubernetesReferences
Toleration
TopologySpreadConstraint
TypedLocalObjectReference
Volume
VolumeDevice
VolumeMount
VolumeProjection
VsphereVirtualDiskVolumeSource
WeightedPodAffinityTerm
WindowsSecurityContextOptions
```

## Tests

The tests are written with Minitest.

```
rake test
```