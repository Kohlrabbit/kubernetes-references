module KubernetesReferences
  class PortworxVolumeSource < KubernetesReferences::API
    attr_accessor :fs_type
    attr_accessor :read_only
    attr_accessor :volume_id

    def initialize(obj)
      _set!(obj)
    end
  end
end