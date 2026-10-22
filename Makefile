.PHONY: proto test

proto:
	protoc \
		--go_out=. \
		--go_opt=module=github.com/kurosann/cs-im-internal-sdk \
		--go-grpc_out=. \
		--go-grpc_opt=module=github.com/kurosann/cs-im-internal-sdk \
		proto/relay/v1/relay_channel.proto \
		proto/relay/v1/relay_access.proto \
		proto/relay/v1/relay_admin.proto \
		proto/relay/v1/relay_employee.proto

test:
	go test ./...
