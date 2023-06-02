# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#volumemount-v1-core
  class VolumeMount < KubernetesReferences::API
    # @dynamic mount_path, mount_path=
    attr_accessor :mount_path
    # @dynamic mount_propagation, mount_propagation=
    attr_accessor :mount_propagation
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic sub_path, sub_path=
    attr_accessor :sub_path
    # @dynamic sub_path_expr, sub_path_expr=
    attr_accessor :sub_path_expr

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        mountPath: @mount_path,
        mountPropagation: @mount_propagation,
        name: @name,
        readOnly: @read_only,
        subPath: @sub_path,
        subPathExpr: @sub_path_expr
      }
    end
  end
end
