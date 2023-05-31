module KubernetesReferences
  class EnvVar < KubernetesReferences::API
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic value, value=
    attr_accessor :value
    # @dynamic value_from, value_from=
    attr_accessor :value_from

    def initialize(obj)
      _set!(obj)
    end
  end
end