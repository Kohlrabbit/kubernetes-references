module KubernetesReferences
  class ConfigMapEnvSource < KubernetesReferences::API
    # @dynamic name, name=, optional, optional=
    attr_accessor :name
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end
  end
end