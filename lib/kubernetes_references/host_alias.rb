# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#hostalias-v1-core
  class HostAlias < KubernetesReferences::API
    # @dynamic hostnames, hostnames=
    attr_accessor :hostnames
    # @dynamic ip, ip=
    attr_accessor :ip

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        hostnames: @hostnames,
        ip: @ip
      }
    end
  end
end
