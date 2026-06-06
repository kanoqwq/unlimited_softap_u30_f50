.class public Lcom/android/server/wifi/SoftApManager;
.super Ljava/lang/Object;
.source "SoftApManager.java"

# interfaces
.implements Lcom/android/server/wifi/ActiveModeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    }
.end annotation


# static fields
.field private static final FORMATTER:Ljava/text/SimpleDateFormat;

.field static final SOFT_AP_PENDING_DISCONNECTION_CHECK_DELAY_MS:J = 0x3e8L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "SoftApManager Soft AP Send Message Timeout on "
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SoftApManager"

.field private static mSoftApInterfaceName:Ljava/lang/String;


# instance fields
.field private final MB_IN_BYTES:J

.field private final mActiveModeWarden:Lcom/android/server/wifi/ActiveModeWarden;

.field private mAllowedClientList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mApInterfaceName:Ljava/lang/String;

.field private final mBatteryManager:Landroid/os/BatteryManager;

.field private mBlockedClientList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

.field private final mCmiMonitor:Lcom/android/server/wifi/ClientModeImplMonitor;

.field private final mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

.field private final mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

.field private mConnectedClientWithApInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/net/wifi/WifiContext;

.field private mCountryCode:Ljava/lang/String;

.field private mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

.field private mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

.field private mCurrentSoftApInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

.field private mDefaultShutdownTimeoutMillis:J

.field private mDeviceClientsTime:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEverReportMetricsForMaxClient:Z

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mId:J

.field private mIfaceIsDestroyed:Z

.field private mIfaceIsUp:Z

.field private mIsCharging:Z

.field private final mIsDisableShutDownBridgedModeIdleInstanceTimerWhenCharging:Z

.field private mIsUnsetBssid:Z

.field private final mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/ActiveModeManager$Listener<",
            "Lcom/android/server/wifi/SoftApManager;",
            ">;"
        }
    .end annotation
.end field

.field private mNwService:Landroid/os/INetworkManagementService;

.field private final mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

.field mPendingDisconnectClients:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/wifi/WifiClient;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestorWs:Landroid/os/WorkSource;

.field private mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

.field private mSafeChannelFrequencyList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSarManager:Lcom/android/server/wifi/SarManager;

.field private final mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

.field private final mSoftApHalCallback:Lcom/android/server/wifi/WifiNative$SoftApHalCallback;

.field private final mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

.field public mSoftApTimeoutMessageMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimestamp:Ljava/lang/String;

.field private final mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

.field private mTimeoutEnabled:Z

.field private mVerboseLoggingEnabled:Z

.field private final mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiTetherQuota:J

.field private mWifiTetheringLimitAlertName:Ljava/lang/String;

.field private final mWifiTetheringQuotaObserver:Landroid/net/INetworkManagementEventObserver;

.field private mWifiTetheringWithLimitStarted:Z

