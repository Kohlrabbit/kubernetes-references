# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#persistentvolumeclaimspec-v1-core
  class PersistentVolumeClaimSpec < KubernetesReferences::API
    # @dynamic access_modes, access_modes=
    attr_accessor :access_modes
    # @dynamic data_source, data_source=
    attr_accessor :data_source
    # @dynamic data_source_ref, data_source_ref=
    attr_accessor :data_source_ref
    # @dynamic resources, resources=
    attr_accessor :resources
    # @dynamic selector, selector=
    attr_accessor :selector
    # @dynamic storage_class_name, storage_class_name=
    attr_accessor :storage_class_name
    # @dynamic volume_mode, volume_mode=
    attr_accessor :volume_mode
    # @dynamic volume_name, volume_name=
    attr_accessor :volume_name

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        accessModes: @access_modes,
        dataSource: @data_source.schema,
        dataSourceRef: @data_source_ref.schema,
        resources: @resources.schema,
        selector: @selector.schema,
        storageClassName: @storage_class_name,
        volumeMode: @volume_mode,
        volumeName: @volume_name
      }
    end
  end
end
