module KubernetesReferences
  class StorageOSVolumeSource < KubernetesReferences::API
    attr_accessor :fs_type
    attr_accessor :read_only
    attr_accessor :secret_ref
    attr_accessor :volume_name
    attr_accessor :volume_namespace

    def initialize(obj)
      _set!(obj)
    end
  end
end
