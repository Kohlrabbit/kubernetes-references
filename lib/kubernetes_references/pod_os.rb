module KubernetesReferences
  class PodOS < KubernetesReferences::API
    attr_accessor :name

    def initialize(obj)
      _set!(obj)
    end
  end
end