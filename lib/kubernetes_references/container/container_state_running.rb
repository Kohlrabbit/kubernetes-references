module KubernetesReferences
  class ContainerStateRunning < KubernetesReferences::API
    attr_accessor :started_at

    def initialize(obj)
      _set!(obj)
    end
  end
end