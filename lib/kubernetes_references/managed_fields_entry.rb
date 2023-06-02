module KubernetesReferences
  class ManagedFieldsEntry < KubernetesReferences::API
    # @dynamic api_version, api_version=
    attr_accessor :api_version
    # @dynamic fields_type, fields_type=
    attr_accessor :fields_type
    # @dynamic fields_v1, fields_v1=
    attr_accessor :fields_v1
    # @dynamic manager, manager=
    attr_accessor :manager
    # @dynamic operation, operation=
    attr_accessor :operation
    # @dynamic subresource, subresource=
    attr_accessor :subresource
    # @dynamic time, time=
    attr_accessor :time

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        apiVersion: @api_version,
        fieldsType: @fields_type,
        fieldsV1: @fields_v1,
        manager: @manager,
        operation: @operation,
        subresource: @subresource,
        time: @time
      }
    end
  end
end