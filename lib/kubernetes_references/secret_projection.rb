module KubernetesReferences
  class SecretProjection < KubernetesReferences::API
    attr_accessor :items
    attr_accessor :name
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end
  end
end