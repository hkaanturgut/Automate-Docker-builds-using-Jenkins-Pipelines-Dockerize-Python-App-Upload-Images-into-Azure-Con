describe "main" do
  before(:all) do
    stack_path = File.expand_path("../..", __dir__) # the source of the stack to test is 2 levels up
    ts_root = File.expand_path("../../..", stack_path) # original Terraspace.root
    # Build terraspace project to use as a test harness
    # Will be located at: /tmp/terraspace/test-harnesses/linux_vm_jenkins-harness
    terraspace.build_test_harness(
      name:    "linux_vm_jenkins-harness",
      modules: "#{ts_root}/app/modules", # include all modules in folder
      stacks:  {linux_vm_jenkins: stack_path},
      # override demo stack tfvars for testing
      config:  "#{stack_path}/test/spec/fixtures/config",
      tfvars:  {linux_vm_jenkins: "#{stack_path}/test/spec/fixtures/tfvars/test.tfvars"},
    )
    terraspace.up("linux_vm_jenkins")
  end
  after(:all) do
    terraspace.down("linux_vm_jenkins")
  end

  it "successful deploy" do
    # Replace with your own test
    expect(true).to be true
    # Example
    # pp terraspace.outputs
    output_value = terraspace.output("linux_vm_jenkins", "bucket_name")
    puts "output_value #{output_value}"
    # More useful helpers:
    # pp terraspace.state['resources']
    # pp terraspace.state_resource('random_pet.this')
    # pp terraspace.state_resource('module.bucket')
  end
end
