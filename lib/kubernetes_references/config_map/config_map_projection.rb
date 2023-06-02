module KubernetesReferences
  class ConfigMapProjection < KubernetesReferences::API
    # @dynamic items, items=, name, name=, optional, optional=
    attr_accessor :items
    attr_accessor :name
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        items: @items.map{|r| r.schema},
        name: @name,
        optional: @optional
      }
    end
  end
end
