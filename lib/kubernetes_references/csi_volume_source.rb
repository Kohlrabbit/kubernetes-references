module KubernetesReferences
  class CSIVolumeSource < KubernetesReferences::API
    attr_accessor :driver
    attr_accessor :fs_type
    attr_accessor :node_publish_secret_ref
    attr_accessor :read_only
    attr_accessor :volume_attributes

    def initialize(obj)
      _set!(obj)
    end
  end
end