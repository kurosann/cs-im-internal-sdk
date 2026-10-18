# cs-im-internal-sdk

私有转发渠道使用的内部 SDK，当前提供 `RelayChannelService` 的 gRPC 契约和 Go 生成代码。

该工程面向系统内部的 relay 侧能力，不作为公开业务渠道接入 SDK。公开业务渠道请使用 [`cs-im-sdk`](https://github.com/kurosann/cs-im-sdk)。

## 能力边界

- 提供 relay 渠道的创建、查询、更新、启停和测试契约。
- 仅服务转发渠道集成和内部调用。
- 不向业务渠道暴露客服消息发送能力。
- 不承载业务实现，只维护 proto 与生成代码。

## 契约

Proto 源文件：

```text
proto/relay/v1/relay_channel.proto
```

Go 生成代码：

```text
relay/v1/relay_channel.pb.go
relay/v1/relay_channel_grpc.pb.go
```

Go import 路径：

```go
relayv1 "github.com/kurosann/cs-im-internal-sdk/relay/v1"
```

## 重新生成

```bash
make proto
```

生成代码不允许手工修改。修改接口前先更新 proto，再重新生成并提交两边产物。

## 测试

```bash
make test
```
