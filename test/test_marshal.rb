# frozen_string_literal: true

require 'test_helper'

class TestMarshal < Minitest::Test
  def test_container_marshal
    container = KubeContainer.new(
      name: 'my-container',
      command: ['ps'],
      args: ['aux'],
      image: 'nginx:latest',
      ports: []
    )
    assert_equal container.class, KubeContainer
  end

  def test_deployment_marshal
    assert KubeDeployment.new(
      api_version: 'v1',
      kind: 'Deployment',
      metadata: KubeObjectMeta.new(
        annotations: { my: 'annotation' },
        name: 'my-deployment',
        namespace: 'default'
      ),
      spec: KubeDeploymentSpec.new(
        replicas: 3,
        selector: KubeLabelSelector.new(
          match_labels: {
            my: 'annotations'
          }
        ),
        template: KubePodTemplateSpec.new(
          metadata: KubeObjectMeta.new(
            annotations: { my: 'annotation' }
          ),
          spec: KubePodSpec.new(
            containers: [
              KubeContainer.new(
                command: ['ps'],
                args: ['aux'],
                image: 'nginx:latest',
                image_pull_policy: 'always',
                name: 'my-container'
              )
            ]
          )
        )
      )
    )
  end
end
