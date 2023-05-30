module KubernetesReferences
  class Probe < KubernetesReferences::API
    attr_accessor :exec
    attr_accessor :failure_threshold
    attr_accessor :grpc
    attr_accessor :http_get
    attr_accessor :initial_delay_seconds
    attr_accessor :period_seconds
    attr_accessor :success_threshold
    attr_accessor :tcp_socket
    attr_accessor :termination_grace_period_seconds
    attr_accessor :timeout_seconds

    def initialize(obj)
      _set!(obj)
    end
  end
end