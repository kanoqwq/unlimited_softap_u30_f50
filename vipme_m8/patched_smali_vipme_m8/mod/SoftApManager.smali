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


# instance fields
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

.method static constructor <clinit>()V
    .registers 2

    .line 169
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

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 123
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mVerboseLoggingEnabled:Z

    .line 146
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    .line 152
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mConnectedClientWithApInfoMap:Ljava/util/Map;

    .line 153
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    .line 156
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 157
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    const/4 v5, 0x0

    .line 173
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    .line 175
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    .line 178
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    .line 180
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    .line 183
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 186
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    .line 189
    iput-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mIsCharging:Z

    .line 205
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    .line 211
    new-instance v6, Lcom/android/server/wifi/SoftApManager$1;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/SoftApManager$1;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApHalCallback:Lcom/android/server/wifi/WifiNative$SoftApHalCallback;

    .line 347
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    move-object v6, p3

    .line 348
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object/from16 v6, p15

    .line 349
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

    move-object v6, p4

    .line 350
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object v6, p5

    .line 351
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    move-object v6, p6

    .line 352
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 353
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 354
    new-instance v5, Lcom/android/server/wifi/SoftApManager$2;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/SoftApManager$2;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    goto :goto_73

    .line 365
    :cond_71
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    :goto_73
    move-object/from16 v5, p7

    .line 367
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    move-object/from16 v5, p8

    .line 368
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    move-object/from16 v5, p9

    .line 369
    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    .line 370
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 371
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 372
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getCapability()Landroid/net/wifi/SoftApCapability;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 374
    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v5, :cond_97

    .line 375
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 379
    :cond_97
    new-instance v5, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v8, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)V

    iput-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 381
    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v5, :cond_c7

    .line 382
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v5

    if-nez v5, :cond_b2

    const/4 v5, 0x1

    goto :goto_b3

    :cond_b2
    move v5, v4

    :goto_b3
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mIsUnsetBssid:Z

    .line 383
    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v6, 0x8

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 385
    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2, p1, v5}, Lcom/android/server/wifi/WifiApConfigStore;->randomizeBssidIfUnset(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    :cond_c7
    move-object/from16 v2, p12

    .line 389
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    move-object/from16 v2, p13

    .line 390
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    move-object/from16 v2, p14

    .line 391
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    .line 392
    new-instance v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-object v5, p2

    invoke-direct {v2, p0, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 393
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->configureInternalConfiguration()V

    .line 394
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    .line 396
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

    .line 400
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f02001a

    .line 401
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wifi/SoftApManager;->mIsDisableShutDownBridgedModeIdleInstanceTimerWhenCharging:Z

    .line 403
    iput-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mCmiMonitor:Lcom/android/server/wifi/ClientModeImplMonitor;

    move-object/from16 v1, p17

    .line 404
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mActiveModeWarden:Lcom/android/server/wifi/ActiveModeWarden;

    .line 405
    new-instance v1, Lcom/android/server/wifi/SoftApManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/SoftApManager$3;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/ClientModeImplMonitor;->registerListener(Lcom/android/server/wifi/ClientModeImplListener;)V

    .line 411
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->updateSafeChannelFrequencyList()V

    move-wide/from16 v5, p18

    .line 412
    iput-wide v5, v0, Lcom/android/server/wifi/SoftApManager;->mId:J

    move-object/from16 v1, p21

    .line 413
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move/from16 v1, p22

    .line 414
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SoftApManager;->enableVerboseLogging(Z)V

    move-object/from16 v0, p20

    .line 415
    invoke-virtual {v2, v4, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V
    .registers 6

    .line 787
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

    .line 789
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private checkSoftApClient(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z
    .registers 8

    .line 806
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 811
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    .line 812
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

    .line 813
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 814
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 813
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_47

    .line 816
    invoke-direct {p0, p2, v2}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    :cond_47
    return v2

    .line 821
    :cond_48
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 822
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 823
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 825
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

    .line 826
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 827
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 826
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_88

    .line 829
    invoke-direct {p0, p2, v2}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    :cond_88
    return v2

    .line 834
    :cond_89
    const/16 v0, 0x3e7

    .line 835
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_cf

    .line 840
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

    .line 841
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 842
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v4

    .line 841
    invoke-virtual {p1, v3, v4, v1}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_be

    .line 844
    invoke-direct {p0, p2, v1}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    .line 847
    :cond_be
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 850
    iget-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    if-nez p1, :cond_ce

    .line 851
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {p1, v0}, Lcom/android/server/wifi/WifiMetrics;->noteSoftApClientBlocked(I)V

    .line 852
    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    :cond_ce
    return v2

    :cond_cf
    return v1
.end method

.method private configureInternalConfiguration()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_5

    return-void

    .line 287
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    .line 288
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 289
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 290
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 291
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    return-void
.end method

.method private disconnectAllClients()V
    .registers 6

    .line 770
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

    .line 771
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

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 799
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

    .line 800
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_1f
    return-object v0
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .registers 1

    .line 605
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getCurrentState()Lcom/android/wifi/x/com/android/internal/util/IState;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 608
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

    .line 465
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

    .line 466
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApInfo;

    if-nez v3, :cond_28

    .line 468
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid instance name, no way to get the frequency"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 471
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

    .line 457
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 458
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBridgedModeOpportunisticShutdownTimeoutMillisInternal()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    goto :goto_f

    .line 459
    :cond_d
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

    :goto_f
    return-wide v0
.end method

.method private getShutdownTimeoutMillis()J
    .registers 5

    .line 452
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    goto :goto_f

    .line 453
    :cond_d
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    :goto_f
    return-wide v0
.end method

.method private getTag()Ljava/lang/String;
    .registers 3

    .line 424
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

    .line 448
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

    .line 443
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_13

    .line 444
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

    .line 437
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_13

    .line 438
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

    .line 598
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onL2Connected called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 600
    invoke-virtual {p1}, Lcom/android/server/wifi/ConcreteClientModeManager;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    const/16 v0, 0xf

    .line 599
    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private setCountryCode()I
    .registers 9

    .line 683
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    .line 684
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

    .line 687
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

    .line 694
    :cond_30
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 695
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 694
    invoke-virtual {v1, v5, v6}, Lcom/android/server/wifi/WifiNative;->setApCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    if-eq v0, v4, :cond_46

    if-ne v0, v2, :cond_5f

    .line 699
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

    .line 641
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 646
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->resetApMacToFactoryMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 647
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to reset to factory MAC address; continuing with current MAC"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 651
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->isApSetMacAddressSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 652
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiNative;->setApMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 653
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to set explicitly requested MAC address"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 656
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

    .line 714
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

    .line 717
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->setMacAddress()I

    move-result v0

    if-eqz v0, :cond_39

    return v0

    .line 722
    :cond_39
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->setCountryCode()I

    move-result v0

    if-eqz v0, :cond_40

    return v0

    .line 728
    :cond_40
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 731
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    .line 732
    invoke-virtual {v3}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    move-object v5, v0

    .line 731
    invoke-static/range {v1 .. v7}, Lcom/android/server/wifi/util/ApConfigUtil;->updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/coex/CoexManager;Landroid/content/res/Resources;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration$Builder;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)I

    move-result v1

    if-eqz v1, :cond_68

    .line 735
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to update AP band and channel"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 739
    :cond_68
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoftAP is a hidden network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_79
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-static {v1, v2}, Lcom/android/server/wifi/util/ApConfigUtil;->checkSupportAllConfiguration(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 745
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

    .line 750
    :cond_9f
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 751
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 752
    invoke-virtual {v3}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_b2

    goto :goto_b3

    :cond_b2
    move v5, v4

    :goto_b3
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApHalCallback:Lcom/android/server/wifi/WifiNative$SoftApHalCallback;

    .line 750
    invoke-virtual {v1, v2, v0, v5, v3}, Lcom/android/server/wifi/WifiNative;->startSoftAp(Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration;ZLcom/android/server/wifi/WifiNative$SoftApHalCallback;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 754
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Soft AP start failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 758
    :cond_c6
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->startLogging(Ljava/lang/String;)V

    .line 759
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimestamp:Ljava/lang/String;

    .line 760
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Soft AP is started "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private stopSoftAp()V
    .registers 3

    .line 780
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->disconnectAllClients()V

    .line 781
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->stopLogging(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 783
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Soft AP is stopped"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateApState(III)V
    .registers 6

    .line 622
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onStateChanged(II)V

    .line 625
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 626
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "wifi_state"

    .line 627
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previous_wifi_state"

    .line 628
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p2, 0xe

    if-ne p1, p2, :cond_24

    const-string p1, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    .line 631
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    :cond_24
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    const-string p2, "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {p1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p1

    const-string p2, "android.net.wifi.extra.WIFI_AP_MODE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/wifi/WifiContext;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private updateChangeableConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v0, :cond_65

    if-nez p1, :cond_7

    goto :goto_65

    .line 301
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xcb68ac8

    .line 305
    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1c

    const-wide/16 v0, -0x1

    .line 309
    :cond_1c
    new-instance v2, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 311
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 312
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBlockedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 313
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setClientControlByUserEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 314
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 315
    invoke-virtual {v2, v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setShutdownTimeoutMillis(J)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 317
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 319
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result p1

    .line 318
    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBridgedModeOpportunisticShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 321
    :cond_5c
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 322
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->configureInternalConfiguration()V

    :cond_65
    :goto_65
    return-void
.end method

.method private updateSafeChannelFrequencyList()V
    .registers 15

    .line 258
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_c

    goto/16 :goto_8a

    .line 261
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 262
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_4d

    aget v4, v0, v3

    .line 263
    sget-object v5, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v6, v5

    move v7, v2

    :goto_22
    if-ge v7, v6, :cond_4a

    aget v8, v5, v7

    and-int v9, v8, v4

    if-nez v9, :cond_2b

    goto :goto_47

    .line 267
    :cond_2b
    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v9, v8}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v9

    array-length v10, v9

    move v11, v2

    :goto_33
    if-ge v11, v10, :cond_47

    aget v12, v9, v11

    .line 268
    iget-object v13, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    .line 269
    invoke-static {v12, v8}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 268
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

    .line 273
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/coex/CoexManager;->getCoexRestrictions()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_62

    .line 274
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    .line 275
    invoke-static {v2}, Lcom/android/server/wifi/util/ApConfigUtil;->getUnsafeChannelFreqsFromCoex(Lcom/android/server/wifi/coex/CoexManager;)Ljava/util/Set;

    move-result-object v2

    .line 274
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 277
    :cond_62
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_8a

    .line 279
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

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of SoftApManager id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/SoftApManager;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
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

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApInterfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIfaceIsUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoftApCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOriginalModeConfiguration.targetMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mOriginalModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 563
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApCapability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
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

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBridgedModeOpportunisticsShutdownTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApInfoMap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSafeChannelFrequencyList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/SoftApManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wifi/SoftApManager$$ExternalSyntheticLambda0;-><init>()V

    .line 573
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 574
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableVerboseLogging(Z)V
    .registers 2

    .line 580
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getBridgedApDowngradeIfaceInstanceForRemoval()Ljava/lang/String;
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 547
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

    .line 420
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mId:J

    return-wide v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 1

    .line 504
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

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getPreviousRole()Lcom/android/server/wifi/ActiveModeManager$ClientRole;

    move-result-object p0

    return-object p0
.end method

.method public getRequestorWs()Landroid/os/WorkSource;
    .registers 1

    .line 509
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    return-object p0
.end method

.method public bridge synthetic getRole()Lcom/android/server/wifi/ActiveModeManager$Role;
    .registers 1

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move-result-object p0

    return-object p0
.end method

.method public getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;
    .registers 1

    .line 482
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    return-object p0
.end method

.method public getSoftApModeConfiguration()Lcom/android/server/wifi/SoftApModeConfiguration;
    .registers 4

    .line 535
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

    .line 498
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkState(Z)V

    .line 499
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    return-void
.end method

.method public stop()V
    .registers 4

    .line 432
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

    .line 433
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApManager{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
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

    .line 518
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 3

    .line 528
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCountryCode(Ljava/lang/String;)Z
    .registers 5

    .line 673
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    invoke-static {v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApDynamicCountryCodeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v1, 0x1

    .line 674
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 676
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method
