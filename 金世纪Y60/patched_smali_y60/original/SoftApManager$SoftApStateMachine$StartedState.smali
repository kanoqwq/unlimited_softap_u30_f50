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

    .line 1091
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/wifi/x/com/android/internal/util/State;-><init>()V

    .line 1092
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

    .line 1195
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1196
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;->cancel()V

    .line 1197
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

    .line 1712
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    .line 1713
    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1712
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    return-void
.end method

.method private static synthetic lambda$updateConnectedClients$0(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 1276
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$updateSoftApInfo$1(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 1361
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private onUpChanged(Z)V
    .registers 9

    .line 1408
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-ne p1, v0, :cond_b

    return-void

    .line 1412
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V

    if-eqz p1, :cond_8c

    .line 1414
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftAp is ready for use"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1417
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmModeListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ActiveModeManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-interface {v0, v1}, Lcom/android/server/wifi/ActiveModeManager$Listener;->onStarted(Lcom/android/server/wifi/ActiveModeManager;)V

    .line 1418
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 1419
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1420
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1421
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 1422
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

    .line 1423
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v3

    .line 1422
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    goto :goto_93

    .line 1427
    :cond_8c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1429
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

    .line 1430
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDefaultShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1431
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v6

    move v2, p1

    .line 1429
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZIJZ)V

    if-eqz p1, :cond_10b

    .line 1433
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

    .line 1434
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 1433
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;IZ)V

    .line 1435
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

    .line 1436
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p0

    .line 1435
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApCapability(Landroid/net/wifi/SoftApCapability;IZ)V

    :cond_10b
    return-void
.end method

.method private removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V
    .registers 5

    .line 1143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1146
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1147
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

    .line 1148
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

    .line 1147
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1153
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

    .line 1165
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1167
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    goto :goto_2e

    .line 1168
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

    .line 1170
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4f

    .line 1171
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

    .line 1173
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v3

    goto :goto_62

    .line 1174
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownIdleInstanceInBridgedModeTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v3

    .line 1175
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

    .line 1182
    :cond_a3
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage(Ljava/lang/String;J)V

    return-void

    .line 1179
    :cond_a7
    :goto_a7
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage(Ljava/lang/String;)V

    return-void
.end method

