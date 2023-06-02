# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#volume-v1-core
  class Volume < KubernetesReferences::API
    # @dynamic aws_elastic_block_store, aws_elastic_block_store=
    attr_accessor :aws_elastic_block_store
    # @dynamic azure_disk, azure_disk=
    attr_accessor :azure_disk
    # @dynamic azure_file, azure_file=
    attr_accessor :azure_file
    # @dynamic cephfs, cephfs=
    attr_accessor :cephfs
    # @dynamic cinder, cinder=
    attr_accessor :cinder
    # @dynamic config_map, config_map=
    attr_accessor :config_map
    # @dynamic csi, csi=
    attr_accessor :csi
    # @dynamic downward_api, downward_api=
    attr_accessor :downward_api
    # @dynamic empty_dir, empty_dir=
    attr_accessor :empty_dir
    # @dynamic ephemeral, ephemeral=
    attr_accessor :ephemeral
    # @dynamic fc, fc=
    attr_accessor :fc
    # @dynamic flex_volume, flex_volume=
    attr_accessor :flex_volume
    # @dynamic flocker, flocker=
    attr_accessor :flocker
    # @dynamic gce_persistent_disk, gce_persistent_disk=
    attr_accessor :gce_persistent_disk
    # @dynamic git_repo, git_repo=
    attr_accessor :git_repo
    # @dynamic glusterfs, glusterfs=
    attr_accessor :glusterfs
    # @dynamic host_path, host_path=
    attr_accessor :host_path
    # @dynamic iscsi, iscsi=
    attr_accessor :iscsi
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic nfs, nfs=
    attr_accessor :nfs
    # @dynamic persistent_volume_claim, persistent_volume_claim=
    attr_accessor :persistent_volume_claim
    # @dynamic photon_persistent_disk, photon_persistent_disk=
    attr_accessor :photon_persistent_disk
    # @dynamic portworx_volume, portworx_volume=
    attr_accessor :portworx_volume
    # @dynamic projected, projected=
    attr_accessor :projected
    # @dynamic quobyte, quobyte=
    attr_accessor :quobyte
    # @dynamic rbd, rbd=
    attr_accessor :rbd
    # @dynamic scaleio, scaleio=
    attr_accessor :scaleio
    # @dynamic secret, secret=
    attr_accessor :secret
    # @dynamic storageos, storageos=
    attr_accessor :storageos
    # @dynamic vsphere_volume, vsphere_volume=
    attr_accessor :vsphere_volume

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        awsElasticBlockStore: @aws_elastic_block_store.schema,
        azureDisk: @azure_disk.schema,
        azureFile: @azure_file.schema,
        cephfs: @cephfs.schema,
        cinder: @cinder.schema,
        configMap: @config_map.schema,
        csi: @csi.schema,
        downwardApi: @downward_api.schema,
        emptyDir: @empty_dir.schema,
        ephemeral: @ephemeral.schema,
        fc: @fc.schema,
        flexVolume: @flex_volume.schema,
        flocker: @flocker.schema,
        gcePersistentDisk: @gce_persistent_disk.schema,
        gitRepo: @git_repo.schema,
        glusterfs: @glusterfs.schema,
        hostPath: @host_path.schema,
        iscsi: @iscsi.schema,
        name: @name,
        nfs: @nfs.schema,
        persistentVolumeClaim: @persistent_volume_claim.schema,
        photonPersistentDisk: @photon_persistent_disk.schema,
        portworxVolume: @portworx_volume.schema,
        projected: @projected.schema,
        quobyte: @quobyte.schema,
        rbd: @rbd.schema,
        scaleio: @scaleio.schema,
        secret: @secret.schema,
        storageos: @storageos.schema,
        vsphereVolume: @vsphere_volume.schema
      }
    end
  end
end
