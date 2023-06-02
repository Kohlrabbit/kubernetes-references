# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#podip-v1-core
  class PodIP < KubernetesReferences::API
    # @dynamic ip, ip=
    attr_accessor :ip

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        ip: @ip
      }
    end
  end
end
