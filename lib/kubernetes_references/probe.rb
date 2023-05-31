module KubernetesReferences
  class Probe < KubernetesReferences::API
    # @dynamic exec, exec=
    attr_accessor :exec
    # @dynamic failure_threshold, failure_threshold=
    attr_accessor :failure_threshold
    # @dynamic grpc, grpc=
    attr_accessor :grpc
    # @dynamic http_get, http_get=
    attr_accessor :http_get
    # @dynamic initial_delay_seconds, initial_delay_seconds=
    attr_accessor :initial_delay_seconds
    # @dynamic period_seconds, period_seconds=
    attr_accessor :period_seconds
    # @dynamic success_threshold, success_threshold=
    attr_accessor :success_threshold
    # @dynamic tcp_socket, tcp_socket=
    attr_accessor :tcp_socket
    # @dynamic termination_grace_period_seconds, termination_grace_period_seconds=
    attr_accessor :termination_grace_period_seconds
    # @dynamic timeout_seconds, timeout_seconds=
    attr_accessor :timeout_seconds

    def initialize(obj)
      _set!(obj)
    end
  end
end