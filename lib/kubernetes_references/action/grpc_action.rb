# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#grpcaction-v1-core
  class GRPCAction < KubernetesReferences::API
    # @dynamic port, port=, service, service=
    attr_accessor :port
    attr_accessor :service

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        port: @port,
        service: @service
      }
    end
  end
end
