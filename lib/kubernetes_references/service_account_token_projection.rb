# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#serviceaccounttokenprojection-v1-core
  class ServiceAccountTokenProjection < KubernetesReferences::API
    # @dynamic audience, audience=
    attr_accessor :audience
    # @dynamic expiration_seconds, expiration_seconds=
    attr_accessor :expiration_seconds
    # @dynamic path, path=
    attr_accessor :path

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        audience: @audience,
        expirationSeconds: @expiration_seconds,
        path: @path
      }
    end
  end
end
