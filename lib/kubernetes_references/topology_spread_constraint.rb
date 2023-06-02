# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#topologyspreadconstraint-v1-core
  class TopologySpreadConstraint < KubernetesReferences::API
    # @dynamic label_selector, label_selector=
    attr_accessor :label_selector
    # @dynamic max_skew, max_skew=
    attr_accessor :max_skew
    # @dynamic topology_key, topology_key=
    attr_accessor :topology_key
    # @dynamic when_unsatisfiable, when_unsatisfiable=
    attr_accessor :when_unsatisfiable

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        labelSelector: @label_selector.schema,
        maxSkew: @max_skew,
        topologyKey: @topology_key,
        whenUnsatisfiable: @when_unsatisfiable
      }
    end
  end
end
