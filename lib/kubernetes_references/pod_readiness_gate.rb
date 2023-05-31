module KubernetesReferences
  class PodReadinessGate < KubernetesReferences::API
    # @dynamic condition_type, condition_type=
    attr_accessor :condition_type

    def initialize(obj)
      _set!(obj)
    end
  end
end