module KubernetesReferences
  class SecretEnvSource < KubernetesReferences::API
    attr_accessor :name
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end
  end
end
