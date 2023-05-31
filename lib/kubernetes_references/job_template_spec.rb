module KubernetesReferences
  class JobTemplateSpec < KubernetesReferences::API
    attr_accessor :metadata
    attr_accessor :spec

    def initialize(obj)
      _set!(obj)
    end
  end
end