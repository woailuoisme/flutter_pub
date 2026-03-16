# Vending Machine Operations — REST API 文档

> **Base URL**: `https://api.example.com`  
> **API Version**: `v1`  
> **Data Format**: `application/json`  
> **Auth**: Bearer Token（JWT）

---

## 通用规范

### 请求 Headers

| Header | 必填 | 说明 |
|--------|------|------|
| `Authorization` | ✅ | `Bearer <access_token>` |
| `Content-Type` | ✅（有 Body 时）| `application/json` |
| `Accept` | 推荐 | `application/json` |
| `Accept-Language` | 可选 | `zh-CN` / `zh-TW` / `en`，影响错误提示语言 |

### 通用响应结构

所有接口响应均遵循统一的封装格式：

```json
{
  "success": true,
  "code": 200,
  "message": "OK",
  "data": { ... },
  "errors": null
}
```

| 字段 | 类型 | 说明 |
|------|------|------|
| `success` | `boolean` | 请求是否成功 |
| `code` | `integer` | 业务状态码，`200` 表示成功 |
| `message` | `string` | 提示信息 |
| `data` | `object \| array \| null` | 业务数据体 |
| `errors` | `object \| null` | 字段校验错误，格式：`{ "field": ["message"] }` |

### 通用错误码

| HTTP Status | code | 说明 |
|-------------|------|------|
| `401` | `401` | 未授权，Token 失效或缺失 |
| `403` | `403` | 权限不足，角色不匹配 |
| `404` | `404` | 资源不存在 |
| `422` | `422` | 请求参数校验失败 |
| `500` | `500` | 服务端内部错误 |

---

## 模块一：Machines（代理商 - Agent）

> 角色权限：`agent`

---

### 1. 获取代理商机器列表

获取当前登录代理商（Agent）负责的所有自动售货机列表，含订单量和营收统计汇总。

**`GET /api/v1/agent/machines`**

#### Request

**Headers**

| Header | 必填 | 值 |
|--------|------|----|
| `Authorization` | ✅ | `Bearer <token>` |

**Query Parameters** — 无

**Path Parameters** — 无

**Request Body** — 无

#### Response

**Success `200`**

```json
{
  "success": true,
  "code": 200,
  "message": "OK",
  "data": [
    {
      "id": "m_001",
      "name": "B栋1楼饮料机",
      "location": "上海市浦东新区张江科技园 B 栋 1 楼",
      "total_orders": 312,
      "total_revenue": "1560.00"
    },
    {
      "id": "m_002",
      "name": "C栋咖啡机",
      "location": "上海市浦东新区张江科技园 C 栋大厅",
      "total_orders": 98,
      "total_revenue": "784.50"
    }
  ],
  "errors": null
}
```

**Data Schema — `AgentMachine`**

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` | `string` | 机器唯一 ID |
| `name` | `string` | 机器名称 |
| `location` | `string` | 机器地理位置描述 |
| `total_orders` | `integer` | 当前周期总订单数，默认 `0` |
| `total_revenue` | `string` | 当前周期总营收（Decimal 字符串），默认 `"0.00"` |

---

### 2. 获取机器订单列表

获取指定机器的订单记录，按创建时间倒序分页返回。

**`GET /api/v1/agent/machines/{machineId}/orders`**

#### Request

**Headers**

| Header | 必填 | 值 |
|--------|------|----|
| `Authorization` | ✅ | `Bearer <token>` |

**Path Parameters**

| 参数 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `machineId` | `string` | ✅ | 机器 ID |

**Query Parameters**

| 参数 | 类型 | 必填 | 默认值 | 说明 |
|------|------|------|--------|------|
| `page` | `integer` | ✅ | `1` | 页码，从 `1` 开始 |
| `per_page` | `integer` | ✅ | `20` | 每页条数，建议 `10~50` |

**Request Body** — 无

#### Response

**Success `200`**

```json
{
  "success": true,
  "code": 200,
  "message": "OK",
  "data": [
    {
      "id": "ord_abc123",
      "machine_id": "m_001",
      "product_name": "可口可乐 500ml",
      "amount": "3.50",
      "created_at": "2026-03-16T09:12:34+08:00"
    },
    {
      "id": "ord_abc124",
      "machine_id": "m_001",
      "product_name": "矿泉水 550ml",
      "amount": "2.00",
      "created_at": "2026-03-16T09:05:11+08:00"
    }
  ],
  "errors": null
}
```

**Data Schema — `Order`**

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` | `string` | 订单唯一 ID |
| `machine_id` | `string` | 所属机器 ID |
| `product_name` | `string` | 商品名称 |
| `amount` | `string` | 订单金额（Decimal 字符串），如 `"3.50"` |
| `created_at` | `string` | 创建时间（ISO 8601 格式） |

