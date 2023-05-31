module KubernetesReferences
  class PreferredSchedulingTerm < KubernetesReferences::API
    # @dynamic preference, preference=
    attr_accessor :preference
    # @dynamic weight, weight=
    attr_accessor :weight

    def initialize(obj)
      _set!(obj)
    end
  end
end