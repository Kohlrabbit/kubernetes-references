# frozen_string_literal: true

# monkey-patching of NilClass to support map and schema
class NilClass
  def map
    nil
  end

  def schema
    nil
  end
end

require 'kubernetes_references/version'
require 'kubernetes_references/api'
require 'kubernetes_references/action/exec_action'
require 'kubernetes_references/action/grpc_action'
require 'kubernetes_references/action/http_get_action'
require 'kubernetes_references/action/tcp_socket_action'
require 'kubernetes_references/affinity'
require 'kubernetes_references/capabilities'
require 'kubernetes_references/config_map/config_map_env_source'
require 'kubernetes_references/config_map/config_map_key_selector'
require 'kubernetes_references/config_map/config_map_projection'
require 'kubernetes_references/container/container_port'
require 'kubernetes_references/container/container_state_running'
require 'kubernetes_references/container/container_state_terminated'
require 'kubernetes_references/container/container_state_waiting'
require 'kubernetes_references/container/container_state'
require 'kubernetes_references/container/container_status'
require 'kubernetes_references/container/container'
require 'kubernetes_references/cron_job/cron_job_spec'
require 'kubernetes_references/cron_job/cron_job_status'
require 'kubernetes_references/cron_job/cron_job'
require 'kubernetes_references/downward/downward_api_projection'
require 'kubernetes_references/downward/downward_api_volume_file'
require 'kubernetes_references/env/env_from_source'
require 'kubernetes_references/env/env_var_source'
require 'kubernetes_references/env/env_var'
require 'kubernetes_references/ephemeral_container'
require 'kubernetes_references/errors'
require 'kubernetes_references/fields_v1'
require 'kubernetes_references/host_alias'
require 'kubernetes_references/http_header'
require 'kubernetes_references/job_spec'
require 'kubernetes_references/job_template_spec'
require 'kubernetes_references/key_to_path'
require 'kubernetes_references/label_selector_requirement'
require 'kubernetes_references/label_selector'
require 'kubernetes_references/lifecycle_handler'
require 'kubernetes_references/lifecycle'
require 'kubernetes_references/local_object_reference'
require 'kubernetes_references/managed_fields_entry'
require 'kubernetes_references/node/node_affinity'
require 'kubernetes_references/node/node_selector_requirement'
require 'kubernetes_references/node/node_selector_term'
require 'kubernetes_references/node/node_selector'
require 'kubernetes_references/object_field_selector'
require 'kubernetes_references/object_meta'
require 'kubernetes_references/object_reference'
require 'kubernetes_references/owner_reference'
require 'kubernetes_references/persistent_volume_claim_spec'
require 'kubernetes_references/persistent_volume_claim_template'
require 'kubernetes_references/pod/pod_affinity_term'
require 'kubernetes_references/pod/pod_affinity'
require 'kubernetes_references/pod/pod_anti_affinity'
require 'kubernetes_references/pod/pod_dns_config_option'
require 'kubernetes_references/pod/pod_dns_config'
require 'kubernetes_references/pod/pod_os'
require 'kubernetes_references/pod/pod_readiness_gate'
require 'kubernetes_references/pod/pod_security_context'
require 'kubernetes_references/pod/pod_spec'
require 'kubernetes_references/pod/pod_template_spec'
require 'kubernetes_references/preferred_scheduling_term'
require 'kubernetes_references/probe'
require 'kubernetes_references/quantity'
require 'kubernetes_references/resource_field_selector'
require 'kubernetes_references/resource_requirements'
require 'kubernetes_references/seccomp_profile'
require 'kubernetes_references/secret/secret_env_source'
require 'kubernetes_references/secret/secret_key_selector'
require 'kubernetes_references/secret/secret_projection'
require 'kubernetes_references/security_context'
require 'kubernetes_references/selinux_options'
require 'kubernetes_references/service_account_token_projection'
require 'kubernetes_references/sysctl'
require 'kubernetes_references/toleration'
require 'kubernetes_references/topology_spread_constraint'
require 'kubernetes_references/typed_local_object_reference'
require 'kubernetes_references/volume/volume_device'
require 'kubernetes_references/volume/volume_mount'
require 'kubernetes_references/volume/volume_projection'
require 'kubernetes_references/volume_source/aws_elastic_block_store_volume_source'
require 'kubernetes_references/volume_source/azure_disk_volume_source'
require 'kubernetes_references/volume_source/azure_file_volume_source'
require 'kubernetes_references/volume_source/cephfs_volume_source'
require 'kubernetes_references/volume_source/cinder_volume_source'
require 'kubernetes_references/volume_source/config_map_volume_source'
require 'kubernetes_references/volume_source/csi_volume_source'
require 'kubernetes_references/volume_source/downward_api_volume_source'
require 'kubernetes_references/volume_source/empty_dir_volume_source'
require 'kubernetes_references/volume_source/ephemeral_volume_source'
require 'kubernetes_references/volume_source/fc_volume_source'
require 'kubernetes_references/volume_source/flex_volume_source'
require 'kubernetes_references/volume_source/flocker_volume_source'
require 'kubernetes_references/volume_source/gce_persistent_disk_volume_source'
require 'kubernetes_references/volume_source/git_repo_volume_source'
require 'kubernetes_references/volume_source/glusterfs_volume_source'
require 'kubernetes_references/volume_source/host_path_volume_source'
require 'kubernetes_references/volume_source/iscsi_volume_source'
require 'kubernetes_references/volume_source/nfs_volume_source'
require 'kubernetes_references/volume_source/persistent_volume_claim_volume_source'
require 'kubernetes_references/volume_source/photon_persistent_disk_volume_source'
require 'kubernetes_references/volume_source/portworx_volume_source'
require 'kubernetes_references/volume_source/projected_volume_source'
require 'kubernetes_references/volume_source/quobyte_volume_source'
require 'kubernetes_references/volume_source/rbd_volume_source'
require 'kubernetes_references/volume_source/scaleio_volume_source'
require 'kubernetes_references/volume_source/secret_volume_source'
require 'kubernetes_references/volume_source/storageos_volume_source'
require 'kubernetes_references/volume_source/vsphere_virtual_disk_volume_source'
require 'kubernetes_references/volume/volume'
require 'kubernetes_references/weighted_pod_affinity_term'
require 'kubernetes_references/windows_security_context_options'
require 'kubernetes_references/daemon_set/daemon_set_spec'
require 'kubernetes_references/daemon_set/daemon_set_update_strategy'
require 'kubernetes_references/daemon_set/daemon_set'
require 'kubernetes_references/daemon_set/rolling_update_daemon_set'
require 'kubernetes_references/daemon_set/daemon_set_status'
require 'kubernetes_references/daemon_set/daemon_set_condition'
require 'kubernetes_references/deployment/deployment'
require 'kubernetes_references/deployment/deployment_spec'
require 'kubernetes_references/deployment/deployment_strategy'
require 'kubernetes_references/deployment/rolling_update_deployment'
require 'kubernetes_references/deployment/deployment_status'
require 'kubernetes_references/deployment/deployment_condition'
require 'kubernetes_references/job/job'
require 'kubernetes_references/job/job_status'
require 'kubernetes_references/job/job_condition'
require 'kubernetes_references/job/uncounted_terminated_pods'
require 'kubernetes_references/pod/pod'
require 'kubernetes_references/pod/pod_status'
require 'kubernetes_references/pod/pod_condition'
require 'kubernetes_references/pod/pod_ip'

