module KubernetesReferences
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
      _set!(obj)
    end
  end
end