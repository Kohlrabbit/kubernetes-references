# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#podreadinessgate-v1-core
  class PodReadinessGate < KubernetesReferences::API
    # @dynamic condition_type, condition_type=
    attr_accessor :condition_type

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        conditionType: @condition_type
      }
    end
  end
end
