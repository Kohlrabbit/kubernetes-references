module KubernetesReferences
  class ConfigMapVolumeSource < KubernetesReferences::API
    attr_accessor :default_mode
    attr_accessor :items
    attr_accessor :name
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end
  end
end