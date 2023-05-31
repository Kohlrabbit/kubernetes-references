# frozen_string_literal: true

require "kubernetes_references/errors"
require "kubernetes_references/api"
require "kubernetes_references/capabilities"
require "kubernetes_references/config_map_env_source"
require "kubernetes_references/config_map_key_selector"
require "kubernetes_references/container_status"
require "kubernetes_references/container_port"
require "kubernetes_references/container_state_running"
require "kubernetes_references/container_state_terminated"
require "kubernetes_references/container_state_waiting"
require "kubernetes_references/container_state"
require "kubernetes_references/container"
require "kubernetes_references/env_from_source"
require "kubernetes_references/env_var_source"
require "kubernetes_references/env_var"
require "kubernetes_references/exec_action"
require "kubernetes_references/grpc_action"
require "kubernetes_references/http_get_action"
require "kubernetes_references/http_header"
require "kubernetes_references/lifecycle_handler"
require "kubernetes_references/lifecycle"
require "kubernetes_references/object_field_selector"
require "kubernetes_references/probe"
require "kubernetes_references/quantity"
require "kubernetes_references/resource_field_selector"
require "kubernetes_references/resource_requirements"
require "kubernetes_references/seccomp_profile"
require "kubernetes_references/secret_env_source"
require "kubernetes_references/secret_key_selector"
require "kubernetes_references/security_context"
require "kubernetes_references/selinux_options"
require "kubernetes_references/tcp_socket_action"
require "kubernetes_references/volume_device"
require "kubernetes_references/volume_mount"
require "kubernetes_references/windows_security_context_options"

module KubernetesReferences
  VERSION = 0.1
  KUBE_API_VERSION = "v1.23"

  class Error < StandardError; end
  # Your code goes here...
end

KubeCapabilities = KubernetesReferences::Capabilities
KubeConfigMapEnvSource = KubernetesReferences::ConfigMapEnvSource
KubeContainerPort = KubernetesReferences::ContainerPort
KubeContainer = KubernetesReferences::Container
KubeEnvFromSource = KubernetesReferences::EnvFromSource
KubeEnvVarSource = KubernetesReferences::EnvVarSource
KubeEnvVar = KubernetesReferences::EnvVar
KubeExecAction = KubernetesReferences::ExecAction
KubeGRPCAction = KubernetesReferences::GRPCAction
KubeHTTPGetAction = KubernetesReferences::HTTPGetAction
KubeHTTPHeader = KubernetesReferences::HTTPHeader
KubeLifecycleHandler = KubernetesReferences::LifecycleHandler
KubeLifecycle = KubernetesReferences::Lifecycle
KubeObjectFieldSelector = KubernetesReferences::ObjectFieldSelector
KubeProbe = KubernetesReferences::Probe
KubeQuantity = KubernetesReferences::Quantity
KubeResourceFieldSelector = KubernetesReferences::ResourceFieldSelector
KubeResourceRequirements = KubernetesReferences::ResourceRequirements
KubeSeccompProfile = KubernetesReferences::SeccompProfile
KubeSecretEnvSource = KubernetesReferences::SecretEnvSource
KubeSecretKeySelector = KubernetesReferences::SecretKeySelector
KubeSecurityContext = KubernetesReferences::SecurityContext
KubeSELinuxOptions = KubernetesReferences::SELinuxOptions
KubeTCPSocketAction = KubernetesReferences::TCPSocketAction
KubeVolumeDevice = KubernetesReferences::VolumeDevice
KubeVolumeMount = KubernetesReferences::VolumeMount
KubeWindowsSecurityContextOptions = KubernetesReferences::WindowsSecurityContextOptions
