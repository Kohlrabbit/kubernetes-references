# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#typedlocalobjectreference-v1-core
  class TypedLocalObjectReference < KubernetesReferences::API
    # @dynamic api_group, api_group=
    attr_accessor :api_group
    # @dynamic kind, kind=
    attr_accessor :kind
    # @dynamic name, name=
    attr_accessor :name

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        apiGroup: @api_group,
        kind: @kind,
        name: @name
      }
    end
  end
end
