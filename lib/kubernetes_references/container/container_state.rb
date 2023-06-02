# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#containerstate-v1-core
  class ContainerState < KubernetesReferences::API
    # @dynamic running, running=, terminated, terminated=, waiting, waiting=
    attr_accessor :running
    attr_accessor :terminated, :waiting

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        running: @running.schema,
        terminated: @terminated.schema,
        waiting: @waiting.schema
      }
    end
  end
end
