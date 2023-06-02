# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#vspherevirtualdiskvolumesource-v1-core
  class VsphereVirtualDiskVolumeSource < KubernetesReferences::API
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic storage_policy_id, storage_policy_id=
    attr_accessor :storage_policy_id
    # @dynamic storage_policy_name, storage_policy_name=
    attr_accessor :storage_policy_name
    # @dynamic volume_path, volume_path=
    attr_accessor :volume_path

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        fsType: @fs_type,
        storagePolicyID: @storage_policy_id,
        storagePolicyName: @storage_policy_name,
        volumePath: @volume_path
      }
    end
  end
end
