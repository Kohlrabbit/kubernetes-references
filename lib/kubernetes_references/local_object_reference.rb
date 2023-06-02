# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#localobjectreference-v1-core
  class LocalObjectReference < KubernetesReferences::API
    # @dynamic name, name=
    attr_accessor :name

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        name: @name
      }
    end
  end
end
