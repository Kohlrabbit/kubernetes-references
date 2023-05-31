module KubernetesReferences
  class ServiceAccountTokenProjection < KubernetesReferences::API
    attr_accessor :audience
    attr_accessor :expiration_seconds
    attr_accessor :path

    def initialize(obj)
      _set!(obj)
    end
  end
end