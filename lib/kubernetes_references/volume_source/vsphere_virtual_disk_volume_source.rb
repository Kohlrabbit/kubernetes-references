module KubernetesReferences
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
      _set!(obj)
    end
  end
end
