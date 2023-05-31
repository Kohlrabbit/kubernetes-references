module KubernetesReferences
  class QuobyteVolumeSource < KubernetesReferences::API
    attr_accessor :group
    attr_accessor :read_only
    attr_accessor :registry
    attr_accessor :tenant
    attr_accessor :user
    attr_accessor :volume

    def initialize(obj)
      _set!(obj)
    end
  end
end
