# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#preferredschedulingterm-v1-core
  class PreferredSchedulingTerm < KubernetesReferences::API
    # @dynamic preference, preference=
    attr_accessor :preference
    # @dynamic weight, weight=
    attr_accessor :weight

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        preference: @preference.schema,
        weight: @weight
      }
    end
  end
end
