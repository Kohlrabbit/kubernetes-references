module KubernetesReferences
  class RollingUpdateDaemonSet < KubernetesReferences::API
    # @dynamic max_surge, max_surge=
    attr_accessor :max_surge
    # @dynamic max_unavailable, max_unavailable=
    attr_accessor :max_unavailable

    def initialize(obj)
      _set!(obj)
    end
  end
end