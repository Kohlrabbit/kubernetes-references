module KubernetesReferences
  class ResourceRequirements < KubernetesReferences::API
    # @dynamic limits, limits=
    attr_accessor :limits
    # @dynamic requests, requests=
    attr_accessor :requests

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        limits: @limits,
        requests: @requests
      }
    end
  end
end