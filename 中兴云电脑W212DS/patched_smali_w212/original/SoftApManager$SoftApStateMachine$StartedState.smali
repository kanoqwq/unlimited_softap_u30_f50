.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
.super Lcom/android/server/wifi/RunnerState;
.source "SoftApManager.java"


# instance fields
.field mBatteryPluggedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method public static synthetic $r8$lambda$5fvJnI5xBzPDgrnaUkZd_pJyQ8E(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;Landroid/net/wifi/WifiClient;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->lambda$processMessageImpl$2(Landroid/net/wifi/WifiClient;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pr-bY1UjQP6pXRuNB88BffLAkfk(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->lambda$updateSoftApInfo$1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uhJ_wV0LoKyWdrt9QypWJ9HU3E0(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->lambda$updateConnectedClients$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;I)V
    .registers 3

    .line 1672
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 1673
    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiInjector(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiInjector;->getWifiHandlerLocalLog()Lcom/android/wifi/x/android/util/LocalLog;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/RunnerState;-><init>(ILcom/android/wifi/x/android/util/LocalLog;)V

    .line 1676
    new-instance p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$1;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$1;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;)V

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mBatteryPluggedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private cancelTimeoutMessage(Ljava/lang/String;)V
    .registers 4

    .line 1773
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1774
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;->cancel()V

    .line 1775
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

.method private synthetic lambda$processMessageImpl$2(Landroid/net/wifi/WifiClient;Ljava/lang/Integer;)V
    .registers 4

    .line 2372
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p0

    .line 2373
    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2372
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    return-void
.end method

.method private static synthetic lambda$updateConnectedClients$0(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 1854
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$updateSoftApInfo$1(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 1945
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private onUpChanged(Z)V
    .registers 9

    .line 1993
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-ne p1, v0, :cond_b

    return-void

    .line 1997
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V

    if-eqz p1, :cond_8c

    .line 1999
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftAp is ready for use"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 2002
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmModeListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ActiveModeManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-interface {v0, v1}, Lcom/android/server/wifi/ActiveModeManager$Listener;->onStarted(Lcom/android/server/wifi/ActiveModeManager;)V

    .line 2003
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 2004
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2005
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2006
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 2007
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

    .line 2008
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v3

    .line 2007
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    goto :goto_93

    .line 2012
    :cond_8c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    .line 2014
    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    .line 2016
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDefaultShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 2018
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v6

    move v2, p1

    .line 2014
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZIJZ)V

    if-eqz p1, :cond_10b

    .line 2020
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

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    .line 2022
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 2023
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 2020
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;IZ)V

    .line 2024
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

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    .line 2026
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 2027
    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p0

    .line 2024
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApCapability(Landroid/net/wifi/SoftApCapability;IZ)V

    :cond_10b
    return-void
.end method

.method private removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V
    .registers 5

    .line 1724
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1727
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1728
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

    .line 1729
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

    .line 1728
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1734
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

.method private rescheduleBothBridgedInstancesTimeoutMessage()V
    .registers 8

    .line 1685
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1686
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 1688
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1689
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownIdleInstanceInBridgedModeTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v3

    .line 1690
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    const-wide/16 v5, 0xa

    add-long/2addr v3, v5

    .line 1695
    :cond_35
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;J)V

    goto :goto_18

    :cond_39
    return-void
.end method

.method private rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;J)V
    .registers 9

    .line 1746
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    .line 1747
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1748
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    goto :goto_2e

    .line 1749
    :cond_17
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBridgedModeOpportunisticsShutdownTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsPlugged(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    if-eqz v0, :cond_3d

    .line 1751
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4f

    .line 1752
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1753
    :goto_4f
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rescheduleTimeoutMessageIfNeeded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", timeoutEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPlugged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsPlugged(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", clientNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_94

    if-eqz v0, :cond_90

    goto :goto_94

    .line 1760
    :cond_90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage(Ljava/lang/String;J)V

    return-void

    .line 1757
    :cond_94
    :goto_94
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage(Ljava/lang/String;)V

    return-void
.end method

.method private rescheduleTimeoutMessages(Ljava/lang/String;)V
    .registers 4

    .line 1710
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 1711
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1712
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleBothBridgedInstancesTimeoutMessage()V

    goto :goto_36

    .line 1714
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1715
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownIdleInstanceInBridgedModeTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v0

    .line 1714
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;J)V

    .line 1720
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessageIfNeeded(Ljava/lang/String;J)V

    return-void
.end method

.method private scheduleTimeoutMessage(Ljava/lang/String;J)V
    .registers 7

    .line 1764
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1765
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    .line 1766
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 1765
    invoke-virtual {v0, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1767
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

    .line 1784
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1788
    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    .line 1789
    invoke-virtual {v0}, Landroid/net/wifi/SoftApCapability;->getMaxSupportedClients()I

    move-result v0

    .line 1790
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 1791
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v1

    if-lez v1, :cond_2f

    .line 1794
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1797
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v1

    .line 1798
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 1799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1800
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1801
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 1802
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiClient;

    .line 1803
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

    .line 1804
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v4

    if-eqz v4, :cond_84

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmAllowedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v4

    .line 1805
    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    goto :goto_88

    .line 1815
    :cond_84
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 1806
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

    .line 1807
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v5

    .line 1808
    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v6

    const/4 v7, 0x0

    .line 1807
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result v4

    if-nez v4, :cond_c6

    .line 1810
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4, v3, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$maddClientToPendingDisconnectionList(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiClient;I)V

    :cond_c6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_45

    :cond_ca
    if-lez v2, :cond_120

    .line 1820
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1821
    :goto_d0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_120

    if-nez v2, :cond_d9

    goto :goto_120

    .line 1823
    :cond_d9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiClient;

    .line 1824
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

    .line 1826
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v4

    .line 1827
    invoke-virtual {v1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    const/4 v6, 0x1

    .line 1826
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result v3

    if-nez v3, :cond_11d

    .line 1829
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

    .line 1847
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1848
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

    .line 1852
    :cond_34
    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1853
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1855
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

    .line 1858
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

    .line 1864
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    invoke-static {p2, v2, p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mcheckSoftApClient(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z

    move-result p2

    if-eqz p2, :cond_b0

    .line 1866
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1867
    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1868
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

    .line 1873
    :cond_b1
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_c4

    .line 1874
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "client doesn\'t exist in list, it should NOT happen"

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_c4
    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1877
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDeviceClientsTime(Lcom/android/server/wifi/SoftApManager;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    :goto_d7
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    .line 1883
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SoftApInfo;

    .line 1884
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The connected wifi stations have changed with count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
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

    .line 1884
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object p1

    if-eqz p1, :cond_14e

    .line 1889
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

    .line 1890
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 1889
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    goto :goto_15b

    .line 1892
    :cond_14e
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SoftApCallback is null. Dropping ConnectedClientsChanged event."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :goto_15b
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1897
    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    .line 1898
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v2

    .line 1899
    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v3

    .line 1900
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApInfo;

    .line 1896
    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(IIILandroid/net/wifi/SoftApInfo;)V

    .line 1902
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessages(Ljava/lang/String;)V

    return-void
.end method

.method private updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V
    .registers 15

    .line 1909
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

    .line 1912
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1913
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1914
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

    .line 1915
    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p0

    .line 1914
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    return-void

    .line 1918
    :cond_60
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1919
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_119

    if-eqz p2, :cond_118

    .line 1921
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    .line 1922
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8f

    goto :goto_90

    :cond_8f
    move v9, v2

    .line 1923
    :goto_90
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
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

    .line 1927
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v3

    .line 1926
    invoke-virtual {p2, v0, v1, v3}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    if-eqz v9, :cond_f7

    .line 1929
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1930
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    .line 1932
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    .line 1929
    invoke-virtual {p2, v0, v2, v1, p1}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(IIILandroid/net/wifi/SoftApInfo;)V

    .line 1935
    :cond_f7
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p2

    if-eqz p2, :cond_118

    .line 1936
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object p0

    .line 1937
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p0

    .line 1936
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wifi/WifiMetrics;->addSoftApInstanceDownEventInDualMode(ILandroid/net/wifi/SoftApInfo;)V

    :cond_118
    return-void

    .line 1944
    :cond_119
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    new-instance v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1947
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_153

    .line 1948
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

    .line 1952
    :cond_153
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object p2

    new-instance v1, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v1, p1}, Landroid/net/wifi/SoftApInfo;-><init>(Landroid/net/wifi/SoftApInfo;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
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

    .line 1954
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v4

    .line 1953
    invoke-virtual {p2, v1, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 1957
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v1, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "SoftApManager Soft AP Send Message Timeout on "

    if-nez p2, :cond_1d7

    .line 1959
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

    .line 1960
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

    .line 1959
    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v9

    .line 1966
    :cond_1d7
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {p2}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result p2

    if-eqz p2, :cond_221

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    .line 1967
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_221

    .line 1968
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

    .line 1969
    invoke-virtual {p2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v5, 0xd

    move-object v1, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1968
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_222

    :cond_221
    move v9, v2

    :goto_222
    if-eqz v9, :cond_22f

    .line 1978
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessages(Ljava/lang/String;)V

    .line 1982
    :cond_22f
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result p2

    if-lez p2, :cond_26e

    .line 1983
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getBandwidth()I

    move-result p2

    if-eqz p2, :cond_26e

    .line 1984
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    .line 1985
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    .line 1986
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1987
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 1984
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApChannelSwitchedEvent(Ljava/util/List;IZ)V

    .line 1988
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateUserBandPreferenceViolationMetricsIfNeeded(Landroid/net/wifi/SoftApInfo;)V

    :cond_26e
    return-void
.end method

.method private updateUserBandPreferenceViolationMetricsIfNeeded(Landroid/net/wifi/SoftApInfo;)V
    .registers 5

    .line 2113
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2114
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    .line 2116
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    .line 2117
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2119
    :cond_28
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x2

    .line 2120
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2122
    :cond_39
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x4

    .line 2123
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v0

    if-nez v0, :cond_75

    .line 2127
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel does not satisfy user band preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2127
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSoftApUserBandPreferenceUnsatisfied()V

    :cond_75
    return-void
.end method


# virtual methods
.method public enterImpl()V
    .registers 7

    .line 2033
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 2034
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 2035
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

    .line 2037
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmStateMachine(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 2038
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2039
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/coex/CoexManager;->registerCoexListener(Lcom/android/server/wifi/coex/CoexManager$CoexListener;)V

    .line 2041
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsDisableShutDownBridgedModeIdleInstanceTimerWhenPlugged(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7c

    .line 2042
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mBatteryPluggedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/WifiContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2044
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const-string v4, "status"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_78

    move v0, v2

    goto :goto_79

    :cond_78
    move v0, v1

    :goto_79
    invoke-static {v3, v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIsPlugged(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 2046
    :cond_7c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSarManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/SarManager;->setSapWifiState(I)V

    .line 2047
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Resetting connected clients on start"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2049
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDeviceClientsTime(Lcom/android/server/wifi/SoftApManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2050
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2051
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmEverReportMetricsForMaxClient(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 2052
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SoftApManager;->writeSoftApStartedEvent(I)V

    .line 2053
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mregisterWifiAlertObserver(Lcom/android/server/wifi/SoftApManager;)V

    return-void
.end method

.method public exitImpl()V
    .registers 9

    .line 2059
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$munregisterWifiAlertObserver(Lcom/android/server/wifi/SoftApManager;)V

    .line 2060
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2061
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mstopSoftAp(Lcom/android/server/wifi/SoftApManager;)V

    .line 2063
    :cond_18
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2064
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/coex/CoexManager;->unregisterCoexListener(Lcom/android/server/wifi/coex/CoexManager$CoexListener;)V

    .line 2066
    :cond_31
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e2

    .line 2067
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Resetting num stations on stop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
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

    .line 2069
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_5d

    .line 2070
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v4

    .line 2073
    invoke-virtual {v4}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v5

    .line 2074
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiClient;

    invoke-virtual {v2}, Landroid/net/wifi/WifiClient;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApInfo;

    .line 2070
    invoke-virtual {v3, v1, v1, v4, v2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(IIILandroid/net/wifi/SoftApInfo;)V

    goto :goto_5d

    .line 2077
    :cond_9f
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2078
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDeviceClientsTime(Lcom/android/server/wifi/SoftApManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2079
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_e2

    .line 2080
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

    .line 2081
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v4

    .line 2080
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 2084
    :cond_e2
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2085
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

    .line 2086
    invoke-direct {p0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage(Ljava/lang/String;)V

    goto :goto_f9

    .line 2088
    :cond_109
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2089
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsDisableShutDownBridgedModeIdleInstanceTimerWhenPlugged(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 2090
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mBatteryPluggedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2094
    :cond_129
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    .line 2096
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmDefaultShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 2098
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v7

    const/4 v3, 0x0

    .line 2094
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZIJZ)V

    .line 2099
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-static {v0, v3, v2, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 2102
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSarManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/SarManager;->setSapWifiState(I)V

    .line 2104
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmApInterfaceName(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V

    .line 2105
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 2106
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 2107
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmRole(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/ActiveModeManager$SoftApRole;)V

    .line 2108
    invoke-direct {p0, v2, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V

    return-void
.end method

.method public getMessageLogRec(I)Ljava/lang/String;
    .registers 5

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/server/wifi/RunnerState;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 2136
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public processMessageImpl(Landroid/os/Message;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2141
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eqz v2, :cond_77f

    const/16 v4, 0xc

    const/16 v5, 0xd

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eq v2, v3, :cond_761

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v2, v9, :cond_688

    const/4 v10, 0x3

    if-eq v2, v10, :cond_67e

    if-eq v2, v8, :cond_631

    const/4 v8, 0x5

    if-eq v2, v8, :cond_5aa

    const/16 v8, 0x13

    if-eq v2, v8, :cond_581

    const/16 v8, 0x65

    if-eq v2, v8, :cond_571

    const/16 v8, 0x66

    if-eq v2, v8, :cond_563

    const-wide/16 v11, 0x0

    packed-switch v2, :pswitch_data_780

    return v7

    .line 2358
    :pswitch_30  #0x10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2359
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_77f

    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCountryCode(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    .line 2360
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_77f

    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2362
    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 2361
    invoke-virtual {v2, v4, v5}, Lcom/android/server/wifi/WifiNative;->setApCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77f

    .line 2363
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update country code when Soft AP enabled from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCountryCode(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmCountryCode(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V

    goto/16 :goto_77f

    .line 2401
    :pswitch_99  #0xf
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    if-eqz v2, :cond_18c

    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v2, v9, :cond_b3

    goto/16 :goto_18c

    .line 2405
    :cond_b3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/ConcreteClientModeManager;

    .line 2406
    invoke-virtual {v1}, Lcom/android/server/wifi/ConcreteClientModeManager;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 2407
    invoke-virtual {v1}, Lcom/android/server/wifi/ConcreteClientModeManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2408
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    .line 2409
    invoke-static {v1}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v4

    .line 2410
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2411
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v1, :cond_77f

    .line 2413
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_77f

    .line 2414
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wifi connected to freq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " which is unavailable for SAP"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v6, ""

    :goto_11a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/SoftApInfo;

    .line 2418
    invoke-virtual {v7}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v8

    if-ne v8, v4, :cond_156

    .line 2420
    invoke-virtual {v7}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 2421
    iget-object v7, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v7, v7, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " instance which is running on the same band as the wifi connection on an unsafe channel"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11a

    .line 2425
    :cond_156
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11a

    .line 2433
    :cond_15e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_187

    .line 2435
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wifi/WifiNative;->isBandCombinationSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_77f

    .line 2436
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v2

    .line 2438
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2437
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 2436
    invoke-direct {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto/16 :goto_77f

    .line 2441
    :cond_187
    invoke-direct {v0, v6}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto/16 :goto_77f

    .line 2402
    :cond_18c
    :goto_18c
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignore wifi connected in single AP state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2380
    :pswitch_19b  #0xe
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)V

    .line 2381
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v1

    if-eqz v1, :cond_221

    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v1, v9, :cond_1bb

    goto :goto_221

    .line 2385
    :cond_1bb
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2386
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d0
    :goto_1d0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_214

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/SoftApInfo;

    .line 2387
    invoke-virtual {v4}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v5

    .line 2388
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d0

    .line 2389
    invoke-static {v5}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v5

    .line 2390
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v7, v7, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/android/server/wifi/util/ApConfigUtil;->removeUnavailableBands(Landroid/net/wifi/SoftApCapability;ILcom/android/server/wifi/coex/CoexManager;)I

    move-result v6

    if-eq v5, v6, :cond_1d0

    .line 2393
    invoke-virtual {v4}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1d0

    .line 2397
    :cond_214
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 2398
    invoke-static {v2, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 2397
    invoke-direct {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto/16 :goto_77f

    .line 2382
    :cond_221
    :goto_221
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignore safe channel changed in single AP state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2226
    :pswitch_230  #0xd
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2227
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v2

    if-eqz v2, :cond_287

    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v2, v9, :cond_24d

    goto :goto_287

    .line 2232
    :cond_24d
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBridgedModeOpportunisticsShutdownTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    if-nez v2, :cond_266

    .line 2233
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bridged Mode Timeout message received while timeout is disabled. Dropping."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2237
    :cond_266
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instance idle timout on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    invoke-direct {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto/16 :goto_77f

    .line 2228
    :cond_287
    :goto_287
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore Bridged Mode Timeout message received in single AP state. Dropping it from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2369
    :pswitch_2a5  #0xc
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_77f

    .line 2370
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disconnect pending list is NOT empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    new-instance v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2374
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_77f

    .line 2307
    :pswitch_2d5  #0xb
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/SoftApConfiguration;

    .line 2308
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v2

    .line 2309
    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    .line 2310
    invoke-static {v2, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->checkConfigurationChangeNeedToRestart(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v2

    if-nez v2, :cond_42d

    .line 2312
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    new-instance v4, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v5

    .line 2314
    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v14

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v16

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCountryCode(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v17

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v5

    .line 2318
    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTetheringRequest()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v18

    move-object v13, v4

    move-object v15, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;Ljava/lang/String;Landroid/net/TetheringManager$TetheringRequest;)V

    invoke-static {v2, v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/SoftApModeConfiguration;)V

    .line 2319
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuration changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v2

    .line 2321
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v4

    if-eq v2, v4, :cond_35f

    .line 2322
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Max Client changed, reset to record the metrics"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmEverReportMetricsForMaxClient(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 2325
    :cond_35f
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    .line 2326
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v4

    .line 2327
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-nez v2, :cond_392

    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 2328
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v4

    if-ne v2, v4, :cond_392

    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmBridgedModeOpportunisticsShutdownTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    .line 2331
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result v4

    if-eq v2, v4, :cond_390

    goto :goto_392

    :cond_390
    move v2, v7

    goto :goto_393

    :cond_392
    :goto_392
    move v2, v3

    .line 2332
    :goto_393
    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4, v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateChangeableConfiguration(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;)V

    .line 2333
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateClientConnection()V

    if-eqz v2, :cond_404

    .line 2335
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2336
    invoke-direct {v0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage(Ljava/lang/String;)V

    goto :goto_3ad

    .line 2338
    :cond_3bd
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleTimeoutMessages(Ljava/lang/String;)V

    .line 2340
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_404

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApInfo;

    .line 2341
    new-instance v4, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v4, v2}, Landroid/net/wifi/SoftApInfo;-><init>(Landroid/net/wifi/SoftApInfo;)V

    .line 2342
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    if-eqz v2, :cond_3fc

    .line 2343
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v5

    goto :goto_3fd

    :cond_3fc
    move-wide v5, v11

    .line 2342
    :goto_3fd
    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/SoftApInfo;->setAutoShutdownTimeoutMillis(J)V

    .line 2344
    invoke-direct {v0, v4, v7}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V

    goto :goto_3d8

    .line 2347
    :cond_404
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v4

    .line 2349
    invoke-virtual {v4}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v4

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 2350
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    .line 2347
    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;IZ)V

    goto/16 :goto_77f

    .line 2352
    :cond_42d
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore the config: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " update since it requires restart"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2297
    :pswitch_450  #0xa
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/SoftApCapability;

    .line 2298
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    new-instance v4, Landroid/net/wifi/SoftApCapability;

    invoke-direct {v4, v1}, Landroid/net/wifi/SoftApCapability;-><init>(Landroid/net/wifi/SoftApCapability;)V

    invoke-static {v2, v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApCapability;)V

    .line 2299
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v4

    .line 2301
    invoke-virtual {v4}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 2302
    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v5

    .line 2299
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApCapability(Landroid/net/wifi/SoftApCapability;IZ)V

    .line 2303
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateClientConnection()V

    .line 2304
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)V

    goto/16 :goto_77f

    .line 2156
    :pswitch_493  #0x9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v1, Landroid/net/wifi/SoftApInfo;

    if-nez v2, :cond_4a8

    .line 2157
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid type returned for CMD_AP_INFO_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2161
    :cond_4a8
    check-cast v1, Landroid/net/wifi/SoftApInfo;

    .line 2162
    invoke-virtual {v1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v2

    if-gez v2, :cond_4d2

    .line 2163
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ap channel frequency: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    invoke-virtual {v1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2163
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2168
    :cond_4d2
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    if-eqz v2, :cond_4e4

    .line 2169
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v11

    .line 2168
    :cond_4e4
    invoke-virtual {v1, v11, v12}, Landroid/net/wifi/SoftApInfo;->setAutoShutdownTimeoutMillis(J)V

    .line 2170
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateSoftApInfo(Landroid/net/wifi/SoftApInfo;Z)V

    goto/16 :goto_77f

    .line 2241
    :pswitch_4ec  #0x7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2242
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interface: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " was cleanly destroyed."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_52a

    .line 2244
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "softAp interface is null - Drop interface destroyed message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2248
    :cond_52a
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_547

    .line 2249
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drop stale interface destroyed message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2252
    :cond_547
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v6, v5, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 2254
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v3}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 2255
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v10}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mwriteSoftApStoppedEvent(Lcom/android/server/wifi/SoftApManager;I)V

    .line 2256
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    goto/16 :goto_77f

    .line 2221
    :cond_563
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v6, v5, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 2223
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    goto/16 :goto_77f

    .line 2455
    :cond_571
    const-string v1, "SoftApManager"

    const-string v2, "Reset softAp data limitation value."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mregisterWifiAlertObserver(Lcom/android/server/wifi/SoftApManager;)V

    goto/16 :goto_77f

    .line 2446
    :cond_581
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_586

    move v7, v3

    .line 2447
    :cond_586
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIsPlugged(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    if-eq v1, v7, :cond_77f

    .line 2448
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fputmIsPlugged(Lcom/android/server/wifi/SoftApManager;Z)V

    .line 2449
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v9, :cond_77f

    .line 2450
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->rescheduleBothBridgedInstancesTimeoutMessage()V

    goto/16 :goto_77f

    .line 2190
    :cond_5aa
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    if-nez v1, :cond_5c3

    .line 2191
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timeout message received while timeout is disabled. Dropping."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2195
    :cond_5c3
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5e0

    .line 2196
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timeout message received but has clients. Dropping."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2200
    :cond_5e0
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmSoftApNotifier(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApNotifier;->showSoftApShutdownTimeoutExpiredNotification()V

    .line 2201
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Timeout message received. Stopping soft AP."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v6, v5, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 2204
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v8}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mwriteSoftApStoppedEvent(Lcom/android/server/wifi/SoftApManager;I)V

    .line 2205
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    .line 2208
    sget-boolean v1, Lcom/zte/wifi/ZteWifiUtils;->ZTE_FEATURE_WIFI_MINDSYNC:Z

    if-eqz v1, :cond_77f

    .line 2209
    const-string v1, "WifiMindSync"

    const-string v2, "HOTSPOT_DISABLED TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2211
    const-string v2, "extraParam"

    const-string v4, "timeout"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;

    move-result-object v0

    const-string v2, "hotspot_disabled"

    invoke-static {v0, v2, v1, v3}, Lcom/zte/wifi/ZteWifiUtils;->sendHotspotMindSyncEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_77f

    .line 2143
    :cond_631
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v2, Landroid/net/wifi/WifiClient;

    if-nez v4, :cond_646

    .line 2144
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid type returned for CMD_ASSOCIATED_STATIONS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77f

    .line 2148
    :cond_646
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_64b

    move v7, v3

    .line 2149
    :cond_64b
    check-cast v2, Landroid/net/wifi/WifiClient;

    .line 2150
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_ASSOCIATED_STATIONS_CHANGED, Client: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    invoke-virtual {v2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2150
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    invoke-direct {v0, v2, v7}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateConnectedClients(Landroid/net/wifi/WifiClient;Z)V

    goto/16 :goto_77f

    .line 2173
    :cond_67e
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_683

    move v7, v3

    .line 2174
    :cond_683
    invoke-direct {v0, v7}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->onUpChanged(Z)V

    goto/16 :goto_77f

    .line 2259
    :cond_688
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2260
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v2

    if-eqz v2, :cond_723

    .line 2261
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v4

    .line 2262
    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiNative;->getBridgedApInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_6db

    .line 2264
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive instanceFailure on "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    invoke-direct {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    .line 2267
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v3, :cond_723

    goto/16 :goto_77f

    .line 2270
    :cond_6db
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v3, :cond_723

    if-eqz v2, :cond_723

    .line 2271
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_723

    .line 2272
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_723

    .line 2276
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_713
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2277
    invoke-direct {v0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;)V

    goto :goto_713

    .line 2283
    :cond_723
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hostapd failure, stop and report failure"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v8}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mwriteSoftApStoppedEvent(Lcom/android/server/wifi/SoftApManager;I)V

    .line 2287
    :pswitch_737  #0x8
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "interface error, stop and report failure"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v2, 0xe

    invoke-static {v1, v2, v5, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 2291
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v6, v2, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 2293
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v9}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mwriteSoftApStoppedEvent(Lcom/android/server/wifi/SoftApManager;I)V

    .line 2294
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    goto :goto_77f

    .line 2177
    :cond_761
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$fgetmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    if-eqz v1, :cond_773

    .line 2178
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v6, v5, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    goto :goto_77a

    .line 2181
    :cond_773
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v6, v4, v7}, Lcom/android/server/wifi/SoftApManager;->-$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V

    .line 2184
    :goto_77a
    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    :cond_77f
    :goto_77f
    return v3

    :pswitch_data_780
    .packed-switch 0x7
        :pswitch_4ec  #00000007
        :pswitch_737  #00000008
        :pswitch_493  #00000009
        :pswitch_450  #0000000a
        :pswitch_2d5  #0000000b
        :pswitch_2a5  #0000000c
        :pswitch_230  #0000000d
        :pswitch_19b  #0000000e
        :pswitch_99  #0000000f
        :pswitch_30  #00000010
    .end packed-switch
.end method
