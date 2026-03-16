import 'package:lunchbox_hub/features/inventory/entities/slot_model.dart';
import 'package:lunchbox_hub/features/inventory/entities/stocker_machine_model.dart';
import 'package:lunchbox_hub/features/agent/entities/agent_machine_model.dart';
import 'package:lunchbox_hub/features/agent/entities/order_model.dart';
import 'package:lunchbox_hub/features/agent/entities/product_sales_model.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';
import 'package:lunchbox_hub/features/maintenance/entities/fault_record_model.dart';
import 'package:lunchbox_hub/features/maintenance/entities/maintainer_machine_model.dart';

class MockData {
  // Machines
  static List<AgentMachineModel> getAgentMachines() {
    return List.generate(
      5,
      (i) => AgentMachineModel(
        id: 'M-00$i',
        name: '智能售货机 $i 号',
        location: '广州市天河区软件园 $i 座',
        totalOrders: 100 + i * 20,
        totalRevenue: (1500.50 + i * 300).toStringAsFixed(2),
      ),
    );
  }

  static List<OrderModel> getMachineOrders(String machineId) {
    final now = DateTime.now();
    return List.generate(
      10,
      (i) => OrderModel(
        id: 'ORD-$machineId-$i',
        machineId: machineId,
        productName: i % 2 == 0 ? '招牌鸭子饭' : '秘制排骨饭',
        amount: i % 2 == 0 ? '18.00' : '22.50',
        createdAt: now.subtract(Duration(minutes: i * 30)).toIso8601String(),
      ),
    );
  }

  static RevenueStatsModel getRevenueStats() {
    return const RevenueStatsModel(
      totalRevenue: '58420.50',
      totalOrders: 2840,
      dailyAvgRevenue: '1947.35',
      growthRate: 15.8,
      revenueTrend: [
        TimeSeriesPoint(label: '03.10', value: 1200),
        TimeSeriesPoint(label: '03.11', value: 1500),
        TimeSeriesPoint(label: '03.12', value: 1100),
        TimeSeriesPoint(label: '03.13', value: 1800),
        TimeSeriesPoint(label: '03.14', value: 2100),
        TimeSeriesPoint(label: '03.15', value: 1900),
        TimeSeriesPoint(label: '03.16', value: 2300),
      ],
      orderTrend: [
        TimeSeriesPoint(label: '03.10', value: 60),
        TimeSeriesPoint(label: '03.11', value: 75),
        TimeSeriesPoint(label: '03.12', value: 55),
        TimeSeriesPoint(label: '03.13', value: 90),
        TimeSeriesPoint(label: '03.14', value: 105),
        TimeSeriesPoint(label: '03.15', value: 95),
        TimeSeriesPoint(label: '03.16', value: 115),
      ],
      productSales: [
        ProductSalesModel(
          productName: '招牌鸭子饭',
          percentage: 45.0,
          revenue: '26289.22',
        ),
        ProductSalesModel(
          productName: '秘制排骨饭',
          percentage: 30.0,
          revenue: '17526.15',
        ),
        ProductSalesModel(
          productName: '豉汁排骨饭',
          percentage: 25.0,
          revenue: '14605.13',
        ),
      ],
      machineRevenues: [
        MachineRevenuePoint(
          machineId: 'M-001',
          machineName: '智能售货机 1 号',
          revenue: 15800.0,
        ),
        MachineRevenuePoint(
          machineId: 'M-002',
          machineName: '智能售货机 2 号',
          revenue: 12400.0,
        ),
        MachineRevenuePoint(
          machineId: 'M-003',
          machineName: '智能售货机 3 号',
          revenue: 9800.0,
        ),
        MachineRevenuePoint(
          machineId: 'M-004',
          machineName: '智能售货机 4 号',
          revenue: 11200.0,
        ),
        MachineRevenuePoint(
          machineId: 'M-005',
          machineName: '智能售货机 5 号',
          revenue: 9220.5,
        ),
      ],
    );
  }

  // Inventory
  static List<StockerMachineModel> getStockerMachines() {
    return List.generate(
      5,
      (i) => StockerMachineModel(
        id: 'S-00$i',
        name: '智能售货机 $i 号 (补货)',
        location: '广州市海珠区琶洲街道 $i 号',
        totalSlots: 40,
        lowStockSlots: i * 2,
        emptySlots: i,
      ),
    );
  }

  static List<SlotModel> getMachineSlots(String machineId) {
    final now = DateTime.now();
    return List.generate(
      20,
      (i) => SlotModel(
        id: 'SLOT-$machineId-$i',
        machineId: machineId,
        slotNumber: '${(i / 5).floor() + 1}-${i % 5 + 1}',
        productName: i % 3 == 0 ? '广式腊味饭' : (i % 3 == 1 ? '台式卤肉饭' : '梅菜扣肉饭'),
        quantity: i % 4 == 0 ? 0 : (i % 4 == 1 ? 2 : 10),
        updatedAt: now.subtract(Duration(hours: i)).toIso8601String(),
      ),
    );
  }

  // Maintenance
  static List<MaintainerMachineModel> getMaintainerMachines() {
    return List.generate(
      5,
      (i) => MaintainerMachineModel(
        id: 'E-00$i',
        name: '智能售货机 $i 号 (维护)',
        location: '广州市白云区机场路 $i 号',
        faultCount: i % 3,
        lastFaultAt: i % 3 == 0
            ? null
            : DateTime.now().subtract(Duration(days: i)).toIso8601String(),
      ),
    );
  }

  static List<FaultRecordModel> getMachineFaults(String machineId) {
    final now = DateTime.now();
    return List.generate(
      5,
      (i) => FaultRecordModel(
        id: 'FAULT-$machineId-$i',
        machineId: machineId,
        faultType: i % 2 == 0 ? '硬件故障' : '网络断连',
        description: i % 2 == 0 ? '机器屏幕显示异常，无法触摸操作' : '机器与服务器连接超时，无法上传心跳包',
        status: i % 3 == 0 ? FaultStatus.resolved : FaultStatus.pending,
        occurredAt: now.subtract(Duration(days: i)).toIso8601String(),
      ),
    );
  }
}
