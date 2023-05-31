module KubernetesReferences
  class LocalObjectReference < KubernetesReferences::API
    attr_accessor :name

    def initialize(obj)
      _set!(obj)
    end
  end
end