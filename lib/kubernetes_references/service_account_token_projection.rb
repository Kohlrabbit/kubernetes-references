module KubernetesReferences
  class ServiceAccountTokenProjection < KubernetesReferences::API
    # @dynamic audience, audience=
    attr_accessor :audience
    # @dynamic expiration_seconds, expiration_seconds=
    attr_accessor :expiration_seconds
    # @dynamic path, path=
    attr_accessor :path

    def initialize(obj)
      _set!(obj)
    end
  end
end