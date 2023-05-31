module KubernetesReferences
  class DownwardAPIVolumeFile < KubernetesReferences::API
    # @dynamic field_ref, field_ref=
    attr_accessor :field_ref
    # @dynamic mode, mode=
    attr_accessor :mode
    # @dynamic path, path=
    attr_accessor :path
    # @dynamic resource_field_ref, resource_field_ref=
    attr_accessor :resource_field_ref

    def initialize(obj)
      _set!(obj)
    end
  end
end