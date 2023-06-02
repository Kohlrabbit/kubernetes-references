# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#podos-v1-core
  class PodOS < KubernetesReferences::API
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
