@if(!debug)

package main

values: {
	replicas: 2

	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
		digest: "sha256:2be8b7c9bd726fd132ff30729b29879f1d4bc6071bad07cf330877444132e1de"
		tag: ""
	}

	service: {
		port: 5000
	}

	secrets: {
		CLOUDINARY_KEY: "245894724521338"
		CLOUDINARY_SECRET: "Fk1Zd7tl28uRnz76KwAS8LVlfno"
		CLOUDINARY_NAME: "dztttq7sx"
		CLOUDINARY_URL: "cloudinary://245894724521338:Fk1Zd7tl28uRnz76KwAS8LVlfno@dztttq7sx"
	}
}
