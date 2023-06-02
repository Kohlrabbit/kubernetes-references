# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#fieldsv1-v1-meta
  class FieldsV1 < KubernetesReferences::API
    # @dynamic value, value=
    attr_accessor :value # Trie value: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#fieldsv1-v1-meta

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        value: @value
      }
    end
  end
end
