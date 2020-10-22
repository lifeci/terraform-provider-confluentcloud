package main

import (
	c "github.com/lifeci/terraform-provider-confluentcloud/ccloud"

	"github.com/hashicorp/terraform/plugin"
)

func main() {
	plugin.Serve(&plugin.ServeOpts{ProviderFunc: c.Provider})
}
