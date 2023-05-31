module KubernetesReferences
  class ContainerStateWaiting < KubernetesReferences::API
    # @dynamic message, message=, reason, reason=
    attr_accessor :message
    attr_accessor :reason

    def initialize(obj)
      _set!(obj)
    end
  end
end