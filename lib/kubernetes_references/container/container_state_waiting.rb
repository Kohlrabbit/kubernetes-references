# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#containerstatewaiting-v1-core
  class ContainerStateWaiting < KubernetesReferences::API
    # @dynamic message, message=, reason, reason=
    attr_accessor :message
    attr_accessor :reason

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        message: @message,
        reason: @reason
      }
    end
  end
end
