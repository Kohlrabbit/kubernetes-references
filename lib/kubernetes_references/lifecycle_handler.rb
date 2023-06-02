# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#lifecyclehandler-v1-core
  class LifecycleHandler < KubernetesReferences::API
    # @dynamic exec, exec=
    attr_accessor :exec
    # @dynamic http_get, http_get=
    attr_accessor :http_get
    # @dynamic tcp_socket, tcp_socket=
    attr_accessor :tcp_socket # deprecated in v1.23

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        exec: @exec.schema,
        httpGet: @http_get.schema,
        tcpSocket: @tcp_socket
      }
    end
  end
end
