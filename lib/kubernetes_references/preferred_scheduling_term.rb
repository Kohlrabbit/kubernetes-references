module KubernetesReferences
  class PreferredSchedulingTerm < KubernetesReferences::API
    attr_accessor :preference
    attr_accessor :weight

    def initialize(obj)
      _set!(obj)
    end
  end
end