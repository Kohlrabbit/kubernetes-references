module KubernetesReferences
  class TCPSocketAction < KubernetesReferences::API
    # @dynamic host, host=, port, port=
    attr_accessor :host
    attr_accessor :port

    def initialize(obj)
      _set!(obj)
    end
  end
end