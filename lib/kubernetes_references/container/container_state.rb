module KubernetesReferences
  class ContainerState < KubernetesReferences::API
    # @dynamic running, running=, terminated, terminated=, waiting, waiting=
    attr_accessor :running
    attr_accessor :terminated
    attr_accessor :waiting

    def initialize(obj)
      _set!(obj)
    end
  end
end