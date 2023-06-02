# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#execaction-v1-core
  class ExecAction < KubernetesReferences::API
    # @dynamic command, command=
    attr_accessor :command

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        command: @command
      }
    end
  end
end
