module KubernetesReferences
  class DownwardAPIVolumeSource < KubernetesReferences::API
    attr_accessor :default_mode
    attr_accessor :items

    def initialize(obj)
      _set!(obj)
    end
  end
end