module KubernetesReferences
  class ConfigMapVolumeSource < KubernetesReferences::API
    # @dynamic default_mode, default_mode=
    attr_accessor :default_mode
    # @dynamic items, items=
    attr_accessor :items
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic optional, optional=
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end
  end
end