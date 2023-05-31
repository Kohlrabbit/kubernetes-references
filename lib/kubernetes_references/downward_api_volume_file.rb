module KubernetesReferences
  class DownwardAPIVolumeFile < KubernetesReferences::API
    attr_accessor :field_ref
    attr_accessor :mode
    attr_accessor :path
    attr_accessor :resource_field_ref

    def initialize(obj)
      _set!(obj)
    end
  end
end