.field private mWlanTetheringName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveModeWarden(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ActiveModeWarden;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mActiveModeWarden:Lcom/android/server/wifi/ActiveModeWarden;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryManager(Lcom/android/server/wifi/SoftApManager;)Landroid/os/BatteryManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mBatteryManager:Landroid/os/BatteryManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlockedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBridgedModeOpportunisticsShutdownTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCoexListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager$CoexListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mConnectedClientWithApInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountryCode(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceClientsTime(Lcom/android/server/wifi/SoftApManager;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsDestroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCharging(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIsCharging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDisableShutDownBridgedModeIdleInstanceTimerWhenCharging(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIsDisableShutDownBridgedModeIdleInstanceTimerWhenCharging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ActiveModeManager$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestorWs(Lcom/android/server/wifi/SoftApManager;)Landroid/os/WorkSource;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSarManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApNotifier(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApNotifier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMachine(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTetheringLimitAlertName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmApInterfaceName(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCountryCode(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApCapability;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEverReportMetricsForMaxClient(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsDestroyed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCharging(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIsCharging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestorWs(Lcom/android/server/wifi/SoftApManager;Landroid/os/WorkSource;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRole(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/ActiveModeManager$SoftApRole;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddClientToPendingDisconnectionList(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiClient;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSoftApClient(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->checkSoftApClient(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mconfigureInternalConfiguration(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->configureInternalConfiguration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->getHighestFrequencyInstance(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetShutdownIdleInstanceInBridgedModeTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getShutdownIdleInstanceInBridgedModeTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getShutdownTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgeRequired()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misBridgedMode(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monL2Connected(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/ConcreteClientModeManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->onL2Connected(Lcom/android/server/wifi/ConcreteClientModeManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterWifiAlertObserver(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->registerWifiAlertObserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSoftAp(Lcom/android/server/wifi/SoftApManager;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->startSoftAp()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopSoftAp(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterWifiAlertObserver(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->unregisterWifiAlertObserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateChangeableConfiguration(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->updateChangeableConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->updateSafeChannelFrequencyList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmSoftApInterfaceName(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/server/wifi/SoftApManager;->mSoftApInterfaceName:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 183
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/SoftApManager;->FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiContext;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/coex/CoexManager;Landroid/os/BatteryManager;Ljava/lang/String;Lcom/android/server/wifi/ActiveModeManager$Listener;Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/server/wifi/SoftApModeConfiguration;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/SarManager;Lcom/android/server/wifi/WifiDiagnostics;Lcom/android/server/wifi/SoftApNotifier;Lcom/android/server/wifi/ClientModeImplMonitor;Lcom/android/server/wifi/ActiveModeWarden;JLandroid/os/WorkSource;Lcom/android/server/wifi/ActiveModeManager$SoftApRole;Z)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiContext;",
            "Landroid/os/Looper;",
            "Lcom/android/server/wifi/FrameworkFacade;",
            "Lcom/android/server/wifi/WifiNative;",
            "Lcom/android/server/wifi/coex/CoexManager;",
            "Landroid/os/BatteryManager;",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/ActiveModeManager$Listener<",
            "Lcom/android/server/wifi/SoftApManager;",
            ">;",
            "Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;",
            "Lcom/android/server/wifi/WifiApConfigStore;",
            "Lcom/android/server/wifi/SoftApModeConfiguration;",
            "Lcom/android/server/wifi/WifiMetrics;",
            "Lcom/android/server/wifi/SarManager;",
            "Lcom/android/server/wifi/WifiDiagnostics;",
            "Lcom/android/server/wifi/SoftApNotifier;",
            "Lcom/android/server/wifi/ClientModeImplMonitor;",
            "Lcom/android/server/wifi/ActiveModeWarden;",
            "J",
            "Landroid/os/WorkSource;",
            "Lcom/android/server/wifi/ActiveModeManager$SoftApRole;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, p16

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 137
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mVerboseLoggingEnabled:Z

    .line 160
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    .line 166
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mConnectedClientWithApInfoMap:Ljava/util/Map;

    .line 167
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    .line 170
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 171
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    const/4 v5, 0x0

    .line 187
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    .line 189
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    .line 192
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    .line 194
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    .line 197
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 200
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    .line 203
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mIsCharging:Z

    .line 219
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    const-wide/32 v6, 0x100000

    .line 223
    iput-wide v6, v0, Lcom/android/server/wifi/SoftApManager;->MB_IN_BYTES:J

    const-string v6, ""

    .line 226
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    .line 230
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringWithLimitStarted:Z

    .line 231
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    .line 232
    new-instance v6, Lcom/android/server/wifi/SoftApManager$1;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/SoftApManager$1;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringQuotaObserver:Landroid/net/INetworkManagementEventObserver;

    .line 261
    new-instance v6, Lcom/android/server/wifi/SoftApManager$2;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/SoftApManager$2;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApHalCallback:Lcom/android/server/wifi/WifiNative$SoftApHalCallback;

    .line 397
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    move-object v6, p3

    .line 398
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object/from16 v6, p15

    .line 399
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

    move-object v6, p4

    .line 400
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object v6, p5

    .line 401
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    move-object v6, p6

    .line 402
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 403
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 404
    new-instance v5, Lcom/android/server/wifi/SoftApManager$3;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/SoftApManager$3;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    goto :goto_8c

    .line 415
    :cond_8a
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    :goto_8c
    move-object/from16 v5, p7

    .line 417
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    move-object/from16 v5, p8

    .line 418
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    move-object/from16 v5, p9

    .line 419
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    .line 420
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 421
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 422
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getCapability()Landroid/net/wifi/SoftApCapability;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 424
    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v5, :cond_b0

    .line 425
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 429
    :cond_b0
    new-instance v5, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v8, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)V

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 431
    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v5, :cond_e0

    .line 432
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v5

    if-nez v5, :cond_cb

    const/4 v5, 0x1

    goto :goto_cc

    :cond_cb
    move v5, v4

    :goto_cc
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mIsUnsetBssid:Z

    .line 433
    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v6, 0x8

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v5

    if-eqz v5, :cond_e0

    .line 435
    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2, p1, v5}, Lcom/android/server/wifi/WifiApConfigStore;->randomizeBssidIfUnset(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 439
    :cond_e0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "softApConfig :band : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ssid : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 440
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Bssid : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 441
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " HiddenSsid : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 442
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " SecurityType : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 443
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SoftApManager"

    .line 439
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p12

    .line 445
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    move-object/from16 v2, p13

    .line 446
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    move-object/from16 v2, p14

    .line 447
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    .line 448
    new-instance v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-object v5, p2

    invoke-direct {v2, p0, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const-string v5, "network_management"

    .line 449
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 450
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    .line 451
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->configureInternalConfiguration()V

    .line 452
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    .line 454
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

    .line 458
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f02001a

    .line 459
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wifi/SoftApManager;->mIsDisableShutDownBridgedModeIdleInstanceTimerWhenCharging:Z

    .line 461
    iput-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mCmiMonitor:Lcom/android/server/wifi/ClientModeImplMonitor;

    move-object/from16 v1, p17

    .line 462
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mActiveModeWarden:Lcom/android/server/wifi/ActiveModeWarden;

    .line 463
    new-instance v1, Lcom/android/server/wifi/SoftApManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/SoftApManager$4;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/ClientModeImplMonitor;->registerListener(Lcom/android/server/wifi/ClientModeImplListener;)V

    .line 469
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->updateSafeChannelFrequencyList()V

    move-wide/from16 v5, p18

    .line 470
    iput-wide v5, v0, Lcom/android/server/wifi/SoftApManager;->mId:J

    move-object/from16 v1, p21

    .line 471
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move/from16 v1, p22

    .line 472
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SoftApManager;->enableVerboseLogging(Z)V

    move-object/from16 v0, p20

    .line 473
    invoke-virtual {v2, v4, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V
    .registers 6

    .line 868
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to disconnect client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", add it into pending list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 873
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private checkSoftApClient(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z
    .registers 8

    .line 887
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 892
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    .line 893
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force disconnect for client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "in blocked list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 895
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 894
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_47

    .line 897
    invoke-direct {p0, p2, v2}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    :cond_47
    return v2

    .line 902
    :cond_48
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 903
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 904
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 906
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force disconnect for unauthorized client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 908
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 907
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_88

    .line 910
    invoke-direct {p0, p2, v2}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    :cond_88
    return v2

    .line 915
    :cond_89
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApCapability;->getMaxSupportedClients()I

    move-result v0

    .line 916
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v3

    if-lez v3, :cond_9d

    .line 917
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 920
    :cond_9d
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_e1

    .line 921
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No more room for new client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 923
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v4

    .line 922
    invoke-virtual {p1, v3, v4, v1}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_d0

    .line 925
    invoke-direct {p0, p2, v1}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    .line 928
    :cond_d0
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 931
    iget-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    if-nez p1, :cond_e0

    .line 932
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {p1, v0}, Lcom/android/server/wifi/WifiMetrics;->noteSoftApClientBlocked(I)V

    .line 933
    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    :cond_e0
    return v2

    :cond_e1
    return v1
.end method

.method private configureInternalConfiguration()V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_5

    return-void

    .line 337
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    .line 338
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 339
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 340
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 341
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    return-void
.end method

.method private disconnectAllClients()V
    .registers 6

    .line 851
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiClient;

    .line 852
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    goto :goto_8

    :cond_21
    return-void
.end method

.method private getConnectedClientList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;"
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 880
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mConnectedClientWithApInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 881
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_1f
    return-object v0
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .registers 1

    .line 668
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getCurrentState()Lcom/android/wifi/x/com/android/internal/util/IState;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 671
    invoke-interface {p0}, Lcom/android/wifi/x/com/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "StateMachine not active"

    return-object p0
.end method

.method private getHighestFrequencyInstance(Ljava/util/Set;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 528
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 529
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApInfo;

    if-nez v3, :cond_28

    .line 531
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid instance name, no way to get the frequency"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 534
    :cond_28
    invoke-virtual {v3}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v3

    if-le v3, v0, :cond_6

    move-object v1, v2

    move v0, v3

    goto :goto_6

    :cond_31
    return-object v1
.end method

.method private getShutdownIdleInstanceInBridgedModeTimeoutMillis()J
    .registers 5

    .line 520
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 521
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBridgedModeOpportunisticShutdownTimeoutMillisInternal()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    goto :goto_f

    .line 522
    :cond_d
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

    :goto_f
    return-wide v0
.end method

.method private getShutdownTimeoutMillis()J
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    goto :goto_f

    .line 516
    :cond_d
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    :goto_f
    return-wide v0
.end method

.method public static getSoftApInterfaceName()Ljava/lang/String;
    .registers 1

    .line 941
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->mSoftApInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method private getTag()Ljava/lang/String;
    .registers 3

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    if-nez p0, :cond_10

    const-string p0, "unknown"

    :cond_10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isBridgeRequired()Z
    .registers 2

    .line 511
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->isOweTransition()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private isBridgedMode()Z
    .registers 3

    .line 506
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_13

    .line 507
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object p0

    array-length p0, p0

    if-le p0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private isOweTransition()Z
    .registers 2

    .line 500
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_13

    .line 501
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private onL2Connected(Lcom/android/server/wifi/ConcreteClientModeManager;)V
    .registers 4

    .line 661
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onL2Connected called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 663
    invoke-virtual {p1}, Lcom/android/server/wifi/ConcreteClientModeManager;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    const/16 v0, 0xf

    .line 662
    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized registerWifiAlertObserver()V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "SoftApManager"

    .line 1927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterWifiAlertObserver mWifiTetheringLimitAlertName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_19c

    const/4 v0, 0x0

    const/16 v1, 0x25

    const/4 v2, 0x1

    .line 1933
    :try_start_1d
    invoke-static {v1}, Lcom/android/server/wifi/WifiAdvancedConfigStore;->getAdvancedConfiguration(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1934
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "SoftApManager"

    .line 1935
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The userSetValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v2, :cond_66

    const/16 v1, 0x27

    .line 1937
    invoke-static {v1}, Lcom/android/server/wifi/WifiAdvancedConfigStore;->getAdvancedConfiguration(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1938
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "SoftApManager"

    .line 1939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Used the  CUSTOMIZED_VALUE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_66
    const/16 v1, 0x26

    .line 1941
    invoke-static {v1}, Lcom/android/server/wifi/WifiAdvancedConfigStore;->getAdvancedConfiguration(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1942
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "SoftApManager"

    .line 1943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Used the FIXED_VALUE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_8a} :catch_91
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_8a} :catch_8e
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_8a} :catch_8b
    .catchall {:try_start_1d .. :try_end_8a} :catchall_19c

    goto :goto_a8

    :catch_8b
    move-exception v0

    goto/16 :goto_18b

    :catch_8e
    move-exception v0

    goto/16 :goto_193

    :catch_91
    move-exception v1

    :try_start_92
    const-string v3, "SoftApManager"

    .line 1946
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t obtain the limit value! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a8
    const-string v1, "SoftApManager"

    .line 1948
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerWifiAlertObserver, Registering mWifiTetheringQuotaObserver, limitInMB is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v0, :cond_c5

    .line 1952
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->unregisterWifiAlertObserver()V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_c3} :catch_8e
    .catch Ljava/lang/IllegalStateException; {:try_start_92 .. :try_end_c3} :catch_8b
    .catchall {:try_start_92 .. :try_end_c3} :catchall_19c

    .line 1953
    monitor-exit p0

    return-void

    .line 1955
    :cond_c5
    :try_start_c5
    iget-wide v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetherQuota:J

    .line 1959
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;

    int-to-long v0, v0

    const-wide/32 v5, 0x100000

    mul-long/2addr v0, v5

    .line 1960
    iput-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetherQuota:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_17a

    const-string v0, "SoftApManager"

    .line 1963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last set WifiTetherQuota is:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->getWifiTetheringQuota(Ljava/lang/String;)J

    move-result-wide v0

    const-string v5, "SoftApManager"

    .line 1965
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remainQuota is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-wide v5, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetherQuota:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_12b

    sub-long/2addr v5, v3

    add-long/2addr v0, v5

    const-string v3, "SoftApManager"

    .line 1968
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update new larger quota, acture value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17a

    :cond_12b
    cmp-long v7, v3, v5

    if-lez v7, :cond_171

    sub-long v7, v3, v0

    cmp-long v7, v7, v5

    if-lez v7, :cond_158

    const-string v0, "SoftApManager"

    const-string v1, "update new smaller quota, already exceed, stopSoftAp"

    .line 1973
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    .line 1977
    sget-boolean v0, Lcom/zte/wifi/ZteWifiUtils;->ZTE_FEATURE_WIFI_MINDSYNC:Z

    if-eqz v0, :cond_156

    .line 1978
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extraParam"

    const-string v3, "data_limitation_reached"

    .line 1979
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    const-string v3, "hotspot_disabled"

    invoke-static {v1, v3, v0, v2}, Lcom/zte/wifi/ZteWifiUtils;->sendHotspotMindSyncEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_156
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_156} :catch_8e
    .catch Ljava/lang/IllegalStateException; {:try_start_c5 .. :try_end_156} :catch_8b
    .catchall {:try_start_c5 .. :try_end_156} :catchall_19c

    .line 1987
    :cond_156
    monitor-exit p0

    return-void

    :cond_158
    sub-long/2addr v5, v3

    add-long/2addr v0, v5

    :try_start_15a
    const-string v3, "SoftApManager"

    .line 1990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update new smaller quota, acture value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17a

    :cond_171
    const-string v0, "SoftApManager"

    const-string v1, "update same quota, ignore!!"

    .line 1993
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_178
    .catch Landroid/os/RemoteException; {:try_start_15a .. :try_end_178} :catch_8e
    .catch Ljava/lang/IllegalStateException; {:try_start_15a .. :try_end_178} :catch_8b
    .catchall {:try_start_15a .. :try_end_178} :catchall_19c

    .line 1994
    monitor-exit p0

    return-void

    .line 1999
    :cond_17a
    :goto_17a
    :try_start_17a
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, v1}, Landroid/os/INetworkManagementService;->setWifiTetheringQuota(Ljava/lang/String;J)V

    .line 2000
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringQuotaObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 2001
    iput-boolean v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringWithLimitStarted:Z
    :try_end_18a
    .catch Landroid/os/RemoteException; {:try_start_17a .. :try_end_18a} :catch_8e
    .catch Ljava/lang/IllegalStateException; {:try_start_17a .. :try_end_18a} :catch_8b
    .catchall {:try_start_17a .. :try_end_18a} :catchall_19c

    goto :goto_19a

    :goto_18b
    :try_start_18b
    const-string v1, "SoftApManager"

    const-string v2, "Error registering observer:"

    .line 2006
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19a

    :goto_193
    const-string v1, "SoftApManager"

    const-string v2, "Error registering observer:"

    .line 2004
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19a
    .catchall {:try_start_18b .. :try_end_19a} :catchall_19c

    .line 2008
    :goto_19a
    monitor-exit p0

    return-void

    :catchall_19c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCountryCode()I
    .registers 9

    .line 762
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    .line 763
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_30

    if-eq v0, v4, :cond_17

    if-ne v0, v2, :cond_16

    goto :goto_17

    :cond_16
    return v3

    .line 766
    :cond_17
    :goto_17
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid country code, required for setting up soft ap in band:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 773
    :cond_30
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 774
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 773
    invoke-virtual {v1, v5, v6}, Lcom/android/server/wifi/WifiNative;->setApCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    if-eq v0, v4, :cond_46

    if-ne v0, v2, :cond_5f

    .line 778
    :cond_46
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set country code, required for setting up soft ap in band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5f
    return v3
.end method

.method private setMacAddress()I
    .registers 4

    .line 720
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 725
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->resetApMacToFactoryMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 726
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to reset to factory MAC address; continuing with current MAC"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 730
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->isApSetMacAddressSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 731
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiNative;->setApMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 732
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to set explicitly requested MAC address"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 735
    :cond_3b
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIsUnsetBssid:Z

    if-nez p0, :cond_41

    const/4 p0, 0x3

    return p0

    :cond_41
    :goto_41
    const/4 p0, 0x0

    return p0
.end method

.method private startSoftAp()I
    .registers 9

    .line 793
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSoftAp: band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " iface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " country "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->setMacAddress()I

    move-result v0

    if-eqz v0, :cond_39

    return v0

    .line 801
    :cond_39
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->setCountryCode()I

    move-result v0

    if-eqz v0, :cond_40

    return v0

    .line 807
    :cond_40
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 810
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    .line 811
    invoke-virtual {v3}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    move-object v5, v0

    .line 810
    invoke-static/range {v1 .. v7}, Lcom/android/server/wifi/util/ApConfigUtil;->updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/coex/CoexManager;Landroid/content/res/Resources;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration$Builder;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)I

    move-result v1

    if-eqz v1, :cond_68

    .line 814
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to update AP band and channel"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 818
    :cond_68
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    .line 820
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 821
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoftAP is a hidden network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_7d
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-static {v1, v2}, Lcom/android/server/wifi/util/ApConfigUtil;->checkSupportAllConfiguration(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)Z

    move-result v1

    if-nez v1, :cond_a3

    .line 826
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Configuration detect! config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    .line 831
    :cond_a3
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 832
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 833
    invoke-virtual {v3}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_b6

    goto :goto_b7

    :cond_b6
    move v5, v4

    :goto_b7
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApHalCallback:Lcom/android/server/wifi/WifiNative$SoftApHalCallback;

    .line 831
    invoke-virtual {v1, v2, v0, v5, v3}, Lcom/android/server/wifi/WifiNative;->startSoftAp(Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration;ZLcom/android/server/wifi/WifiNative$SoftApHalCallback;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 835
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Soft AP start failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 839
    :cond_ca
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->startLogging(Ljava/lang/String;)V

    .line 840
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimestamp:Ljava/lang/String;

    .line 841
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Soft AP is started "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private stopSoftAp()V
    .registers 3

    .line 861
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->disconnectAllClients()V

    .line 862
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->stopLogging(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 864
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Soft AP is stopped"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterWifiAlertObserver()V
    .registers 4

    const-string v0, "SoftApManager"

    const-string v1, "UnregisterWifiAlertObserver enter."

    .line 2012
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringWithLimitStarted:Z

    if-eqz v1, :cond_40

    .line 2015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterWifiAlertObserver, Unregistering mWifiTetheringQuotaObserver, mWlanTetheringName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringQuotaObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 2017
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->removeWifiTetheringQuota(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 2018
    iput-wide v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetherQuota:J

    const/4 v1, 0x0

    .line 2019
    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringWithLimitStarted:Z

    const/4 v1, 0x0

    .line 2020
    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p0

    const-string v1, "Error unregistering observer:"

    .line 2023
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_40
    :goto_40
    return-void
.end method

.method private updateApState(III)V
    .registers 7

    .line 685
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onStateChanged(II)V

    .line 686
    invoke-static {}, Lcom/android/server/wifi/WifiServiceExterned;->getInstance()Lcom/android/server/wifi/WifiServiceExterned;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiServiceExterned;->setSoftApState(I)V

    .line 689
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 690
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "wifi_state"

    .line 691
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previous_wifi_state"

    .line 692
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xe

    if-ne p1, v1, :cond_70

    const-string p1, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    .line 695
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0xb

    const-string v2, "enable"

    if-eq p2, v1, :cond_49

    const/16 v1, 0xc

    if-ne p2, v1, :cond_3b

    goto :goto_49

    :cond_3b
    const/16 v1, 0xd

    if-eq p2, v1, :cond_43

    const/16 v1, 0xa

    if-ne p2, v1, :cond_4e

    :cond_43
    const-string p2, "false"

    .line 702
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    :cond_49
    :goto_49
    const-string p2, "true"

    .line 699
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_4e
    :goto_4e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "reason"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    sget-boolean p2, Lcom/zte/wifi/ZteWifiUtils;->ZTE_FEATURE_WIFI_MINDSYNC:Z

    if-eqz p2, :cond_70

    .line 706
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    const/4 p3, 0x1

    const-string v1, "hotspot_on_off_failed"

    invoke-static {p2, v1, p1, p3}, Lcom/zte/wifi/ZteWifiUtils;->sendHotspotMindSyncEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 713
    :cond_70
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    const-string p2, "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {p1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p1

    const-string p2, "android.net.wifi.extra.WIFI_AP_MODE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/wifi/WifiContext;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private updateChangeableConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 6

    .line 345
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v0, :cond_65

    if-nez p1, :cond_7

    goto :goto_65

    .line 351
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xcb68ac8

    .line 355
    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1c

    const-wide/16 v0, -0x1

    .line 359
    :cond_1c
    new-instance v2, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 361
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 362
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBlockedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 363
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setClientControlByUserEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 364
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 365
    invoke-virtual {v2, v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setShutdownTimeoutMillis(J)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 367
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 369
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result p1

    .line 368
    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBridgedModeOpportunisticShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 371
    :cond_5c
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 372
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->configureInternalConfiguration()V

    :cond_65
    :goto_65
    return-void
.end method

.method private updateSafeChannelFrequencyList()V
    .registers 15

    .line 308
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_c

    goto/16 :goto_8a

    .line 311
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 312
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_4d

    aget v4, v0, v3

    .line 313
    sget-object v5, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v6, v5

    move v7, v2

    :goto_22
    if-ge v7, v6, :cond_4a

    aget v8, v5, v7

    and-int v9, v8, v4

    if-nez v9, :cond_2b

    goto :goto_47

    .line 317
    :cond_2b
    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v9, v8}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v9

    array-length v10, v9

    move v11, v2

    :goto_33
    if-ge v11, v10, :cond_47

    aget v12, v9, v11

    .line 318
    iget-object v13, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    .line 319
    invoke-static {v12, v8}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 318
    invoke-interface {v13, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    :cond_47
    :goto_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 323
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/coex/CoexManager;->getCoexRestrictions()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_62

    .line 324
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    .line 325
    invoke-static {v2}, Lcom/android/server/wifi/util/ApConfigUtil;->getUnsafeChannelFreqsFromCoex(Lcom/android/server/wifi/coex/CoexManager;)Ljava/util/Set;

    move-result-object v2

    .line 324
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 327
    :cond_62
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_8a

    .line 329
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SafeChannelFrequencyList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of SoftApManager id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/SoftApManager;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current StateMachine mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApInterfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIfaceIsUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoftApCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOriginalModeConfiguration.targetMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 626
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApCapability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectedClientList().size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBridgedModeOpportunisticsShutdownTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApInfoMap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSafeChannelFrequencyList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/SoftApManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wifi/SoftApManager$$ExternalSyntheticLambda0;-><init>()V

    .line 636
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 637
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableVerboseLogging(Z)V
    .registers 2

    .line 643
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getBridgedApDowngradeIfaceInstanceForRemoval()Ljava/lang/String;
    .registers 3

    .line 607
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 610
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager;->getHighestFrequencyInstance(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()J
    .registers 3

    .line 483
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mId:J

    return-wide v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 1

    .line 567
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public getLastRoleChangeSinceBootMs()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPreviousRole()Lcom/android/server/wifi/ActiveModeManager$ClientRole;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPreviousRole()Lcom/android/server/wifi/ActiveModeManager$Role;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getPreviousRole()Lcom/android/server/wifi/ActiveModeManager$ClientRole;

    move-result-object p0

    return-object p0
.end method

.method public getRequestorWs()Landroid/os/WorkSource;
    .registers 1

    .line 572
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    return-object p0
.end method

.method public bridge synthetic getRole()Lcom/android/server/wifi/ActiveModeManager$Role;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move-result-object p0

    return-object p0
.end method

.method public getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;
    .registers 1

    .line 545
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    return-object p0
.end method

.method public getSTAListWithTime()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    .line 2031
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object v1

    .line 2032
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_56

    .line 2033
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiClient;

    .line 2034
    invoke-virtual {v2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2035
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 2036
    :try_start_27
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2039
    :cond_51
    monitor-exit v3

    goto :goto_10

    :catchall_53
    move-exception p0

    monitor-exit v3
    :try_end_55
    .catchall {:try_start_27 .. :try_end_55} :catchall_53

    throw p0

    :cond_56
    return-object v0
.end method

.method public getSoftApModeConfiguration()Lcom/android/server/wifi/SoftApModeConfiguration;
    .registers 4

    .line 598
    new-instance v0, Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)V

    return-object v0
.end method

.method public setRole(Lcom/android/server/wifi/ActiveModeManager$SoftApRole;)V
    .registers 3

    .line 561
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkState(Z)V

    .line 562
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    return-void
.end method

.method public stop()V
    .registers 4

    .line 495
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " currentstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApManager{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateCapability(Landroid/net/wifi/SoftApCapability;)V
    .registers 3

    .line 581
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 3

    .line 591
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCountryCode(Ljava/lang/String;)Z
    .registers 5

    .line 752
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    invoke-static {v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApDynamicCountryCodeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v1, 0x1

    .line 753
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 755
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public updateSoftApDateLimit()V
    .registers 3

    const-string v0, "SoftApManager"

    const-string v1, "ACTION_WIFI_AP_DATA_LIMIT_CHANGED received"

    .line 477
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method