---

### 3. 获取仪表盘汇总统计

获取当前代理商所有机器的汇总营收统计，含趋势图、商品销售占比和机器对比数据。

**`GET /api/v1/agent/dashboard/stats`**

#### Request

**Headers**

| Header | 必填 | 值 |
|--------|------|----|
| `Authorization` | ✅ | `Bearer <token>` |

**Query Parameters**

| 参数 | 类型 | 必填 | 枚举值 | 说明 |
|------|------|------|--------|------|
| `period` | `string` | ✅ | `day` \| `week` \| `month` \| `quarter` \| `year` | 统计时间维度 |

**Request Body** — 无

#### Response

**Success `200`**

```json
{
  "success": true,
  "code": 200,
  "message": "OK",
  "data": {
    "total_revenue": "12480.00",
    "total_orders": 3820,
    "daily_avg_revenue": "416.00",
    "growth_rate": 12.5,
    "revenue_trend": [
      { "label": "03/10", "value": 380.0 },
      { "label": "03/11", "value": 420.0 },
      { "label": "03/12", "value": 395.0 }
    ],
    "order_trend": [
      { "label": "03/10", "value": 108.0 },
      { "label": "03/11", "value": 126.0 },
      { "label": "03/12", "value": 115.0 }
    ],
    "product_sales": [
      { "product_name": "可口可乐 500ml", "percentage": 38.5, "revenue": "4804.80" },
      { "product_name": "矿泉水 550ml", "percentage": 24.0, "revenue": "2995.20" },
      { "product_name": "红牛 250ml", "percentage": 18.0, "revenue": "2246.40" }
    ],
    "machine_revenues": [
      { "machine_id": "m_001", "machine_name": "B栋1楼饮料机", "revenue": 7488.0 },
      { "machine_id": "m_002", "machine_name": "C栋咖啡机", "revenue": 4992.0 }
    ]
  },
  "errors": null
}
```

**Data Schema — `RevenueStats`**

| 字段 | 类型 | 说明 |
|------|------|------|
| `total_revenue` | `string` | 总营收（Decimal 字符串），默认 `"0.00"` |
| `total_orders` | `integer` | 总订单数，默认 `0` |
| `daily_avg_revenue` | `string` | 日均营收（Decimal 字符串），默认 `"0.00"` |
| `growth_rate` | `number` | 环比增长率（正数增长，负数下降），默认 `0.0` |
| `revenue_trend` | `TimeSeriesPoint[]` | 营收趋势数据点列表 |
| `order_trend` | `TimeSeriesPoint[]` | 订单量趋势数据点列表 |
| `product_sales` | `ProductSales[]` | 商品销售占比列表 |
| `machine_revenues` | `MachineRevenuePoint[]` | 各机器营收对比列表 |

**嵌套 Schema — `TimeSeriesPoint`**

| 字段 | 类型 | 说明 |
|------|------|------|
| `label` | `string` | X 轴标签，如 `"03/16"`、`"1月"` |
| `value` | `number` | Y 轴数值 |

**嵌套 Schema — `ProductSales`**

| 字段 | 类型 | 说明 |
|------|------|------|
| `product_name` | `string` | 商品名称 |
| `percentage` | `number` | 销售占比，范围 `0.0 ~ 100.0` |
| `revenue` | `string` | 该商品营收（Decimal 字符串） |

**嵌套 Schema — `MachineRevenuePoint`**

| 字段 | 类型 | 说明 |
|------|------|------|
| `machine_id` | `string` | 机器 ID |
| `machine_name` | `string` | 机器名称 |
| `revenue` | `number` | 该机器营收金额 |

---

### 4. 获取单台机器统计

获取指定机器在某时间维度下的独立统计数据，结构与仪表盘统计相同。

**`GET /api/v1/agent/machines/{machineId}/stats`**

#### Request

**Path Parameters**

| 参数 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `machineId` | `string` | ✅ | 机器 ID |

**Query Parameters**

| 参数 | 类型 | 必填 | 枚举值 | 说明 |
|------|------|------|--------|------|
| `period` | `string` | ✅ | `day` \| `week` \| `month` \| `quarter` \| `year` | 统计时间维度 |

> 响应结构与 `GET /api/v1/agent/dashboard/stats` 完全相同。

---

## 模块二：Inventory（补货员 - Stocker）

> 角色权限：`stocker`

---

### 5. 获取补货员机器列表

