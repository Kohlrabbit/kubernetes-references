module KubernetesReferences
  class GRPCAction < KubernetesReferences::API
    # @dynamic port, port=, service, service=
    attr_accessor :port
    attr_accessor :service

    def initialize(obj)
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