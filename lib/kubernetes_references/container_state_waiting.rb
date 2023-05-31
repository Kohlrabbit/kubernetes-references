module KubernetesReferences
  class ContainerStateWaiting < KubernetesReferences::API
    attr_accessor :message
    attr_accessor :reason

    def initialize(obj)
      _set!(obj)
    end
  end
end