module KubernetesReferences
  class TCPSocketAction < KubernetesReferences::API
    attr_accessor :host
    attr_accessor :port

    def initialize(obj)
      _set!(obj)
    end
  end
end