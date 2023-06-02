# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#rollingupdatedaemonset-v1-apps
  class RollingUpdateDaemonSet < KubernetesReferences::API
    # @dynamic max_surge, max_surge=
    attr_accessor :max_surge
    # @dynamic max_unavailable, max_unavailable=
    attr_accessor :max_unavailable

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        maxSurge: @max_surge,
        maxUnavailable: @max_unavailable
      }
    end
  end
end
