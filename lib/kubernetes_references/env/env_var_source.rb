module KubernetesReferences
  class EnvVarSource < KubernetesReferences::API
    # @dynamic config_map_key_ref, config_map_key_ref=
    attr_accessor :config_map_key_ref
    # @dynamic field_ref, field_ref=
    attr_accessor :field_ref
    # @dynamic resource_field_ref, resource_field_ref=
    attr_accessor :resource_field_ref
    # @dynamic secret_key_ref, secret_key_ref=
    attr_accessor :secret_key_ref

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        configMapKeyRef: @config_map_key_ref.schema,
        fieldRef: @field_ref.schema,
        resourceFieldRef: @resource_field_ref.schema,
        secretKeyRef: @secret_key_ref.schema
      }
    end
  end
end