gen-client:
	oapi-codegen -package "client" --config=config.yaml "./openapi.yaml" 

gen-models:
	oapi-codegen -package "models" --config=models/config.yaml "./openapi.yaml" 
	