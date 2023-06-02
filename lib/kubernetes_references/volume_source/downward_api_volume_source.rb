module KubernetesReferences
  class DownwardAPIVolumeSource < KubernetesReferences::API
    # @dynamic default_mode, default_mode=
    attr_accessor :default_mode
    # @dynamic items, items=
    attr_accessor :items

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        defaultMode: @default_mode,
        items: @items.map{|r| r.schema}
      }
    end
  end
end