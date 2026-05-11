.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
.super Lcom/android/wifi/x/com/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation


# instance fields
.field mBatteryChargingReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method public static synthetic $r8$lambda$1hB77rOk9riCEuBR2j2xhP-8Lx4(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;Landroid/net/wifi/WifiClient;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->lambda$processMessage$2(Landroid/net/wifi/WifiClient;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Av-ni02Dfs6byt3KKf3Ms4-z5o(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->lambda$updateConnectedClients$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qkj-ygiUYYz1ywhUwI2V2bVlmiQ(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->lambda$updateSoftApInfo$1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .registers 2

    .line 1180
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/wifi/x/com/android/internal/util/State;-><init>()V

    .line 1181
    new-instance p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$1;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$1;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;)V

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mBatteryChargingReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    return-void
.end method

.method private cancelTimeoutMessage(Ljava/lang/String;)V
    .registers 4

    .line 1284
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1285
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;->cancel()V

    .line 1286
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout message canceled on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method private synthetic lambda$processMessage$2(Landroid/net/wifi/WifiClient;Ljava/lang/Integer;)V
    .registers 4

    .line 1844
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    .line 1845
    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1844
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    return-void
.end method

.method private static synthetic lambda$updateConnectedClients$0(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 1365
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$updateSoftApInfo$1(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 1454
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private onUpChanged(Z)V
    .registers 9

    .line 1501
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-ne p1, v0, :cond_b

    return-void

    .line 1505
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V

    if-eqz p1, :cond_8c

    .line 1507
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftAp is ready for use"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1510
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmModeListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ActiveModeManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-interface {v0, v1}, Lcom/android/server/wifi/ActiveModeManager$Listener;->onStarted(Lcom/android/server/wifi/ActiveModeManager;)V

    .line 1511
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 1512
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1513
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1514
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 1515
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1516
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v3

    .line 1515
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    goto :goto_93

    .line 1520
    :cond_8c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1522
    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    .line 1523
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDefaultShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1524
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v6

    move v2, p1

    .line 1522
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZIJZ)V

    if-eqz p1, :cond_10b

    .line 1526
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    .line 1527
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 1526
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;IZ)V

    .line 1528
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    .line 1529
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p0

    .line 1528
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApCapability(Landroid/net/wifi/SoftApCapability;IZ)V

    :cond_10b
    return-void
.end method

.method private removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V
    .registers 5

    .line 1232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1235
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1236
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v2

    .line 1237
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApInfo;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") from bridged iface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1236
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1242
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SoftApInfo;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V

    :cond_80
    return-void
.end method

.method private rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;)V
    .registers 9

    .line 1254
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    .line 1255
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1256
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    goto :goto_2e

    .line 1257
    :cond_17
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBridgedModeOpportunisticsShutdownTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsCharging(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    if-eqz v0, :cond_3d

    .line 1259
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4f

    .line 1260
    :cond_3d
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_4f
    if-eqz v0, :cond_5a

    .line 1262
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v3

    goto :goto_62

    .line 1263
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownIdleInstanceInBridgedModeTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v3

    .line 1264
    :goto_62
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rescheduleTimeoutMessageIfNeeded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", timeoutEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isCharging"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsCharging(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", clientNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_a7

    if-eqz v2, :cond_a3

    goto :goto_a7

    .line 1271
    :cond_a3
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage(Ljava/lang/String;J)V

    return-void

    .line 1268
    :cond_a7
    :goto_a7
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage(Ljava/lang/String;)V

    return-void
.end method

.method private rescheduleTimeoutMessages(Ljava/lang/String;)V
    .registers 6

    .line 1204
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgedMode(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5f

    .line 1205
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1206
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    .line 1208
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1214
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1215
    invoke-direct {p0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;)V

    goto :goto_40

    :cond_56
    move-object v0, v2

    goto :goto_40

    .line 1221
    :cond_58
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;)V

    goto :goto_5f

    .line 1223
    :cond_5c
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;)V

    .line 1228
    :cond_5f
    :goto_5f
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method private scheduleTimeoutMessage(Ljava/lang/String;J)V
    .registers 7

    .line 1275
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1276
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    .line 1277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 1276
    invoke-virtual {v0, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1278
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout message scheduled, on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", delay = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return-void
.end method

.method private updateClientConnection()V
    .registers 9

    .line 1295
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1299
    :cond_11
    const/16 v0, 0x3e7

    .line 1308
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v1

    .line 1309
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 1310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1312
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 1313
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiClient;

    .line 1314
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBlockedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v4

    .line 1315
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v4

    if-eqz v4, :cond_68

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmAllowedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v4

    .line 1316
    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    goto :goto_6c

    .line 1326
    :cond_68
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1317
    :cond_6c
    :goto_6c
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force disconnect for not allowed client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v5

    .line 1319
    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v6

    const/4 v7, 0x0

    .line 1318
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 1321
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4, v3, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$maddClientToPendingDisconnectionList(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiClient;I)V

    :cond_aa
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_29

    :cond_ae
    if-lez v2, :cond_104

    .line 1331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1332
    :goto_b4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_104

    if-nez v2, :cond_bd

    goto :goto_104

    .line 1334
    :cond_bd
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiClient;

    .line 1335
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force disconnect for client due to no more room: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v4

    .line 1338
    invoke-virtual {v1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    const/4 v6, 0x1

    .line 1337
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result v3

    if-nez v3, :cond_101

    .line 1340
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3, v1, v6}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$maddClientToPendingDisconnectionList(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiClient;I)V

    :cond_101
    add-int/lit8 v2, v2, -0x1

    goto :goto_b4

    :cond_104
    :goto_104
    return-void
.end method

.method private updateConnectedClients(Landroid/net/wifi/WifiClient;Z)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1358
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1359
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "from pending disconnectionlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_34
    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1364
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1366
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_54

    const/4 v3, 0x1

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    :goto_55
    if-ne v3, p2, :cond_81

    .line 1369
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drop client connection event, client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "isConnected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , duplicate event or client is blocked"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_81
    if-eqz p2, :cond_b1

    .line 1375
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    invoke-static {p2, v2, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mcheckSoftApClient(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z

    move-result p2

    if-eqz p2, :cond_b0

    .line 1377
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1379
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDeviceClientsTime(Lcom/android/server/wifi/SoftApManager;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d7

    :cond_b0
    return-void

    .line 1384
    :cond_b1
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_c4

    .line 1385
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "client doesn\'t exist in list, it should NOT happen"

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_c4
    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1388
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDeviceClientsTime(Lcom/android/server/wifi/SoftApManager;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    :goto_d7
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    .line 1394
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SoftApInfo;

    .line 1395
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The connected wifi stations have changed with count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on the AP which info is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1395
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object p1

    if-eqz p1, :cond_14e

    .line 1400
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1401
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 1400
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    goto :goto_15b

    .line 1403
    :cond_14e
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SoftApCallback is null. Dropping ConnectedClientsChanged event."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :goto_15b
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1408
    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    .line 1409
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v2

    .line 1410
    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v3

    .line 1411
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApInfo;

    .line 1407
    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(IIILandroid/net/wifi/SoftApInfo;)V

    .line 1413
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessages(Ljava/lang/String;)V

    return-void
.end method

.method private updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V
    .registers 15

    .line 1420
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftApInfo update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_60

    .line 1423
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1424
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1425
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1426
    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p0

    .line 1425
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    return-void

    .line 1429
    :cond_60
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1430
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_119

    if-eqz p2, :cond_118

    .line 1432
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    .line 1433
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8f

    goto :goto_90

    :cond_8f
    move v9, v2

    .line 1434
    :goto_90
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1438
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v3

    .line 1437
    invoke-virtual {p2, v0, v1, v3}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    if-eqz v9, :cond_f7

    .line 1440
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1441
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    .line 1442
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    .line 1440
    invoke-virtual {p2, v0, v2, v1, p1}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(IIILandroid/net/wifi/SoftApInfo;)V

    .line 1444
    :cond_f7
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p2

    if-eqz p2, :cond_118

    .line 1445
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object p0

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p0

    .line 1445
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wifi/WifiMetrics;->addSoftApInstanceDownEventInDualMode(ILandroid/net/wifi/SoftApInfo;)V

    :cond_118
    return-void

    .line 1453
    :cond_119
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    new-instance v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1456
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_153

    .line 1457
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " changed when client connected, it should NOT happen!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_153
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    new-instance v1, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v1, p1}, Landroid/net/wifi/SoftApInfo;-><init>(Landroid/net/wifi/SoftApInfo;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1463
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v4

    .line 1462
    invoke-virtual {p2, v1, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 1466
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v1, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "SoftApManager Soft AP Send Message Timeout on "

    if-nez p2, :cond_1d7

    .line 1468
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v2, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmStateMachine(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v5

    .line 1469
    invoke-virtual {v5}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v7, v7, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1468
    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v9

    .line 1475
    :cond_1d7
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgedMode(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p2

    if-eqz p2, :cond_221

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    .line 1476
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_221

    .line 1477
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v10, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    new-instance v11, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v2

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmStateMachine(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object p2

    .line 1478
    invoke-virtual {p2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1477
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_222

    :cond_221
    move v9, v2

    :goto_222
    if-eqz v9, :cond_22f

    .line 1487
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessages(Ljava/lang/String;)V

    .line 1491
    :cond_22f
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result p2

    if-lez p2, :cond_26e

    .line 1492
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getBandwidth()I

    move-result p2

    if-eqz p2, :cond_26e

    .line 1493
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    .line 1494
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    .line 1495
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 1493
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApChannelSwitchedEvent(Ljava/util/List;IZ)V

    .line 1496
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateUserBandPreferenceViolationMetricsIfNeeded(Landroid/net/wifi/SoftApInfo;)V

    :cond_26e
    return-void
.end method

.method private updateUserBandPreferenceViolationMetricsIfNeeded(Landroid/net/wifi/SoftApInfo;)V
    .registers 5

    .line 1612
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1613
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    .line 1615
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 1616
    invoke-static {v0, v2}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1618
    :cond_28
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x2

    .line 1619
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1621
    :cond_39
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x4

    .line 1622
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :cond_4c
    :goto_4c
    if-eqz v2, :cond_79

    .line 1626
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel does not satisfy user band preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1626
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSoftApUserBandPreferenceUnsatisfied()V

    :cond_79
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 1535
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1536
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1537
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->onUpChanged(Z)V

    .line 1539
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmStateMachine(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 1540
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1541
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/coex/CoexManager;->registerCoexListener(Lcom/android/server/wifi/coex/CoexManager$CoexListener;)V

    .line 1543
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsDisableShutDownBridgedModeIdleInstanceTimerWhenCharging(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1544
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 1545
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 1546
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1547
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mBatteryChargingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/net/wifi/WifiContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1548
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBatteryManager(Lcom/android/server/wifi/SoftApManager;)Landroid/os/BatteryManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIsCharging(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1550
    :cond_7f
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSarManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SarManager;->setSapWifiState(I)V

    .line 1551
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Resetting connected clients on start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1553
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDeviceClientsTime(Lcom/android/server/wifi/SoftApManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1554
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1555
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmEverReportMetricsForMaxClient(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1556
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mregisterWifiAlertObserver(Lcom/android/server/wifi/SoftApManager;)V

    return-void
.end method

.method public exit()V
    .registers 9

    .line 1561
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$munregisterWifiAlertObserver(Lcom/android/server/wifi/SoftApManager;)V

    .line 1562
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1563
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mstopSoftAp(Lcom/android/server/wifi/SoftApManager;)V

    .line 1565
    :cond_18
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1566
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/coex/CoexManager;->unregisterCoexListener(Lcom/android/server/wifi/coex/CoexManager$CoexListener;)V

    .line 1568
    :cond_31
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e2

    .line 1569
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Resetting num stations on stop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5d
    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1571
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_5d

    .line 1572
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v4

    .line 1573
    invoke-virtual {v4}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v5

    .line 1575
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiClient;

    invoke-virtual {v2}, Landroid/net/wifi/WifiClient;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApInfo;

    .line 1572
    invoke-virtual {v3, v1, v1, v4, v2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(IIILandroid/net/wifi/SoftApInfo;)V

    goto :goto_5d

    .line 1578
    :cond_9f
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1579
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDeviceClientsTime(Lcom/android/server/wifi/SoftApManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1580
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_e2

    .line 1581
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1582
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v4

    .line 1581
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 1585
    :cond_e2
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1586
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_109

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1587
    invoke-direct {p0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage(Ljava/lang/String;)V

    goto :goto_f9

    .line 1589
    :cond_109
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1590
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsDisableShutDownBridgedModeIdleInstanceTimerWhenCharging(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1591
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mBatteryChargingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1595
    :cond_129
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    .line 1596
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDefaultShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1597
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v7

    .line 1595
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZIJZ)V

    .line 1598
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-static {v0, v3, v2, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1601
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSarManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/SarManager;->setSapWifiState(I)V

    .line 1603
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmApInterfaceName(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1605
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1606
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmRole(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/ActiveModeManager$SoftApRole;)V

    .line 1607
    invoke-direct {p0, v2, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 15

    .line 1634
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6ae

    const/16 v2, 0xc

    const/16 v3, 0xd

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v0, v1, :cond_690

    const-string v6, "hotspot_on_off_failed"

    const-string v7, "reason"

    const-string v8, "false"

    const-string v9, "enable"

    const/4 v10, 0x2

    if-eq v0, v10, :cond_5db

    const/4 v11, 0x3

    if-eq v0, v11, :cond_5d1

    const/4 v11, 0x4

    if-eq v0, v11, :cond_584

    const/4 v11, 0x5

    if-eq v0, v11, :cond_4fd

    const/16 v11, 0x65

    if-eq v0, v11, :cond_4ed

    const-wide/16 v11, 0x0

    packed-switch v0, :pswitch_data_6b0

    return v5

    .line 1904
    :pswitch_2c  #0x11
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_31

    move v5, v1

    .line 1905
    :cond_31
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsCharging(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p1

    if-eq p1, v5, :cond_6ae

    .line 1906
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIsCharging(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1907
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v10, :cond_6ae

    .line 1908
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1909
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;)V

    goto :goto_60

    .line 1830
    :pswitch_70  #0x10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1831
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6ae

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCountryCode(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    .line 1832
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6ae

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1834
    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1833
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiNative;->setApCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6ae

    .line 1835
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update country code when Soft AP enabled from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCountryCode(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmCountryCode(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V

    goto/16 :goto_6ae

    .line 1873
    :pswitch_d9  #0xf
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_19d

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v10, :cond_f3

    goto/16 :goto_19d

    .line 1877
    :cond_f3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiInfo;

    .line 1878
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    if-lez p1, :cond_6ae

    .line 1880
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6ae

    .line 1881
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi connected to freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " which is unavailable for SAP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_140
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_180

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApInfo;

    .line 1884
    invoke-virtual {v2}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v3

    .line 1885
    invoke-static {p1}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v4

    if-ne v3, v4, :cond_140

    .line 1886
    invoke-virtual {v2}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 1887
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " instance which is running on the same band as the wifi connection on an unsafe channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    :cond_180
    const-string p1, ""

    .line 1898
    :goto_182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_198

    .line 1899
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 1897
    :cond_198
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto/16 :goto_6ae

    .line 1874
    :cond_19d
    :goto_19d
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ignore wifi connected in single AP state"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ae

    .line 1852
    :pswitch_1ac  #0xe
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)V

    .line 1853
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgedMode(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p1

    if-eqz p1, :cond_232

    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eq p1, v10, :cond_1cc

    goto :goto_232

    .line 1857
    :cond_1cc
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1858
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e1
    :goto_1e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_225

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApInfo;

    .line 1859
    invoke-virtual {v2}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v3

    .line 1860
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e1

    .line 1861
    invoke-static {v3}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v3

    .line 1862
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/server/wifi/util/ApConfigUtil;->removeUnavailableBands(Landroid/net/wifi/SoftApCapability;ILcom/android/server/wifi/coex/CoexManager;)I

    move-result v4

    if-eq v3, v4, :cond_1e1

    .line 1865
    invoke-virtual {v2}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e1

    .line 1869
    :cond_225
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1870
    invoke-static {v0, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 1869
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto/16 :goto_6ae

    .line 1854
    :cond_232
    :goto_232
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ignore safe channel changed in single AP state"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ae

    .line 1715
    :pswitch_241  #0xd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1716
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgedMode(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_298

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v10, :cond_25e

    goto :goto_298

    .line 1721
    :cond_25e
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBridgedModeOpportunisticsShutdownTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_277

    .line 1722
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bridged Mode Timeout message received while timeout is disabled. Dropping."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ae

    .line 1726
    :cond_277
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance idle timout on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto/16 :goto_6ae

    .line 1717
    :cond_298
    :goto_298
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore Bridged Mode Timeout message received in single AP state. Dropping it from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ae

    .line 1841
    :pswitch_2b6  #0xc
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eqz p1, :cond_6ae

    .line 1842
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Disconnect pending list is NOT empty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1846
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_6ae

    .line 1787
    :pswitch_2e6  #0xb
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/SoftApConfiguration;

    .line 1788
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    .line 1789
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 1790
    invoke-static {v0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->checkConfigurationChangeNeedToRestart(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    if-nez v0, :cond_40c

    .line 1792
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v0

    .line 1794
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v2

    if-eq v0, v2, :cond_33e

    .line 1795
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Max Client changed, reset to record the metrics"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmEverReportMetricsForMaxClient(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1798
    :cond_33e
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 1799
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v2

    .line 1800
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-nez v0, :cond_371

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    .line 1801
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v2

    if-ne v0, v2, :cond_371

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBridgedModeOpportunisticsShutdownTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    .line 1804
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result v2

    if-eq v0, v2, :cond_36f

    goto :goto_371

    :cond_36f
    move v0, v5

    goto :goto_372

    :cond_371
    :goto_371
    move v0, v1

    .line 1805
    :goto_372
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateChangeableConfiguration(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;)V

    .line 1806
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateClientConnection()V

    if-eqz v0, :cond_3e3

    .line 1808
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1809
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage(Ljava/lang/String;)V

    goto :goto_38c

    .line 1811
    :cond_39c
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessages(Ljava/lang/String;)V

    .line 1813
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SoftApInfo;

    .line 1814
    new-instance v2, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v2, v0}, Landroid/net/wifi/SoftApInfo;-><init>(Landroid/net/wifi/SoftApInfo;)V

    .line 1815
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_3db

    .line 1816
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v3

    goto :goto_3dc

    :cond_3db
    move-wide v3, v11

    .line 1815
    :goto_3dc
    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/SoftApInfo;->setAutoShutdownTimeoutMillis(J)V

    .line 1817
    invoke-direct {p0, v2, v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V

    goto :goto_3b7

    .line 1820
    :cond_3e3
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v2

    .line 1822
    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1823
    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p0

    .line 1820
    invoke-virtual {p1, v0, v2, p0}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;IZ)V

    goto/16 :goto_6ae

    .line 1825
    :cond_40c
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore the config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " update since it requires restart"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ae

    .line 1779
    :pswitch_42f  #0xa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/SoftApCapability;

    .line 1780
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    new-instance v2, Landroid/net/wifi/SoftApCapability;

    invoke-direct {v2, p1}, Landroid/net/wifi/SoftApCapability;-><init>(Landroid/net/wifi/SoftApCapability;)V

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApCapability;)V

    .line 1781
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v2

    .line 1782
    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v3

    .line 1781
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApCapability(Landroid/net/wifi/SoftApCapability;IZ)V

    .line 1783
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateClientConnection()V

    .line 1784
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)V

    goto/16 :goto_6ae

    .line 1649
    :pswitch_472  #0x9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/net/wifi/SoftApInfo;

    if-nez v0, :cond_487

    .line 1650
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid type returned for CMD_AP_INFO_CHANGED"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ae

    .line 1654
    :cond_487
    check-cast p1, Landroid/net/wifi/SoftApInfo;

    .line 1655
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v0

    if-gez v0, :cond_4b1

    .line 1656
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ap channel frequency: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1656
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ae

    .line 1661
    :cond_4b1
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_4c3

    .line 1662
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v11

    .line 1661
    :cond_4c3
    invoke-virtual {p1, v11, v12}, Landroid/net/wifi/SoftApInfo;->setAutoShutdownTimeoutMillis(J)V

    .line 1663
    invoke-direct {p0, p1, v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V

    goto/16 :goto_6ae

    .line 1730
    :pswitch_4cb  #0x7
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Interface was cleanly destroyed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v4, v3, v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1733
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1734
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    goto/16 :goto_6ae

    :cond_4ed
    const-string p1, "SoftApManager"

    const-string v0, "Reset softAp data limitation value."

    .line 1915
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mregisterWifiAlertObserver(Lcom/android/server/wifi/SoftApManager;)V

    goto/16 :goto_6ae

    .line 1683
    :cond_4fd
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p1

    if-nez p1, :cond_516

    .line 1684
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Timeout message received while timeout is disabled. Dropping."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ae

    .line 1688
    :cond_516
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_533

    .line 1689
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Timeout message received but has clients. Dropping."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ae

    :cond_533
    const/16 p1, 0x12

    .line 1693
    invoke-static {p1}, Lcom/android/server/wifi/WifiAdvancedConfigStore;->getAdvancedConfiguration(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 1694
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54c

    .line 1695
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApNotifier(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wifi/SoftApNotifier;->showSoftApShutdownTimeoutExpiredNotification()V

    .line 1697
    :cond_54c
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Timeout message received. Stopping soft AP."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v4, v3, v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1700
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    .line 1703
    sget-boolean p1, Lcom/zte/wifi/ZteWifiUtils;->ZTE_FEATURE_WIFI_MINDSYNC:Z

    if-eqz p1, :cond_6ae

    .line 1704
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extraParam"

    const-string v2, "timeout"

    .line 1705
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object p0

    const-string v0, "hotspot_disabled"

    invoke-static {p0, v0, p1, v1}, Lcom/zte/wifi/ZteWifiUtils;->sendHotspotMindSyncEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_6ae

    .line 1636
    :cond_584
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Landroid/net/wifi/WifiClient;

    if-nez v2, :cond_599

    .line 1637
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid type returned for CMD_ASSOCIATED_STATIONS_CHANGED"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6ae

    .line 1641
    :cond_599
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_59e

    move v5, v1

    .line 1642
    :cond_59e
    check-cast v0, Landroid/net/wifi/WifiClient;

    .line 1643
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_ASSOCIATED_STATIONS_CHANGED, Client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-virtual {v0}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1643
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    invoke-direct {p0, v0, v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateConnectedClients(Landroid/net/wifi/WifiClient;Z)V

    goto/16 :goto_6ae

    .line 1666
    :cond_5d1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_5d6

    move v5, v1

    .line 1667
    :cond_5d6
    invoke-direct {p0, v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->onUpChanged(Z)V

    goto/16 :goto_6ae

    .line 1737
    :cond_5db
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_628

    .line 1738
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgedMode(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_628

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    .line 1739
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, v1, :cond_628

    .line 1740
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive instanceFailure on "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    .line 1743
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v1, :cond_628

    goto/16 :goto_6ae

    .line 1747
    :cond_628
    sget-boolean p1, Lcom/zte/wifi/ZteWifiUtils;->ZTE_FEATURE_WIFI_MINDSYNC:Z

    if-eqz p1, :cond_644

    .line 1748
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1749
    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hostapd_failure"

    .line 1750
    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v0

    invoke-static {v0, v6, p1, v1}, Lcom/zte/wifi/ZteWifiUtils;->sendHotspotMindSyncEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1757
    :cond_644
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hostapd failure, stop and report failure"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :pswitch_651  #0x8
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "interface error, stop and report failure"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    sget-boolean p1, Lcom/zte/wifi/ZteWifiUtils;->ZTE_FEATURE_WIFI_MINDSYNC:Z

    if-eqz p1, :cond_67a

    .line 1762
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1763
    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "interface_error"

    .line 1764
    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v0

    invoke-static {v0, v6, p1, v1}, Lcom/zte/wifi/ZteWifiUtils;->sendHotspotMindSyncEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1771
    :cond_67a
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v0, 0xe

    invoke-static {p1, v0, v3, v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1774
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v4, v0, v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1776
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    goto :goto_6ae

    .line 1670
    :cond_690
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p1

    if-eqz p1, :cond_6a2

    .line 1671
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v4, v3, v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    goto :goto_6a9

    .line 1674
    :cond_6a2
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v4, v2, v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1677
    :goto_6a9
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    :cond_6ae
    :goto_6ae
    return v1

    nop

    :pswitch_data_6b0
    .packed-switch 0x7
        :pswitch_4cb  #00000007
        :pswitch_651  #00000008
        :pswitch_472  #00000009
        :pswitch_42f  #0000000a
        :pswitch_2e6  #0000000b
        :pswitch_2b6  #0000000c
        :pswitch_241  #0000000d
        :pswitch_1ac  #0000000e
        :pswitch_d9  #0000000f
        :pswitch_70  #00000010
        :pswitch_2c  #00000011
    .end packed-switch
.end method
