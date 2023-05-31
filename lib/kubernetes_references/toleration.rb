module KubernetesReferences
  class Toleration < KubernetesReferences::API
    attr_accessor :effect
    attr_accessor :key
    attr_accessor :operator
    attr_accessor :toleration_seconds
    attr_accessor :value

    def initialize(obj)
      _set!(obj)
    end
  end
end