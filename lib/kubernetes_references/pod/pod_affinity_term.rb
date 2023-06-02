# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#podaffinityterm-v1-core
  class PodAffinityTerm < KubernetesReferences::API
    # @dynamic label_selector, label_selector=
    attr_accessor :label_selector
    # @dynamic namespace_selector, namespace_selector=
    attr_accessor :namespace_selector
    # @dynamic namespaces, namespaces=
    attr_accessor :namespaces
    # @dynamic topology_key, topology_key=
    attr_accessor :topology_key

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        labelSelector: @label_selector.schema,
        namespaceSelector: @namespace_selector.schema,
        namespaces: @namespaces,
        topologyKey: @topology_key
      }
    end
  end
end
