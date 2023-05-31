module KubernetesReferences
  class GRPCAction < KubernetesReferences::API
    attr_accessor :port
    attr_accessor :service

    def initialize(obj)
      _set!(obj)
    end
  end
end