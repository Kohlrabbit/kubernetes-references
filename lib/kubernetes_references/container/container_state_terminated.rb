module KubernetesReferences
  class ContainerStateTerminated < KubernetesReferences::API
    # @dynamic container_id, container_id=
    attr_accessor :container_id
    # @dynamic exit_code, exit_code=
    attr_accessor :exit_code
    # @dynamic finished_at, finished_at=
    attr_accessor :finished_at
    # @dynamic message, message=
    attr_accessor :message
    # @dynamic reason, reason=
    attr_accessor :reason
    # @dynamic signal, signal=
    attr_accessor :signal
    # @dynamic started_at, started_at=
    attr_accessor :started_at

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        containerID: @container_id,
        exitCode: @exit_code,
        finishedAt: @finished_at,
        message: @message,
        reason: @reason,
        signal: @signal,
        startedAt: @started_at
      }
    end
  end
end