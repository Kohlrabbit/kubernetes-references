module KubernetesReferences
  class ContainerState < KubernetesReferences::API
    attr_accessor :running
    attr_accessor :terminated
    attr_accessor :waiting

    def initialize(obj)
      _set!(obj)
    end
  end
end