.method private rescheduleTimeoutMessages(Ljava/lang/String;)V
    .registers 6

    .line 1115
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

    .line 1116
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1117
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    .line 1119
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1125
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1126
    invoke-direct {p0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;)V

    goto :goto_40

    :cond_56
    move-object v0, v2

    goto :goto_40

    .line 1132
    :cond_58
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;)V

    goto :goto_5f

    .line 1134
    :cond_5c
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;)V

    .line 1139
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

    .line 1186
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1187
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    .line 1188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 1187
    invoke-virtual {v0, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1189
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

    .line 1206
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1210
    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    .line 1211
    invoke-virtual {v0}, Landroid/net/wifi/SoftApCapability;->getMaxSupportedClients()I

    move-result v0

    .line 1212
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 1213
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v1

    if-lez v1, :cond_2f

    .line 1216
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1219
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v1

    .line 1220
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 1221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1223
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 1224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiClient;

    .line 1225
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBlockedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_88

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v4

    .line 1226
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v4

    if-eqz v4, :cond_84

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmAllowedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v4

    .line 1227
    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    goto :goto_88

    .line 1237
    :cond_84
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 1228
    :cond_88
    :goto_88
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

    .line 1229
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v5

    .line 1230
    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v6

    const/4 v7, 0x0

    .line 1229
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result v4

    if-nez v4, :cond_c6

    .line 1232
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4, v3, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$maddClientToPendingDisconnectionList(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiClient;I)V

    :cond_c6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_45

    :cond_ca
    if-lez v2, :cond_120

    .line 1242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1243
    :goto_d0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_120

    if-nez v2, :cond_d9

    goto :goto_120

    .line 1245
    :cond_d9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiClient;

    .line 1246
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

    .line 1248
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v4

    .line 1249
    invoke-virtual {v1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    const/4 v6, 0x1

    .line 1248
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result v3

    if-nez v3, :cond_11d

    .line 1251
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3, v1, v6}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$maddClientToPendingDisconnectionList(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiClient;I)V

    :cond_11d
    add-int/lit8 v2, v2, -0x1

    goto :goto_d0

    :cond_120
    :goto_120
    return-void
.end method

.method private updateConnectedClients(Landroid/net/wifi/WifiClient;Z)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1269
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1270
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

    .line 1274
    :cond_34
    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1275
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1277
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

    .line 1280
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
    if-eqz p2, :cond_96

    .line 1286
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    invoke-static {p2, v2, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mcheckSoftApClient(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z

    move-result p2

    if-eqz p2, :cond_95

    .line 1288
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    :cond_95
    return-void

    .line 1293
    :cond_96
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a9

    .line 1294
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "client doesn\'t exist in list, it should NOT happen"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_a9
    :goto_a9
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    .line 1301
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SoftApInfo;

    .line 1302
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The connected wifi stations have changed with count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
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

    .line 1302
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object p1

    if-eqz p1, :cond_120

    .line 1307
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

    .line 1308
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 1307
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    goto :goto_12d

    .line 1310
    :cond_120
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SoftApCallback is null. Dropping ConnectedClientsChanged event."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :goto_12d
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1315
    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    .line 1316
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v2

    .line 1317
    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v3

    .line 1318
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApInfo;

    .line 1314
    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(IIILandroid/net/wifi/SoftApInfo;)V

    .line 1320
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessages(Ljava/lang/String;)V

    return-void
.end method

.method private updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V
    .registers 15

    .line 1327
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

    .line 1330
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1331
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1332
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

    .line 1333
    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p0

    .line 1332
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    return-void

    .line 1336
    :cond_60
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1337
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

    .line 1339
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    .line 1340
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8f

    goto :goto_90

    :cond_8f
    move v9, v2

    .line 1341
    :goto_90
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
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

    .line 1345
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v3

    .line 1344
    invoke-virtual {p2, v0, v1, v3}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    if-eqz v9, :cond_f7

    .line 1347
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1348
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    .line 1349
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    .line 1347
    invoke-virtual {p2, v0, v2, v1, p1}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(IIILandroid/net/wifi/SoftApInfo;)V

    .line 1351
    :cond_f7
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p2

    if-eqz p2, :cond_118

    .line 1352
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object p0

    .line 1353
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p0

    .line 1352
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wifi/WifiMetrics;->addSoftApInstanceDownEventInDualMode(ILandroid/net/wifi/SoftApInfo;)V

    :cond_118
    return-void

    .line 1360
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

    .line 1363
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_153

    .line 1364
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

    .line 1368
    :cond_153
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    new-instance v1, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v1, p1}, Landroid/net/wifi/SoftApInfo;-><init>(Landroid/net/wifi/SoftApInfo;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
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

    .line 1370
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v4

    .line 1369
    invoke-virtual {p2, v1, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 1373
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v1, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "SoftApManager Soft AP Send Message Timeout on "

    if-nez p2, :cond_1d7

    .line 1375
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

    .line 1376
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

    .line 1375
    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v9

    .line 1382
    :cond_1d7
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgedMode(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p2

    if-eqz p2, :cond_221

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    .line 1383
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_221

    .line 1384
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

    .line 1385
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

    .line 1384
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_222

    :cond_221
    move v9, v2

    :goto_222
    if-eqz v9, :cond_22f

    .line 1394
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessages(Ljava/lang/String;)V

    .line 1398
    :cond_22f
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result p2

    if-lez p2, :cond_26e

    .line 1399
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getBandwidth()I

    move-result p2

    if-eqz p2, :cond_26e

    .line 1400
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    .line 1401
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    .line 1402
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 1400
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApChannelSwitchedEvent(Ljava/util/List;IZ)V

    .line 1403
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateUserBandPreferenceViolationMetricsIfNeeded(Landroid/net/wifi/SoftApInfo;)V

    :cond_26e
    return-void
.end method

.method private updateUserBandPreferenceViolationMetricsIfNeeded(Landroid/net/wifi/SoftApInfo;)V
    .registers 5

    .line 1515
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1516
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    .line 1518
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 1519
    invoke-static {v0, v2}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1521
    :cond_28
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x2

    .line 1522
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1524
    :cond_39
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x4

    .line 1525
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :cond_4c
    :goto_4c
    if-eqz v2, :cond_79

    .line 1529
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel does not satisfy user band preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1529
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
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

    .line 1442
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1443
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1444
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

    .line 1446
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmStateMachine(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 1447
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1448
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/coex/CoexManager;->registerCoexListener(Lcom/android/server/wifi/coex/CoexManager$CoexListener;)V

    .line 1450
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsDisableShutDownBridgedModeIdleInstanceTimerWhenCharging(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1451
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 1452
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 1453
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1454
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mBatteryChargingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/net/wifi/WifiContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1455
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBatteryManager(Lcom/android/server/wifi/SoftApManager;)Landroid/os/BatteryManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIsCharging(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1457
    :cond_7f
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSarManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SarManager;->setSapWifiState(I)V

    .line 1458
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Resetting connected clients on start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1460
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1461
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmEverReportMetricsForMaxClient(Lcom/android/server/wifi/SoftApManager;Z)V

    return-void
.end method

.method public exit()V
    .registers 9

    .line 1466
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1467
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mstopSoftAp(Lcom/android/server/wifi/SoftApManager;)V

    .line 1469
    :cond_11
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1470
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/coex/CoexManager;->unregisterCoexListener(Lcom/android/server/wifi/coex/CoexManager$CoexListener;)V

    .line 1472
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d0

    .line 1473
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Resetting num stations on stop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_56
    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1475
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_56

    .line 1476
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v4

    .line 1477
    invoke-virtual {v4}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v5

    .line 1479
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiClient;

    invoke-virtual {v2}, Landroid/net/wifi/WifiClient;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApInfo;

    .line 1476
    invoke-virtual {v3, v1, v1, v4, v2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(IIILandroid/net/wifi/SoftApInfo;)V

    goto :goto_56

    .line 1482
    :cond_98
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1483
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 1484
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

    .line 1485
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v4

    .line 1484
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 1488
    :cond_d0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1489
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1490
    invoke-direct {p0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage(Ljava/lang/String;)V

    goto :goto_e7

    .line 1492
    :cond_f7
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1493
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsDisableShutDownBridgedModeIdleInstanceTimerWhenCharging(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 1494
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mBatteryChargingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1498
    :cond_117
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    .line 1499
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDefaultShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1500
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v7

    .line 1498
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZIJZ)V

    .line 1501
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-static {v0, v3, v2, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1504
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSarManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/SarManager;->setSapWifiState(I)V

    .line 1506
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmApInterfaceName(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1508
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1509
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmRole(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/ActiveModeManager$SoftApRole;)V

    .line 1510
    invoke-direct {p0, v2, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11

    .line 1537
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/16 v5, 0xd

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_620

    :pswitch_10  #0x6
    return v8

    .line 1772
    :pswitch_11  #0x11
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_16

    move v8, v7

    .line 1773
    :cond_16
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsCharging(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p1

    if-eq p1, v8, :cond_61f

    .line 1774
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v8}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIsCharging(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1775
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v4, :cond_61f

    .line 1776
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1777
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;)V

    goto :goto_45

    .line 1698
    :pswitch_55  #0x10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1699
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61f

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCountryCode(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    .line 1700
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61f

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1702
    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1701
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setApCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61f

    .line 1703
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update country code when Soft AP enabled from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCountryCode(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmCountryCode(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V

    goto/16 :goto_61f

    .line 1741
    :pswitch_be  #0xf
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_182

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v4, :cond_d8

    goto/16 :goto_182

    .line 1745
    :cond_d8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiInfo;

    .line 1746
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    if-lez p1, :cond_61f

    .line 1748
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61f

    .line 1749
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi connected to freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " which is unavailable for SAP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_125
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_165

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SoftApInfo;

    .line 1752
    invoke-virtual {v1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v2

    .line 1753
    invoke-static {p1}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v3

    if-ne v2, v3, :cond_125

    .line 1754
    invoke-virtual {v1}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 1755
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instance which is running on the same band as the wifi connection on an unsafe channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_167

    :cond_165
    const-string p1, ""

    .line 1766
    :goto_167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 1767
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 1765
    :cond_17d
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto/16 :goto_61f

    .line 1742
    :cond_182
    :goto_182
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ignore wifi connected in single AP state"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61f

    .line 1720
    :pswitch_191  #0xe
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)V

    .line 1721
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgedMode(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p1

    if-eqz p1, :cond_217

    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eq p1, v4, :cond_1b1

    goto :goto_217

    .line 1725
    :cond_1b1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1726
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c6
    :goto_1c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SoftApInfo;

    .line 1727
    invoke-virtual {v1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v2

    .line 1728
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 1729
    invoke-static {v2}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v2

    .line 1730
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/server/wifi/util/ApConfigUtil;->removeUnavailableBands(Landroid/net/wifi/SoftApCapability;ILcom/android/server/wifi/coex/CoexManager;)I

    move-result v3

    if-eq v2, v3, :cond_1c6

    .line 1733
    invoke-virtual {v1}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c6

    .line 1737
    :cond_20a
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1738
    invoke-static {v0, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 1737
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto/16 :goto_61f

    .line 1722
    :cond_217
    :goto_217
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ignore safe channel changed in single AP state"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61f

    .line 1603
    :pswitch_226  #0xd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1604
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgedMode(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_27d

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v4, :cond_243

    goto :goto_27d

    .line 1609
    :cond_243
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBridgedModeOpportunisticsShutdownTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_25c

    .line 1610
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bridged Mode Timeout message received while timeout is disabled. Dropping."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61f

    .line 1614
    :cond_25c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance idle timout on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto/16 :goto_61f

    .line 1605
    :cond_27d
    :goto_27d
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore Bridged Mode Timeout message received in single AP state. Dropping it from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61f

    .line 1709
    :pswitch_29b  #0xc
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eqz p1, :cond_61f

    .line 1710
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Disconnect pending list is NOT empty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1714
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_61f

    .line 1655
    :pswitch_2cb  #0xb
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/SoftApConfiguration;

    .line 1656
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    .line 1657
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 1658
    invoke-static {v0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->checkConfigurationChangeNeedToRestart(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    if-nez v0, :cond_3f1

    .line 1660
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configuration changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v0

    .line 1662
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v3

    if-eq v0, v3, :cond_323

    .line 1663
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Max Client changed, reset to record the metrics"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v8}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmEverReportMetricsForMaxClient(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1666
    :cond_323
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 1667
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v3

    .line 1668
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_356

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    .line 1669
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v3

    if-ne v0, v3, :cond_356

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBridgedModeOpportunisticsShutdownTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    .line 1672
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result v3

    if-eq v0, v3, :cond_354

    goto :goto_356

    :cond_354
    move v0, v8

    goto :goto_357

    :cond_356
    :goto_356
    move v0, v7

    .line 1673
    :goto_357
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateChangeableConfiguration(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;)V

    .line 1674
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateClientConnection()V

    if-eqz v0, :cond_3c8

    .line 1676
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_371
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_381

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1677
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage(Ljava/lang/String;)V

    goto :goto_371

    .line 1679
    :cond_381
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessages(Ljava/lang/String;)V

    .line 1681
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SoftApInfo;

    .line 1682
    new-instance v3, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v3, v0}, Landroid/net/wifi/SoftApInfo;-><init>(Landroid/net/wifi/SoftApInfo;)V

    .line 1683
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_3c0

    .line 1684
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v4

    goto :goto_3c1

    :cond_3c0
    move-wide v4, v1

    .line 1683
    :goto_3c1
    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/SoftApInfo;->setAutoShutdownTimeoutMillis(J)V

    .line 1685
    invoke-direct {p0, v3, v8}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V

    goto :goto_39c

    .line 1688
    :cond_3c8
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

    .line 1690
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1691
    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p0

    .line 1688
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;IZ)V

    goto/16 :goto_61f

    .line 1693
    :cond_3f1
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore the config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " update since it requires restart"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61f

    .line 1647
    :pswitch_414  #0xa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/SoftApCapability;

    .line 1648
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    new-instance v1, Landroid/net/wifi/SoftApCapability;

    invoke-direct {v1, p1}, Landroid/net/wifi/SoftApCapability;-><init>(Landroid/net/wifi/SoftApCapability;)V

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApCapability;)V

    .line 1649
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

    .line 1650
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 1649
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApCapability(Landroid/net/wifi/SoftApCapability;IZ)V

    .line 1651
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateClientConnection()V

    .line 1652
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)V

    goto/16 :goto_61f

    .line 1552
    :pswitch_457  #0x9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/net/wifi/SoftApInfo;

    if-nez v0, :cond_46c

    .line 1553
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid type returned for CMD_AP_INFO_CHANGED"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61f

    .line 1557
    :cond_46c
    check-cast p1, Landroid/net/wifi/SoftApInfo;

    .line 1558
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v0

    if-gez v0, :cond_496

    .line 1559
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid ap channel frequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1559
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61f

    .line 1564
    :cond_496
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_4a8

    .line 1565
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v1

    .line 1564
    :cond_4a8
    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/SoftApInfo;->setAutoShutdownTimeoutMillis(J)V

    .line 1566
    invoke-direct {p0, p1, v8}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V

    goto/16 :goto_61f

    .line 1618
    :pswitch_4b0  #0x7
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Interface was cleanly destroyed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v6, v5, v8}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1621
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 1622
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    goto/16 :goto_61f

    .line 1586
    :pswitch_4d2  #0x5
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p1

    if-nez p1, :cond_4eb

    .line 1587
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Timeout message received while timeout is disabled. Dropping."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61f

    .line 1591
    :cond_4eb
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_508

    .line 1592
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Timeout message received but has clients. Dropping."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61f

    .line 1596
    :cond_508
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApNotifier(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wifi/SoftApNotifier;->showSoftApShutdownTimeoutExpiredNotification()V

    .line 1597
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Timeout message received. Stopping soft AP."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v6, v5, v8}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1600
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    goto/16 :goto_61f

    .line 1539
    :pswitch_52e  #0x4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/net/wifi/WifiClient;

    if-nez v1, :cond_543

    .line 1540
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid type returned for CMD_ASSOCIATED_STATIONS_CHANGED"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61f

    .line 1544
    :cond_543
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v7, :cond_548

    move v8, v7

    .line 1545
    :cond_548
    check-cast v0, Landroid/net/wifi/WifiClient;

    .line 1546
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_ASSOCIATED_STATIONS_CHANGED, Client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    invoke-virtual {v0}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1546
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-direct {p0, v0, v8}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateConnectedClients(Landroid/net/wifi/WifiClient;Z)V

    goto/16 :goto_61f

    .line 1569
    :pswitch_57b  #0x3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v7, :cond_580

    move v8, v7

    .line 1570
    :cond_580
    invoke-direct {p0, v8}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->onUpChanged(Z)V

    goto/16 :goto_61f

    .line 1625
    :pswitch_585  #0x2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5d1

    .line 1626
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgedMode(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_5d1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    .line 1627
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, v7, :cond_5d1

    .line 1628
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive instanceFailure on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    .line 1631
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v7, :cond_5d1

    goto :goto_61f

    .line 1635
    :cond_5d1
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hostapd failure, stop and report failure"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :pswitch_5de  #0x8
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "interface error, stop and report failure"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v0, 0xe

    invoke-static {p1, v0, v5, v8}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1642
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v6, v0, v8}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1644
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    goto :goto_61f

    .line 1573
    :pswitch_601  #0x1
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p1

    if-eqz p1, :cond_613

    .line 1574
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v6, v5, v8}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    goto :goto_61a

    .line 1577
    :cond_613
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v6, v3, v8}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1580
    :goto_61a
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    :cond_61f
    :goto_61f
    :pswitch_61f  #0x0
    return v7

    :pswitch_data_620
    .packed-switch 0x0
        :pswitch_61f  #00000000
        :pswitch_601  #00000001
        :pswitch_585  #00000002
        :pswitch_57b  #00000003
        :pswitch_52e  #00000004
        :pswitch_4d2  #00000005
        :pswitch_10  #00000006
        :pswitch_4b0  #00000007
        :pswitch_5de  #00000008
        :pswitch_457  #00000009
        :pswitch_414  #0000000a
        :pswitch_2cb  #0000000b
        :pswitch_29b  #0000000c
        :pswitch_226  #0000000d
        :pswitch_191  #0000000e
        :pswitch_be  #0000000f
        :pswitch_55  #00000010
        :pswitch_11  #00000011
    .end packed-switch
.end method
