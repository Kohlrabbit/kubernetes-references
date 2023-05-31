module KubernetesReferences
  class DeploymentStrategy < KubernetesReferences::API
    # @dynamic rolling_update, rolling_update=
    attr_accessor :rolling_update
    # @dynamic type, type=
    attr_accessor :type

    def initialize(obj)
      _set!(obj)
    end
  end
end
