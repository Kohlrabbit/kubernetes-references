# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#tcpsocketaction-v1-core
  class TCPSocketAction < KubernetesReferences::API
    # @dynamic host, host=, port, port=
    attr_accessor :host
    attr_accessor :port

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        host: @host,
        port: @port
      }
    end
  end
end
