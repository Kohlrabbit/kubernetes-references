# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#resourcerequirements-v1-core
  class ResourceRequirements < KubernetesReferences::API
    # @dynamic limits, limits=
    attr_accessor :limits
    # @dynamic requests, requests=
    attr_accessor :requests

    def initialize(obj)
      super()
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
