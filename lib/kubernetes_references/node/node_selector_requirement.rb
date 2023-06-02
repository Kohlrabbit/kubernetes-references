module KubernetesReferences
  class NodeSelectorRequirement < KubernetesReferences::API
    # @dynamic key, key=
    attr_accessor :key
    # @dynamic operator, operator=
    attr_accessor :operator
    # @dynamic values, values=
    attr_accessor :values

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        key: @key,
        operator: @operator,
        values: @values
      }
    end
  end
end