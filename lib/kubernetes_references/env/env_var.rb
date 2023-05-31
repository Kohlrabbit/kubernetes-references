module KubernetesReferences
  class EnvVar < KubernetesReferences::API
    attr_accessor :name
    attr_accessor :value
    attr_accessor :value_from

    def initialize(obj)
      _set!(obj)
    end
  end
end