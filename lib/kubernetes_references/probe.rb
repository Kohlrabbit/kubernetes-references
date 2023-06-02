# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#probe-v1-core
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
      super()
      _set!(obj)
    end

    def _schema
      {
        exec: @exec.schema,
        failureThreshold: @failure_threshold,
        grpc: @grpc.schema,
        httpGet: @http_get.schema,
        initialDelaySeconds: @initial_delay_seconds,
        periodSeconds: @period_seconds,
        successThreshold: @success_threshold,
        tcpSocket: @tcp_socket.schema,
        terminationGracePeriodSeconds: @termination_grace_period_seconds,
        timeoutSeconds: @timeout_seconds
      }
    end
  end
end
