module KubernetesReferences
  class DownwardAPIProjection < KubernetesReferences::API
    # @dynamic items, items=
    attr_accessor :items

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        items: @items.map{|r| r.schema}
      }
    end
  end
end