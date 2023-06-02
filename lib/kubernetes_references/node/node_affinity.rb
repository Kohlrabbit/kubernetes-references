# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#nodeaffinity-v1-core
  class NodeAffinity < KubernetesReferences::API
    # @dynamic preferred_during_scheduling_ignored_during_execution, preferred_during_scheduling_ignored_during_execution=
    attr_accessor :preferred_during_scheduling_ignored_during_execution
    # @dynamic required_during_scheduling_ignored_during_execution, required_during_scheduling_ignored_during_execution=
    attr_accessor :required_during_scheduling_ignored_during_execution

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        preferredDuringSchedulingIngoredDuringExecution: @preferred_during_scheduling_ignored_during_execution.map(&:schema),
        requiredDuringSchedulingIgnoredDuringExecution: @required_during_scheduling_ignored_during_execution
      }
    end
  end
end
