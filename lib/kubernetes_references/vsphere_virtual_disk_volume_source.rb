module KubernetesReferences
  class VsphereVirtualDiskVolumeSource < KubernetesReferences::API
    attr_accessor :fs_type
    attr_accessor :storage_policy_id
    attr_accessor :storage_policy_name
    attr_accessor :volume_path

    def initialize(obj)
      _set!(obj)
    end
  end
end