获取当前登录补货员（Stocker）负责的所有机器列表，含货道库存摘要。

**`GET /api/v1/stocker/machines`**

#### Request

**Headers**

| Header | 必填 | 值 |
|--------|------|----|
| `Authorization` | ✅ | `Bearer <token>` |

**Query / Path Parameters** — 无

**Request Body** — 无

#### Response

**Success `200`**

```json
{
  "success": true,
  "code": 200,
  "message": "OK",
  "data": [
    {
      "id": "m_001",
      "name": "B栋1楼饮料机",
      "location": "上海市浦东新区张江科技园 B 栋 1 楼",
      "total_slots": 30,
      "low_stock_slots": 5,
      "empty_slots": 2
    },
    {
      "id": "m_002",
      "name": "C栋咖啡机",
      "location": "上海市浦东新区张江科技园 C 栋大厅",
      "total_slots": 20,
      "low_stock_slots": 0,
      "empty_slots": 0
    }
  ],
  "errors": null
}
```

**Data Schema — `StockerMachine`**

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` | `string` | 机器唯一 ID |
| `name` | `string` | 机器名称 |
| `location` | `string` | 机器地理位置描述 |
| `total_slots` | `integer` | 总货道数，默认 `0` |
| `low_stock_slots` | `integer` | 低库存货道数（库存 ≤ 3），默认 `0` |
| `empty_slots` | `integer` | 空货道数（库存 = 0），默认 `0` |

---

### 6. 获取机器货道列表

获取指定机器下的所有货道及当前库存数量。

**`GET /api/v1/stocker/machines/{machineId}/slots`**

#### Request

**Headers**

| Header | 必填 | 值 |
|--------|------|----|
| `Authorization` | ✅ | `Bearer <token>` |

**Path Parameters**

| 参数 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `machineId` | `string` | ✅ | 机器 ID |

**Query Parameters** — 无

**Request Body** — 无

#### Response

**Success `200`**

```json
{
  "success": true,
  "code": 200,
  "message": "OK",
  "data": [
    {
      "id": "slot_01",
      "machine_id": "m_001",
      "slot_number": "A01",
      "product_name": "可口可乐 500ml",
      "quantity": 12,
      "updated_at": "2026-03-16T08:00:00+08:00"
    },
    {
      "id": "slot_02",
      "machine_id": "m_001",
      "slot_number": "A02",
      "product_name": "矿泉水 550ml",
      "quantity": 0,
      "updated_at": "2026-03-15T18:30:00+08:00"
    }
  ],
  "errors": null
}
```

**Data Schema — `Slot`**

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` | `string` | 货道唯一 ID |
| `machine_id` | `string` | 所属机器 ID |
| `slot_number` | `string` | 货道编号，如 `"A01"` |
| `product_name` | `string` | 当前货道商品名称 |
| `quantity` | `integer` | 当前库存数量，默认 `0` |
| `updated_at` | `string` | 最近更新时间（ISO 8601 格式） |

---

### 7. 更新货道库存数量

补货员补充或修正指定货道的库存数量。

**`PUT /api/v1/stocker/machines/{machineId}/slots/{slotId}`**

#### Request

**Headers**

| Header | 必填 | 值 |
|--------|------|----|
| `Authorization` | ✅ | `Bearer <token>` |
| `Content-Type` | ✅ | `application/json` |

**Path Parameters**

| 参数 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `machineId` | `string` | ✅ | 机器 ID |
| `slotId` | `string` | ✅ | 货道 ID |

**Query Parameters** — 无

**Request Body**

```json
{
  "quantity": 15
}
```

| 字段 | 类型 | 必填 | 约束 | 说明 |
|------|------|------|------|------|
| `quantity` | `integer` | ✅ | `≥ 0` | 更新后的库存数量，不可为负数 |

#### Response

**Success `200`**

```json
{
  "success": true,
  "code": 200,
  "message": "更新成功",
  "data": {
    "id": "slot_02",
    "machine_id": "m_001",
    "slot_number": "A02",
    "product_name": "矿泉水 550ml",
    "quantity": 15,
    "updated_at": "2026-03-16T17:05:00+08:00"
  },
  "errors": null
}
```

**Validation Error `422`**

```json
{
  "success": false,
  "code": 422,
  "message": "验证失败",
  "data": null,
  "errors": {
    "quantity": ["数量必须为非负整数"]
  }
}
```

---

## 模块三：Maintenance（维护员 - Maintainer）

> 角色权限：`maintainer`

---

### 8. 获取维护员机器列表

获取当前登录维护员（Maintainer）负责的所有机器列表，含故障统计摘要。

