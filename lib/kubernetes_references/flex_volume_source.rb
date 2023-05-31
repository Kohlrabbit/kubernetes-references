module KubernetesReferences
  class FlexVolumeSource < KubernetesReferences::API
    attr_accessor :driver
    attr_accessor :fs_type
    attr_accessor :options
    attr_accessor :read_only
    attr_accessor :secret_ref

    def initialize(obj)
      _set!(obj)
    end
  end
end