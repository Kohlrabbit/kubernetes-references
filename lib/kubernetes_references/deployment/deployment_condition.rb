# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#deploymentcondition-v1-apps
  class DeploymentCondition < KubernetesReferences::API
    # @dynamic last_transition_time, last_transition_time=
    attr_accessor :last_transition_time
    # @dynamic last_update_time, last_update_time=
    attr_accessor :last_update_time
    # @dynamic message, message=
    attr_accessor :message
    # @dynamic reason, reason=
    attr_accessor :reason
    # @dynamic status, status=
    attr_accessor :status
    # @dynamic type, type=
    attr_accessor :type

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        lastTransitionTime: @last_transition_time,
        lastUpdateTime: @last_update_time,
        message: @message,
        reason: @reason,
        status: @status,
        type: @type
      }
    end
  end
end
