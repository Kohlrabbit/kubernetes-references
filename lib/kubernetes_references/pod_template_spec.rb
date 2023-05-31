module KubernetesReferences
  class PodTemplateSpec < KubernetesReferences::API
    attr_accessor :metadata
    attr_accessor :spec

    def initialize(obj)
      _set!(obj)
    end
  end
end