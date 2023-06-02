# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#objectreference-v1-core
  class ObjectReference < KubernetesReferences::API
    # @dynamic api_version, api_version=
    attr_accessor :api_version
    # @dynamic field_path, field_path=
    attr_accessor :field_path
    # @dynamic kind, kind=
    attr_accessor :kind
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic namespace, namespace=
    attr_accessor :namespace
    # @dynamic resource_version, resource_version=
    attr_accessor :resource_version
    # @dynamic uid, uid=
    attr_accessor :uid

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        apiVersion: @api_version,
        fieldPath: @field_path,
        kind: @kind,
        name: @name,
        namespace: @namespace,
        resourceVersion: @resource_version,
        uid: @uid
      }
    end
  end
end
