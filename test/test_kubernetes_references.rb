# frozen_string_literal: true

require 'test_helper'

class TestKubernetesReferences < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::KubernetesReferences::VERSION
  end

  def test_containers
    assert ::KubernetesReferences::Container.new(name: 'test')
    assert_raises KubernetesReferences::InvalidObjectFieldError do
      ::KubernetesReferences::Container.new(invalid_field: 'test')
    end
  end

  def test_container_update
    assert container = ::KubernetesReferences::Container.new(name: 'test')
    container.name = 'another-value'
    assert_equal container.name, 'another-value'
  end

  def test_container_subobjects
    container = ::KubernetesReferences::Container.new(
      name: 'my-container',
      ports: [::KubernetesReferences::ContainerPort.new(
        container_port: 80,
        name: 'http',
        protocol: 'TCP'
      )]
    )

    assert_equal container.name, 'my-container'
    assert_equal container.ports.length, 1
  end
end