module KubernetesReferences
  KUBE_API_VERSION = 'v1.23'

  class Error < StandardError; end
  # Your code goes here...
end

KubePodIP = KubernetesReferences::PodIP
KubePodCondition = KubernetesReferences::PodCondition
KubePodStatus = KubernetesReferences::PodStatus
KubePod = KubernetesReferences::Pod
KubeUncountedTerminatedPods = KubernetesReferences::UncountedTerminatedPods
KubeJobCondition = KubernetesReferences::JobCondition
KubeJobStatus = KubernetesReferences::JobStatus
KubeJob = KubernetesReferences::Job
KubeDeploymentCondition = KubernetesReferences::DeploymentCondition
KubeDeploymentStatus = KubernetesReferences::DeploymentStatus
KubeRollingUpdateDeployment = KubernetesReferences::RollingUpdateDeployment
KubeDeploymentStrategy = KubernetesReferences::DeploymentStrategy
KubeDeploymentSpec = KubernetesReferences::DeploymentSpec
KubeDeployment = KubernetesReferences::Deployment
KubeDaemonSetUpdateStrategy = KubernetesReferences::DaemonSetUpdateStrategy
KubeDaemonSetSpec = KubernetesReferences::DaemonSetSpec
KubeDaemonSet = KubernetesReferences::DaemonSet
KubeObjectReference = KubernetesReferences::ObjectReference
KubeCronJobStatus = KubernetesReferences::CronJobStatus
KubeVsphereVirtualDiskVolumeSource = KubernetesReferences::VsphereVirtualDiskVolumeSource
KubeStorageOSVolumeSource = KubernetesReferences::StorageOSVolumeSource
KubeSecretVolumeSource = KubernetesReferences::SecretVolumeSource
KubeScaleIOVolumeSource = KubernetesReferences::ScaleIOVolumeSource
KubeRBDVolumeSource = KubernetesReferences::RBDVolumeSource
KubeQuobyteVolumeSource = KubernetesReferences::QuobyteVolumeSource
KubeServiceAccountTokenProjection = KubernetesReferences::ServiceAccountTokenProjection
KubeSecretProjection = KubernetesReferences::SecretProjection
KubeDownwardAPIProjection = KubernetesReferences::DownwardAPIProjection
KubeConfigMapProjection = KubernetesReferences::ConfigMapProjection
KubeVolumeProjection = KubernetesReferences::VolumeProjection
KubeProjectedVolumeSource = KubernetesReferences::ProjectedVolumeSource
KubePortworxVolumeSource = KubernetesReferences::PortworxVolumeSource
KubePhotonPersistentDiskVolumeSource = KubernetesReferences::PhotonPersistentDiskVolumeSource
KubePersistentVolumeClaimVolumeSource = KubernetesReferences::PersistentVolumeClaimVolumeSource
KubeNFSVolumeSource = KubernetesReferences::NFSVolumeSource
KubeISCSIVolumeSource = KubernetesReferences::ISCSIVolumeSource
KubeHostPathVolumeSource = KubernetesReferences::HostPathVolumeSource
KubeGlusterfsVolumeSource = KubernetesReferences::GlusterfsVolumeSource
KubeGitRepoVolumeSource = KubernetesReferences::GitRepoVolumeSource
KubeGCEPersistentDiskVolumeSource = KubernetesReferences::GCEPersistentDiskVolumeSource
KubeFlockerVolumeSource = KubernetesReferences::FlockerVolumeSource
KubeFlexVolumeSource = KubernetesReferences::FlexVolumeSource
KubeFCVolumeSource = KubernetesReferences::FCVolumeSource
KubeTypedLocalObjectReference = KubernetesReferences::TypedLocalObjectReference
KubePersistentVolumeClaimSpec = KubernetesReferences::PersistentVolumeClaimSpec
KubePersistentVolumeClaimTemplate = KubernetesReferences::PersistentVolumeClaimTemplate
KubeEphemeralVolumeSource = KubernetesReferences::EphemeralVolumeSource
KubeEmptyDirVolumeSource = KubernetesReferences::EmptyDirVolumeSource
KubeDownwardAPIVolumeFile = KubernetesReferences::DownwardAPIVolumeFile
KubeDownwardAPIVolumeSource = KubernetesReferences::DownwardAPIVolumeSource
KubeCSIVolumeSource = KubernetesReferences::CSIVolumeSource
KubeKeyToPath = KubernetesReferences::KeyToPath
KubeConfigMapVolumeSource = KubernetesReferences::ConfigMapVolumeSource
KubeCinderVolumeSource = KubernetesReferences::CinderVolumeSource
KubeCephFSVolumeSource = KubernetesReferences::CephFSVolumeSource
KubeAzureFileVolumeSource = KubernetesReferences::AzureFileVolumeSource
KubeAzureDiskVolumeSource = KubernetesReferences::AzureDiskVolumeSource
KubeAWSElasticBlockStoreVolumeSource = KubernetesReferences::AWSElasticBlockStoreVolumeSource
KubeVolume = KubernetesReferences::Volume
KubeTopologySpreadConstraint = KubernetesReferences::TopologySpreadConstraint
KubeToleration = KubernetesReferences::Toleration
KubeSysctl = KubernetesReferences::Sysctl
KubePodSecurityContext = KubernetesReferences::PodSecurityContext
KubePodReadinessGate = KubernetesReferences::PodReadinessGate
KubePodOS = KubernetesReferences::PodOS
KubeLocalObjectReference = KubernetesReferences::LocalObjectReference
KubeHostAlias = KubernetesReferences::HostAlias
KubeEphemeralContainer = KubernetesReferences::EphemeralContainer
KubePodDNSConfigOption = KubernetesReferences::PodDNSConfigOption
KubePodDNSConfig = KubernetesReferences::PodDNSConfig
KubePodAntiAffinity = KubernetesReferences::PodAntiAffinity
KubePodAffinityTerm = KubernetesReferences::PodAffinityTerm
KubeWeightedPodAffinityTerm = KubernetesReferences::WeightedPodAffinityTerm
KubePodAffinity = KubernetesReferences::PodAffinity
KubeNodeSelector = KubernetesReferences::NodeSelector
KubeNodeSelectorRequirement = KubernetesReferences::NodeSelectorRequirement
KubeNodeSelectorTerm = KubernetesReferences::NodeSelectorTerm
KubePreferredSchedulingTerm = KubernetesReferences::PreferredSchedulingTerm
KubeNodeAffinity = KubernetesReferences::NodeAffinity
KubeAffinity = KubernetesReferences::Affinity
KubePodSpec = KubernetesReferences::PodSpec
KubePodTemplateSpec = KubernetesReferences::PodTemplateSpec
KubeLabelSelectorRequirement = KubernetesReferences::LabelSelectorRequirement
KubeLabelSelector = KubernetesReferences::LabelSelector
KubeJobSpec = KubernetesReferences::JobSpec
KubeJobTemplateSpec = KubernetesReferences::JobTemplateSpec
KubeCronJobSpec = KubernetesReferences::CronJobSpec
KubeOwnerReference = KubernetesReferences::OwnerReference
KubeFieldsV1 = KubernetesReferences::FieldsV1
KubeManagedFieldsEntry = KubernetesReferences::ManagedFieldsEntry
KubeObjectMeta = KubernetesReferences::ObjectMeta
KubeCronJob = KubernetesReferences::CronJob
KubeCapabilities = KubernetesReferences::Capabilities
KubeConfigMapEnvSource = KubernetesReferences::ConfigMapEnvSource
KubeContainerPort = KubernetesReferences::ContainerPort
KubeContainer = KubernetesReferences::Container
KubeContainerState = KubernetesReferences::ContainerState
KubeContainerStatus = KubernetesReferences::ContainerStatus
KubeContainerStateRunning = KubernetesReferences::ContainerStateRunning
KubeContainerStateTerminated = KubernetesReferences::ContainerStateTerminated
KubeContainerStateWaiting = KubernetesReferences::ContainerStateWaiting
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
