# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#containerstaterunning-v1-core
  class ContainerStateRunning < KubernetesReferences::API
    # @dynamic started_at, started_at=
    attr_accessor :started_at

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        startedAt: @started_at
      }
    end
  end
end
