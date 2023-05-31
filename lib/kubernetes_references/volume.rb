module KubernetesReferences
  class Volume < KubernetesReferences::API
    attr_accessor :aws_elastic_block_store
    attr_accessor :azure_disk
    attr_accessor :azure_file
    attr_accessor :cephfs
    attr_accessor :cinder
    attr_accessor :config_map
    attr_accessor :csi
    attr_accessor :downward_api
    attr_accessor :empty_dir
    attr_accessor :ephemeral
    attr_accessor :fc
    attr_accessor :flex_volume
    attr_accessor :flocker
    attr_accessor :gce_persistent_disk
    attr_accessor :git_repo
    attr_accessor :glusterfs
    attr_accessor :host_path
    attr_accessor :iscsi
    attr_accessor :name
    attr_accessor :nfs
    attr_accessor :persistent_volume_claim
    attr_accessor :photon_persistent_disk
    attr_accessor :portworx_volume
    attr_accessor :projected
    attr_accessor :quobyte
    attr_accessor :rbd
    attr_accessor :scale_io
    attr_accessor :secret
    attr_accessor :storageos
    attr_accessor :vsphere_volume

    def initialize(obj)
      _set!(obj)
    end
  end
end