# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#uncountedterminatedpods-v1-batch
  class UncountedTerminatedPods < KubernetesReferences::API
    # @dynamic failed, failed=
    attr_accessor :failed
    # @dynamic succeeded, succeeded=
    attr_accessor :succeeded

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        failed: @failed,
        succeeded: @succeeded
      }
    end
  end
end
