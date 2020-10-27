package testResourcegroup

import (
	"fmt"
	"testing"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/test-structure"
)

func TestTerraformTemplate(t *testing.T) {
	t.Parallel()
	
	
	fixtureFolder := "./fixture"

	// At the end of the test, clean up any resources that were created
	defer test_structure.RunTestStage(t, "teardown", func() {
		terraformOptions := test_structure.LoadTerraformOptions(t, fixtureFolder)
		terraform.Destroy(t, terraformOptions)
	})

	// Deploy the example
	test_structure.RunTestStage(t, "setup", func() {
		terraformOptions := configureTerraformOptions(t, fixtureFolder)

		// Save the options so later test stages can use them
		test_structure.SaveTerraformOptions(t, fixtureFolder, terraformOptions)

		// This will init and apply the resources and fail the test if there are any errors
		terraform.InitAndApply(t, terraformOptions)
	})

	// Check whether the length of output meets the requirement
	test_structure.RunTestStage(t, "validate", func() {
		terraformOptions := test_structure.LoadTerraformOptions(t, fixtureFolder)

		stringList := terraform.Output(t, terraformOptions, "resource_group_name")
		fmt.Println(stringList)
		if len(stringList) <= 7 {
			t.Fatal("Wrong output")
		}
	})

}

func configureTerraformOptions(t *testing.T, fixtureFolder string) *terraform.Options {
	uniqueId := random.UniqueId()
	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: fixtureFolder,

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"resource_group": fmt.Sprintf("Resourcegroup-%s", uniqueId),
		},
	}

	return terraformOptions
}
