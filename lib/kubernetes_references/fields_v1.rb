module KubernetesReferences
  class FieldsV1 < KubernetesReferences::API
    # @dynamic value, value=
    attr_accessor :value # Trie value: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#fieldsv1-v1-meta

    def initialize(obj)
      _set!(obj)
    end
  end
end