# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#ephemeralcontainer-v1-core
  class EphemeralContainer < KubernetesReferences::API
    # @dynamic args, args=
    attr_accessor :args
    # @dynamic command, command=
    attr_accessor :command
    # @dynamic env, env=
    attr_accessor :env
    # @dynamic env_from, env_from=
    attr_accessor :env_from
    # @dynamic image, image=
    attr_accessor :image
    # @dynamic image_pull_policy, image_pull_policy=
    attr_accessor :image_pull_policy
    # @dynamic lifecycle, lifecycle=
    attr_accessor :lifecycle
    # @dynamic liveness_probe, liveness_probe=
    attr_accessor :liveness_probe
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic ports, ports=
    attr_accessor :ports
    # @dynamic readiness_probe, readiness_probe=
    attr_accessor :readiness_probe
    # @dynamic resources, resources=
    attr_accessor :resources
    # @dynamic security_context, security_context=
    attr_accessor :security_context
    # @dynamic startup_probe, startup_probe=
    attr_accessor :startup_probe
    # @dynamic stdin, stdin=
    attr_accessor :stdin
    # @dynamic stdin_once, stdin_once=
    attr_accessor :stdin_once
    # @dynamic target_container_name, target_container_name=
    attr_accessor :target_container_name
    # @dynamic termination_message_path, termination_message_path=
    attr_accessor :termination_message_path
    # @dynamic termination_message_policy, termination_message_policy=
    attr_accessor :termination_message_policy
    # @dynamic tty, tty=
    attr_accessor :tty
    # @dynamic volume_devices, volume_devices=
    attr_accessor :volume_devices
    # @dynamic volume_mounts, volume_mounts=
    attr_accessor :volume_mounts
    # @dynamic working_dir, working_dir=
    attr_accessor :working_dir

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        args: @args,
        command: @command,
        env: @env.map(&:schema),
        envFrom: @env_from.map(&:schema),
        image: @image,
        imagePullPolicy: @image_pull_policy,
        lifecycle: @lifecycle,
        livenessProbe: @liveness_probe.schema,
        name: @name,
        ports: @ports.map(&:schema),
        readinessProbe: @readiness_probe.schema,
        resources: @resources.schema,
        securityContext: @security_context.schema,
        startupProbe: @startup_probe.schema,
        stdin: @stdin,
        stdinOnce: @stdin_once,
        targetContainerName: @target_container_name,
        terminationMessagePath: @termination_message_path,
        terminationMessagePolicy: @termination_message_policy,
        tty: @tty,
        volumeDevices: @volume_devices.map(&:schema),
        volumeMounts: @volume_mounts.map(&:schema),
        workingDir: @working_dir
      }
    end
  end
end
