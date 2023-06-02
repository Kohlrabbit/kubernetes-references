module KubernetesReferences
  class SecretProjection < KubernetesReferences::API
    # @dynamic items, items=
    attr_accessor :items
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic optional, optional=
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