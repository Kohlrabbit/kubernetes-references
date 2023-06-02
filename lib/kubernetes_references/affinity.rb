module KubernetesReferences
  class Affinity < KubernetesReferences::API
    # @dynamic node_affinity, node_affinity=
    attr_accessor :node_affinity
    # @dynamic pod_affinity, pod_affinity=
    attr_accessor :pod_affinity
    # @dynamic pod_anti_affinity, pod_anti_affinity=
    attr_accessor :pod_anti_affinity

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        nodeAffinity: @node_affinity.schema,
        podAffinity: @pod_affinity.schema,
        podAntiAffinity: @pod_anti_affinity.schema
      }
    end
  end
end