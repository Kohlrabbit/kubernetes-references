module KubernetesReferences
  class ContainerStateRunning < KubernetesReferences::API
    # @dynamic started_at, started_at=
    attr_accessor :started_at

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        startedAt: @started_at
      }
    end
  end
end