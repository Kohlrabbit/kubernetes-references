module KubernetesReferences
  class Toleration < KubernetesReferences::API
    # @dynamic effect, effect=
    attr_accessor :effect
    # @dynamic key, key=
    attr_accessor :key
    # @dynamic operator, operator=
    attr_accessor :operator
    # @dynamic toleration_seconds, toleration_seconds=
    attr_accessor :toleration_seconds
    # @dynamic value, value=
    attr_accessor :value

    def initialize(obj)
      _set!(obj)
    end
  end
end