**`GET /api/v1/maintainer/machines`**

#### Request

**Headers**

| Header | 必填 | 值 |
|--------|------|----|
| `Authorization` | ✅ | `Bearer <token>` |

**Query / Path Parameters** — 无

**Request Body** — 无

#### Response

**Success `200`**

```json
{
  "success": true,
  "code": 200,
  "message": "OK",
  "data": [
    {
      "id": "m_001",
      "name": "B栋1楼饮料机",
      "location": "上海市浦东新区张江科技园 B 栋 1 楼",
      "fault_count": 3,
      "last_fault_at": "2026-03-15T14:22:00+08:00"
    },
    {
      "id": "m_002",
      "name": "C栋咖啡机",
      "location": "上海市浦东新区张江科技园 C 栋大厅",
      "fault_count": 0,
      "last_fault_at": null
    }
  ],
  "errors": null
}
```

**Data Schema — `MaintainerMachine`**

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` | `string` | 机器唯一 ID |
| `name` | `string` | 机器名称 |
| `location` | `string` | 机器地理位置描述 |
| `fault_count` | `integer` | 当前待处理故障数量，默认 `0` |
| `last_fault_at` | `string \| null` | 最近故障时间（ISO 8601），无故障时为 `null` |

---

### 9. 获取机器故障记录列表

获取指定机器的所有故障记录，按发生时间倒序分页返回。

**`GET /api/v1/maintainer/machines/{machineId}/faults`**

#### Request

**Headers**

| Header | 必填 | 值 |
|--------|------|----|
| `Authorization` | ✅ | `Bearer <token>` |

**Path Parameters**

| 参数 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `machineId` | `string` | ✅ | 机器 ID |

**Query Parameters**

| 参数 | 类型 | 必填 | 默认值 | 说明 |
|------|------|------|--------|------|
| `page` | `integer` | ✅ | `1` | 页码，从 `1` 开始 |
| `per_page` | `integer` | ✅ | `20` | 每页条数，建议 `10~50` |

**Request Body** — 无

#### Response

**Success `200`**

```json
{
  "success": true,
  "code": 200,
  "message": "OK",
  "data": [
    {
      "id": "fault_x01",
      "machine_id": "m_001",
      "fault_type": "卡货",
      "description": "A03 货道卡住，商品无法弹出",
      "status": "pending",
      "occurred_at": "2026-03-15T14:22:00+08:00"
    },
    {
      "id": "fault_x02",
      "machine_id": "m_001",
      "fault_type": "制冷故障",
      "description": "压缩机异常，温度上升至 18°C",
      "status": "resolved",
      "occurred_at": "2026-03-14T09:10:00+08:00"
    }
  ],
  "errors": null
}
```

**Data Schema — `FaultRecord`**

| 字段 | 类型 | 说明 |
|------|------|------|
| `id` | `string` | 故障记录唯一 ID |
| `machine_id` | `string` | 所属机器 ID |
| `fault_type` | `string` | 故障类型，如 `"卡货"`、`"制冷故障"` |
| `description` | `string` | 故障详细描述 |
| `status` | `string` | 故障状态枚举，见下表 |
| `occurred_at` | `string` | 故障发生时间（ISO 8601 格式） |

**`status` 枚举**

| 值 | 说明 |
|----|------|
| `pending` | 待处理 |
| `resolved` | 已解决 |

---

## 附录：接口速览

| # | Method | Path | 角色 | 说明 |
|---|--------|------|------|------|
| 1 | `GET` | `/api/v1/agent/machines` | agent | 获取代理商机器列表 |
| 2 | `GET` | `/api/v1/agent/machines/{machineId}/orders` | agent | 获取机器订单列表（分页） |
| 3 | `GET` | `/api/v1/agent/dashboard/stats` | agent | 获取仪表盘汇总统计 |
| 4 | `GET` | `/api/v1/agent/machines/{machineId}/stats` | agent | 获取单台机器统计 |
| 5 | `GET` | `/api/v1/stocker/machines` | stocker | 获取补货员机器列表 |
| 6 | `GET` | `/api/v1/stocker/machines/{machineId}/slots` | stocker | 获取机器货道列表 |
| 7 | `PUT` | `/api/v1/stocker/machines/{machineId}/slots/{slotId}` | stocker | 更新货道库存数量 |
| 8 | `GET` | `/api/v1/maintainer/machines` | maintainer | 获取维护员机器列表 |
| 9 | `GET` | `/api/v1/maintainer/machines/{machineId}/faults` | maintainer | 获取机器故障记录（分页） |
