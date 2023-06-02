module KubernetesReferences
  class ObjectMeta < KubernetesReferences::API
    # @dynamic annotations, annotations=
    attr_accessor :annotations
    # @dynamic cluster_name, cluster_name=
    attr_accessor :cluster_name
    # @dynamic creation_timestamp, creation_timestamp=
    attr_accessor :creation_timestamp
    # @dynamic deletion_grace_period_seconds, deletion_grace_period_seconds=
    attr_accessor :deletion_grace_period_seconds
    # @dynamic deletion_timestamp, deletion_timestamp=
    attr_accessor :deletion_timestamp
    # @dynamic finalizers, finalizers=
    attr_accessor :finalizers
    # @dynamic generate_name, generate_name=
    attr_accessor :generate_name
    # @dynamic generation, generation=
    attr_accessor :generation
    # @dynamic labels, labels=
    attr_accessor :labels
    # @dynamic managed_fields, managed_fields=
    attr_accessor :managed_fields
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic namespace, namespace=
    attr_accessor :namespace
    # @dynamic owner_references, owner_references=
    attr_accessor :owner_references
    # @dynamic resource_version, resource_version=
    attr_accessor :resource_version
    # @dynamic self_link, self_link=
    attr_accessor :self_link
    # @dynamic uid, uid=
    attr_accessor :uid

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        annotations: @annotations,
        clusterName: @cluster_name,
        creationTimestamp: @creation_timestamp,
        deletionGracePeriodSeconds: @deletion_grace_period_seconds,
        deletionTimestamp: @deletion_timestamp,
        finalizers: @finalizers,
        generateName: @generate_name,
        generation: @generation,
        labels: @labels,
        managedFields: @managed_fields.map{|r| r.schema},
        name: @name,
        namespace: @namespace,
        ownerReferences: @owner_references.map{|r| r.schema},
        resourceVersion: @resource_version,
        selfLink: @self_link,
        uid: @uid
      }
    end
  end
end