module KubernetesReferences
  class LabelSelectorRequirement < KubernetesReferences::API
    # @dynamic key, key=
    attr_accessor :key
    # @dynamic operator, operator=
    attr_accessor :operator
    # @dynamic values, values=
    attr_accessor :values

    def initialize(obj)
      _set!(obj)
    end
  end
end