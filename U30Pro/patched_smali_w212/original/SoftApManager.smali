.class public Lcom/android/server/wifi/SoftApManager;
.super Ljava/lang/Object;
.source "SoftApManager.java"

# interfaces
.implements Lcom/android/server/wifi/ActiveModeManager;


# static fields
.field private static final FORMATTER:Ljava/text/SimpleDateFormat;

.field private static IS_DEBUG_BUILD:Ljava/lang/Boolean; = null

.field static final SOFT_AP_PENDING_DISCONNECTION_CHECK_DELAY_MS:J = 0x3e8L

.field public static final SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "SoftApManager Soft AP Send Message Timeout on "

.field private static mSoftApInterfaceName:Ljava/lang/String;


# instance fields
.field private final MB_IN_BYTES:J

.field private final mActiveModeWarden:Lcom/android/server/wifi/ActiveModeWarden;

.field private mAllowedClientList:Ljava/util/Set;

.field private mApInterfaceName:Ljava/lang/String;

.field private mBlockedClientList:Ljava/util/Set;

.field private mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

.field private final mCmiListener:Lcom/android/server/wifi/ClientModeImplListener;

.field private final mCmiMonitor:Lcom/android/server/wifi/ClientModeImplMonitor;

.field private final mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

.field private final mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

.field private mConnectedClientWithApInfoMap:Ljava/util/Map;

.field private final mContext:Landroid/net/wifi/WifiContext;

.field private mCountryCode:Ljava/lang/String;

.field private mCurrentApState:I

.field private mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

.field private mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

.field private mCurrentSoftApInfoMap:Ljava/util/Map;

.field private mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

.field private mDefaultShutdownTimeoutMillis:J

.field private mDeviceClientsTime:Ljava/util/LinkedHashMap;

.field private mEverReportMetricsForMaxClient:Z

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mId:J

.field private mIfaceIsDestroyed:Z

.field private mIfaceIsUp:Z

.field private final mInterfaceConflictManager:Lcom/android/server/wifi/InterfaceConflictManager;

.field private final mIsDisableShutDownBridgedModeIdleInstanceTimerWhenPlugged:Z

.field private mIsPlugged:Z

.field private mIsSoftApStartedEventWritten:Z

.field private mIsUnsetBssid:Z

.field private final mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

.field private mNwService:Landroid/os/INetworkManagementService;

.field mPendingDisconnectClients:Ljava/util/Map;

.field private mRequestorWs:Landroid/os/WorkSource;

.field private mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

.field private mSafeChannelFrequencyList:Ljava/util/Set;

.field private final mSarManager:Lcom/android/server/wifi/SarManager;

.field private final mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

.field private final mSoftApHalCallback:Lcom/android/server/wifi/WifiNative$SoftApHalCallback;

.field private final mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

.field public mSoftApTimeoutMessageMap:Ljava/util/Map;

.field private mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

.field private mStartTimestamp:Ljava/lang/String;

.field private final mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

.field private mTimeoutEnabled:Z

.field private mVerboseLoggingEnabled:Z

.field private final mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiTetherQuota:J

.field private mWifiTetheringLimitAlertName:Ljava/lang/String;

.field private final mWifiTetheringQuotaObserver:Landroid/net/INetworkManagementEventObserver;

.field private mWifiTetheringWithLimitStarted:Z

.field private mWlanTetheringName:Ljava/lang/String;

.field private runAutoRestart:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveModeWarden(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ActiveModeWarden;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mActiveModeWarden:Lcom/android/server/wifi/ActiveModeWarden;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApInterfaceName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlockedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBridgedModeOpportunisticsShutdownTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCmiListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ClientModeImplListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCmiListener:Lcom/android/server/wifi/ClientModeImplListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCmiMonitor(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ClientModeImplMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCmiMonitor:Lcom/android/server/wifi/ClientModeImplMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCoexListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager$CoexListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCoexManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/coex/CoexManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedClientWithApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mConnectedClientWithApInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiContext;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountryCode(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApConfiguration;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSoftApInfoMap(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceClientsTime(Lcom/android/server/wifi/SoftApManager;)Ljava/util/LinkedHashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsDestroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceConflictManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/InterfaceConflictManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceConflictManager:Lcom/android/server/wifi/InterfaceConflictManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDisableShutDownBridgedModeIdleInstanceTimerWhenPlugged(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIsDisableShutDownBridgedModeIdleInstanceTimerWhenPlugged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPlugged(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIsPlugged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeListener(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ActiveModeManager$Listener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNwService(Lcom/android/server/wifi/SoftApManager;)Landroid/os/INetworkManagementService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestorWs(Lcom/android/server/wifi/SoftApManager;)Landroid/os/WorkSource;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSarManager(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApCallback(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftApNotifier(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApNotifier;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMachine(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeoutEnabled(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiInjector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiMetrics(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTetheringLimitAlertName(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrunAutoRestart(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->runAutoRestart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmApInterfaceName(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCountryCode(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSoftApCapability(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApCapability;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSoftApConfiguration(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEverReportMetricsForMaxClient(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIfaceIsDestroyed(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsDestroyed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIfaceIsUp(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPlugged(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIsPlugged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestorWs(Lcom/android/server/wifi/SoftApManager;Landroid/os/WorkSource;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRole(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/ActiveModeManager$SoftApRole;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSpecifiedModeConfiguration(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/SoftApModeConfiguration;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrunAutoRestart(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->runAutoRestart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddClientToPendingDisconnectionList(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiClient;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSoftApClient(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->checkSoftApClient(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mconfigureInternalConfiguration(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->configureInternalConfiguration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetConnectedClientList(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHighestFrequencyInstance(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->getHighestFrequencyInstance(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetShutdownIdleInstanceInBridgedModeTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J
    .registers 3

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getShutdownIdleInstanceInBridgedModeTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetShutdownTimeoutMillis(Lcom/android/server/wifi/SoftApManager;)J
    .registers 3

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getShutdownTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetTag(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVendorData(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getVendorData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleStartSoftApFailure(Lcom/android/server/wifi/SoftApManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->handleStartSoftApFailure(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misBridgeRequired(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgeRequired()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monL2Connected(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/ConcreteClientModeManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->onL2Connected(Lcom/android/server/wifi/ConcreteClientModeManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterWifiAlertObserver(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->registerWifiAlertObserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCountryCode(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->setCountryCode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartSoftAp(Lcom/android/server/wifi/SoftApManager;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->startSoftAp()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopSoftAp(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterWifiAlertObserver(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->unregisterWifiAlertObserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateApState(Lcom/android/server/wifi/SoftApManager;III)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateChangeableConfiguration(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->updateChangeableConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSafeChannelFrequencyList(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->updateSafeChannelFrequencyList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSoftApStoppedEvent(Lcom/android/server/wifi/SoftApManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->writeSoftApStoppedEvent(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmSoftApInterfaceName(Ljava/lang/String;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/android/server/wifi/SoftApManager;->mSoftApInterfaceName:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 278
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/SoftApManager;->FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiContext;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/coex/CoexManager;Lcom/android/server/wifi/InterfaceConflictManager;Lcom/android/server/wifi/ActiveModeManager$Listener;Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/server/wifi/SoftApModeConfiguration;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/SarManager;Lcom/android/server/wifi/WifiDiagnostics;Lcom/android/server/wifi/SoftApNotifier;Lcom/android/server/wifi/ClientModeImplMonitor;Lcom/android/server/wifi/ActiveModeWarden;JLandroid/os/WorkSource;Lcom/android/server/wifi/ActiveModeManager$SoftApRole;Z)V
    .registers 36

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, p16

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v4, Lcom/android/server/wifi/SoftApManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/SoftApManager$1;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v4, v0, Lcom/android/server/wifi/SoftApManager;->mCmiListener:Lcom/android/server/wifi/ClientModeImplListener;

    const/4 v5, 0x0

    .line 234
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mVerboseLoggingEnabled:Z

    .line 255
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    .line 261
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mConnectedClientWithApInfoMap:Ljava/util/Map;

    .line 262
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    .line 265
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 266
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    const/4 v6, 0x0

    .line 282
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    .line 284
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    .line 287
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    .line 289
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    .line 292
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 295
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    .line 298
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mIsPlugged:Z

    const/16 v7, 0xb

    .line 300
    iput v7, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentApState:I

    .line 302
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mIsSoftApStartedEventWritten:Z

    .line 318
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    const-wide/32 v7, 0x100000

    .line 321
    iput-wide v7, v0, Lcom/android/server/wifi/SoftApManager;->MB_IN_BYTES:J

    .line 324
    const-string v7, ""

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    .line 328
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringWithLimitStarted:Z

    .line 329
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    .line 330
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->runAutoRestart:Z

    .line 339
    new-instance v7, Lcom/android/server/wifi/SoftApManager$2;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/SoftApManager$2;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringQuotaObserver:Landroid/net/INetworkManagementEventObserver;

    .line 383
    new-instance v7, Lcom/android/server/wifi/SoftApManager$3;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/SoftApManager$3;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApHalCallback:Lcom/android/server/wifi/WifiNative$SoftApHalCallback;

    .line 523
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    move-object/from16 v7, p3

    .line 524
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object/from16 v7, p15

    .line 525
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

    move-object/from16 v7, p4

    .line 526
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v7, p5

    .line 527
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    move-object/from16 v7, p6

    .line 528
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    move-object/from16 v7, p7

    .line 529
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mInterfaceConflictManager:Lcom/android/server/wifi/InterfaceConflictManager;

    .line 530
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 531
    new-instance v6, Lcom/android/server/wifi/SoftApManager$4;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/SoftApManager$4;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    goto :goto_a3

    .line 542
    :cond_a1
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    .line 544
    :goto_a3
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    .line 545
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCountryCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SoftApManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p8

    .line 546
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    move-object/from16 v6, p9

    .line 547
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    .line 548
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 549
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 550
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getCapability()Landroid/net/wifi/SoftApCapability;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 552
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v6, :cond_e1

    .line 553
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 557
    :cond_e1
    new-instance v6, Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 559
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v8

    iget-object v9, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v10, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    iget-object v11, v0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    .line 563
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTetheringRequest()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v12

    move-object/from16 p3, v6

    move/from16 p4, v8

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    move-object/from16 p7, v11

    move-object/from16 p8, v12

    invoke-direct/range {p3 .. p8}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;Ljava/lang/String;Landroid/net/TetheringManager$TetheringRequest;)V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 564
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v6, :cond_123

    .line 565
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v6

    if-nez v6, :cond_10e

    const/4 v6, 0x1

    goto :goto_10f

    :cond_10e
    move v6, v5

    :goto_10f
    iput-boolean v6, v0, Lcom/android/server/wifi/SoftApManager;->mIsUnsetBssid:Z

    .line 566
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v8, 0x8

    invoke-virtual {v6, v8, v9}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v6

    if-eqz v6, :cond_123

    .line 568
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2, p1, v6}, Lcom/android/server/wifi/WifiApConfigStore;->randomizeBssidIfUnset(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 572
    :cond_123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "softApConfig :band : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ssid : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 573
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Bssid : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 574
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " HiddenSsid : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 575
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " SecurityType : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 576
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p12

    .line 578
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    move-object/from16 v2, p13

    .line 579
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    move-object/from16 v2, p14

    .line 580
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    .line 581
    new-instance v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-object v6, p2

    invoke-direct {v2, p0, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 582
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 583
    invoke-static {v6}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    .line 584
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->configureInternalConfiguration()V

    .line 585
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050054

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    .line 587
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

    .line 590
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f02002b

    .line 591
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wifi/SoftApManager;->mIsDisableShutDownBridgedModeIdleInstanceTimerWhenPlugged:Z

    .line 593
    iput-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mCmiMonitor:Lcom/android/server/wifi/ClientModeImplMonitor;

    move-object/from16 v1, p17

    .line 594
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mActiveModeWarden:Lcom/android/server/wifi/ActiveModeWarden;

    .line 595
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ClientModeImplMonitor;->registerListener(Lcom/android/server/wifi/ClientModeImplListener;)V

    .line 596
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->updateSafeChannelFrequencyList()V

    move-wide/from16 v3, p18

    .line 597
    iput-wide v3, v0, Lcom/android/server/wifi/SoftApManager;->mId:J

    move-object/from16 v1, p21

    .line 598
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move/from16 v1, p22

    .line 599
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SoftApManager;->enableVerboseLogging(Z)V

    move-object/from16 v0, p20

    .line 600
    invoke-virtual {v2, v5, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V
    .registers 6

    .line 1095
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

    .line 1097
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1100
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private checkSoftApClient(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z
    .registers 8

    .line 1114
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 1119
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    .line 1120
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

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 1122
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 1121
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_47

    .line 1124
    invoke-direct {p0, p2, v2}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    :cond_47
    return v2

    .line 1129
    :cond_48
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 1130
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 1131
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 1133
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

    .line 1134
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 1135
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 1134
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_88

    .line 1137
    invoke-direct {p0, p2, v2}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    :cond_88
    return v2

    .line 1142
    :cond_89
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApCapability;->getMaxSupportedClients()I

    move-result v0

    .line 1143
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v3

    if-lez v3, :cond_9d

    .line 1144
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1147
    :cond_9d
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_e1

    .line 1148
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No more room for new client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 1150
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v4

    .line 1149
    invoke-virtual {p1, v3, v4, v1}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_d0

    .line 1152
    invoke-direct {p0, p2, v1}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    .line 1155
    :cond_d0
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 1158
    iget-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    if-nez p1, :cond_e0

    .line 1159
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {p1, v0}, Lcom/android/server/wifi/WifiMetrics;->noteSoftApClientBlocked(I)V

    .line 1160
    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    :cond_e0
    return v2

    :cond_e1
    return v1
.end method

.method private configureInternalConfiguration()V
    .registers 3

    .line 460
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_5

    return-void

    .line 463
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    .line 464
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 465
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 466
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 467
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    return-void
.end method

.method private disconnectAllClients()V
    .registers 6

    .line 1078
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

    .line 1079
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

    .line 1106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1107
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

    .line 1108
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_1f
    return-object v0
.end method

.method private getCurrentStaFreqMhz()I
    .registers 2

    .line 2470
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mActiveModeWarden:Lcom/android/server/wifi/ActiveModeWarden;

    invoke-virtual {p0}, Lcom/android/server/wifi/ActiveModeWarden;->getClientModeManagers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ClientModeManager;

    .line 2471
    invoke-interface {v0}, Lcom/android/server/wifi/ClientMode;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2473
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    goto :goto_22

    :cond_21
    const/4 p0, -0x1

    :goto_22
    return p0
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .registers 1

    .line 821
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getCurrentState()Lcom/android/wifi/x/com/android/internal/util/IState;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 824
    invoke-interface {p0}, Lcom/android/wifi/x/com/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 827
    :cond_d
    const-string p0, "StateMachine not active"

    return-object p0
.end method

.method private getHighestFrequencyInstance(Ljava/util/Set;)Ljava/lang/String;
    .registers 6

    .line 672
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

    .line 673
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApInfo;

    if-nez v3, :cond_28

    .line 675
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid instance name, no way to get the frequency"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string p0, ""

    return-object p0

    .line 678
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

    .line 658
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 659
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBridgedModeOpportunisticShutdownTimeoutMillisInternal()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    goto :goto_f

    .line 660
    :cond_d
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

    :goto_f
    return-wide v0
.end method

.method private getShutdownTimeoutMillis()J
    .registers 5

    .line 653
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    goto :goto_f

    .line 654
    :cond_d
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    :goto_f
    return-wide v0
.end method

.method public static getSoftApInterfaceName()Ljava/lang/String;
    .registers 1

    .line 1168
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->mSoftApInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method private getTag()Ljava/lang/String;
    .registers 3

    .line 625
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

.method private getVendorData()Ljava/util/List;
    .registers 2

    .line 664
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_f

    .line 665
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getVendorData()Ljava/util/List;

    move-result-object p0

    goto :goto_14

    .line 666
    :cond_f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_14
    return-object p0
.end method

.method private handleStartSoftApFailure(I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1052
    const-string p0, "SoftApManager"

    const-string p1, "handleStartSoftApFailure called with START_RESULT_SUCCESS"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_10

    goto :goto_1b

    :cond_10
    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    const/4 v0, 0x2

    goto :goto_1b

    :cond_15
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    const/16 v1, 0xe

    .line 1064
    iget v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentApState:I

    invoke-direct {p0, v1, v3, v0}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    .line 1067
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    .line 1068
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 1069
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/wifi/ActiveModeManager$Listener;->onStartFailure(Lcom/android/server/wifi/ActiveModeManager;)V

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager;->writeSoftApStartedEvent(I)V

    return-void
.end method

.method private isBridgeRequired()Z
    .registers 2

    .line 649
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

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

.method public static isDebug()Z
    .registers 2

    .line 333
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->IS_DEBUG_BUILD:Ljava/lang/Boolean;

    if-nez v0, :cond_20

    .line 334
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SoftApManager;->IS_DEBUG_BUILD:Ljava/lang/Boolean;

    .line 336
    :cond_20
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->IS_DEBUG_BUILD:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isOweTransition()Z
    .registers 2

    .line 638
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_13

    .line 639
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

    .line 814
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onL2Connected called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized registerWifiAlertObserver()V
    .registers 12

    monitor-enter p0

    .line 2547
    :try_start_1
    const-string v0, "SoftApManager"

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
    .catchall {:try_start_1 .. :try_end_19} :catchall_66

    const/16 v0, 0x25

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2553
    :try_start_1d
    invoke-static {v0}, Lcom/android/server/wifi/WifiAdvancedConfigStore;->getAdvancedConfiguration(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2554
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2555
    const-string v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The userSetValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_71

    const/16 v0, 0x27

    .line 2557
    invoke-static {v0}, Lcom/android/server/wifi/WifiAdvancedConfigStore;->getAdvancedConfiguration(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2558
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2559
    const-string v0, "SoftApManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Used the  CUSTOMIZED_VALUE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :catchall_66
    move-exception v0

    goto/16 :goto_1a7

    :catch_69
    move-exception v0

    goto/16 :goto_196

    :catch_6c
    move-exception v0

    goto/16 :goto_19e

    :catch_6f
    move-exception v0

    goto :goto_96

    :cond_71
    const/16 v0, 0x26

    .line 2561
    invoke-static {v0}, Lcom/android/server/wifi/WifiAdvancedConfigStore;->getAdvancedConfiguration(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2562
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2563
    const-string v0, "SoftApManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Used the FIXED_VALUE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_95} :catch_6f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_95} :catch_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_95} :catch_69
    .catchall {:try_start_1d .. :try_end_95} :catchall_66

    goto :goto_ac

    .line 2566
    :goto_96
    :try_start_96
    const-string v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t obtain the limit value! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    :goto_ac
    const-string v0, "SoftApManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerWifiAlertObserver, Registering mWifiTetheringQuotaObserver, limitInMB is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v2, :cond_c9

    .line 2572
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->unregisterWifiAlertObserver()V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_c7} :catch_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_96 .. :try_end_c7} :catch_69
    .catchall {:try_start_96 .. :try_end_c7} :catchall_66

    .line 2573
    monitor-exit p0

    return-void

    .line 2575
    :cond_c9
    :try_start_c9
    iget-wide v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetherQuota:J

    .line 2579
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;

    int-to-long v5, v2

    const-wide/32 v7, 0x100000

    mul-long/2addr v5, v7

    .line 2580
    iput-wide v5, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetherQuota:J

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-eqz v0, :cond_185

    .line 2583
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last set WifiTetherQuota is:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->getWifiTetheringQuota(Ljava/lang/String;)J

    move-result-wide v5

    .line 2585
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remainQuota is:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    iget-wide v7, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetherQuota:J

    cmp-long v0, v3, v7

    if-gez v0, :cond_12f

    sub-long/2addr v7, v3

    add-long/2addr v5, v7

    .line 2588
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update new larger quota, acture value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    :cond_12f
    cmp-long v0, v3, v7

    if-lez v0, :cond_17c

    sub-long v9, v3, v5

    cmp-long v0, v9, v7

    if-lez v0, :cond_163

    .line 2593
    const-string v0, "SoftApManager"

    const-string v2, "update new smaller quota, already exceed, stopSoftAp"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->updateSoftApDateLimitEND()V

    .line 2597
    sget-boolean v0, Lcom/zte/wifi/ZteWifiUtils;->ZTE_FEATURE_WIFI_MINDSYNC:Z

    if-eqz v0, :cond_161

    .line 2598
    const-string v0, "WifiMindSync"

    const-string v2, "HOTSPOT_DISABLED smaller quota"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2600
    const-string v2, "extraParam"

    const-string v3, "data_limitation_reached"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    const-string v3, "hotspot_disabled"

    invoke-static {v2, v3, v0, v1}, Lcom/zte/wifi/ZteWifiUtils;->sendHotspotMindSyncEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_161
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_161} :catch_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_c9 .. :try_end_161} :catch_69
    .catchall {:try_start_c9 .. :try_end_161} :catchall_66

    .line 2608
    :cond_161
    monitor-exit p0

    return-void

    :cond_163
    sub-long/2addr v7, v3

    add-long/2addr v5, v7

    .line 2611
    :try_start_165
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update new smaller quota, acture value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    .line 2614
    :cond_17c
    const-string v0, "SoftApManager"

    const-string v1, "update same quota, ignore!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catch Landroid/os/RemoteException; {:try_start_165 .. :try_end_183} :catch_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_165 .. :try_end_183} :catch_69
    .catchall {:try_start_165 .. :try_end_183} :catchall_66

    .line 2615
    monitor-exit p0

    return-void

    .line 2620
    :cond_185
    :goto_185
    :try_start_185
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;

    invoke-interface {v0, v2, v5, v6}, Landroid/os/INetworkManagementService;->setWifiTetheringQuota(Ljava/lang/String;J)V

    .line 2621
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringQuotaObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 2622
    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringWithLimitStarted:Z
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_185 .. :try_end_195} :catch_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_185 .. :try_end_195} :catch_69
    .catchall {:try_start_185 .. :try_end_195} :catchall_66

    goto :goto_1a5

    .line 2627
    :goto_196
    :try_start_196
    const-string v1, "SoftApManager"

    const-string v2, "Error registering observer:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a5

    .line 2625
    :goto_19e
    const-string v1, "SoftApManager"

    const-string v2, "Error registering observer:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a5
    .catchall {:try_start_196 .. :try_end_1a5} :catchall_66

    .line 2629
    :goto_1a5
    monitor-exit p0

    return-void

    :goto_1a7
    monitor-exit p0

    throw v0
.end method

.method private setCountryCode()Z
    .registers 10

    .line 930
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    .line 931
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCountryCode mCountryCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " band "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v1, :cond_53

    if-eq v0, v5, :cond_3a

    if-ne v0, v4, :cond_39

    goto :goto_3a

    :cond_39
    return v3

    .line 935
    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid country code, required for setting up soft ap in band:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 942
    :cond_53
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 943
    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 942
    invoke-virtual {v1, v6, v7}, Lcom/android/server/wifi/WifiNative;->setApCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    if-eq v0, v5, :cond_69

    if-ne v0, v4, :cond_82

    .line 947
    :cond_69
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set country code, required for setting up soft ap in band: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_82
    return v3
.end method

.method private setMacAddress()I
    .registers 4

    .line 888
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 893
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->resetApMacToFactoryMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 894
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to reset to factory MAC address; continuing with current MAC"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 898
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->isApSetMacAddressSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 899
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiNative;->setApMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 900
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to set explicitly requested MAC address"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb

    return p0

    .line 903
    :cond_3c
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIsUnsetBssid:Z

    if-nez p0, :cond_42

    const/4 p0, 0x4

    return p0

    :cond_42
    :goto_42
    const/4 p0, 0x1

    return p0
.end method

.method private startSoftAp()I
    .registers 11

    .line 962
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 963
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSoftAp: channels "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 966
    :cond_39
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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_57
    const/16 v0, 0xc

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 969
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    .line 972
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->setMacAddress()I

    .line 978
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 981
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    .line 982
    invoke-virtual {v1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    move-object v7, v0

    .line 981
    invoke-static/range {v3 .. v9}, Lcom/android/server/wifi/util/ApConfigUtil;->updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/coex/CoexManager;Landroid/content/res/Resources;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration$Builder;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8b

    .line 985
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to update AP band and channel"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 989
    :cond_8b
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    .line 991
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 992
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SoftAP is a hidden network"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_a0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-static {v1, v4}, Lcom/android/server/wifi/util/ApConfigUtil;->checkSupportAllConfiguration(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)Z

    move-result v1

    if-nez v1, :cond_c6

    .line 997
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

    const/4 p0, 0x4

    return p0

    .line 1002
    :cond_c6
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 1003
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 1007
    invoke-virtual {v6}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v6

    if-ne v6, v3, :cond_d8

    move v6, v3

    goto :goto_d9

    :cond_d8
    move v6, v2

    :goto_d9
    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApHalCallback:Lcom/android/server/wifi/WifiNative$SoftApHalCallback;

    .line 1004
    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/android/server/wifi/WifiNative;->startSoftAp(Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration;ZLcom/android/server/wifi/WifiNative$SoftApHalCallback;)I

    move-result v4

    if-eq v4, v3, :cond_158

    .line 1011
    iget-boolean v3, p0, Lcom/android/server/wifi/SoftApManager;->runAutoRestart:Z

    if-nez v3, :cond_157

    .line 1012
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v1

    .line 1013
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    move v4, v2

    .line 1014
    :goto_f3
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_109

    .line 1015
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1016
    invoke-static {v5}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result v6

    if-eqz v6, :cond_106

    .line 1017
    invoke-virtual {v3, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_106
    add-int/lit8 v4, v4, 0x1

    goto :goto_f3

    .line 1020
    :cond_109
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eqz v4, :cond_113

    .line 1021
    invoke-virtual {v0, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_11c

    .line 1023
    :cond_113
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    .line 1024
    invoke-static {v2, v3}, Lcom/android/server/wifi/util/ApConfigUtil;->append24GToBandIf24GSupported(ILandroid/content/Context;)I

    move-result v2

    .line 1023
    invoke-virtual {v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1027
    :goto_11c
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 1028
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Soft AP start failed channels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; newchannels="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 1029
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and try to auto restart"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsDestroyed:Z

    if-nez v0, :cond_154

    .line 1032
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    :cond_154
    const/16 p0, 0x14

    return p0

    :cond_157
    return v4

    .line 1039
    :cond_158
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->startLogging(Ljava/lang/String;)V

    .line 1040
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimestamp:Ljava/lang/String;

    .line 1041
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Soft AP is started "

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private stopSoftAp()V
    .registers 3

    .line 1088
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->disconnectAllClients()V

    .line 1089
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->stopLogging(Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1091
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Soft AP is stopped"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterWifiAlertObserver()V
    .registers 5

    .line 2633
    const-string v0, "UnregisterWifiAlertObserver enter."

    const-string v1, "SoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    :try_start_7
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringWithLimitStarted:Z

    if-eqz v0, :cond_40

    .line 2636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterWifiAlertObserver, Unregistering mWifiTetheringQuotaObserver, mWlanTetheringName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringQuotaObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 2638
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->removeWifiTetheringQuota(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 2639
    iput-wide v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetherQuota:J

    const/4 v0, 0x0

    .line 2640
    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringWithLimitStarted:Z

    const/4 v0, 0x0

    .line 2641
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWlanTetheringName:Ljava/lang/String;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p0

    .line 2644
    const-string v0, "Error unregistering observer:"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_40
    :goto_40
    return-void
.end method

.method private updateApState(III)V
    .registers 8

    .line 838
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating AP state: newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    new-instance v1, Landroid/net/wifi/SoftApState;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 842
    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTetheringRequest()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-direct {v1, p1, p3, v2, v3}, Landroid/net/wifi/SoftApState;-><init>(IILandroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onStateChanged(Landroid/net/wifi/SoftApState;)V

    .line 844
    invoke-static {}, Lcom/android/server/wifi/WifiServiceExterned;->getInstance()Lcom/android/server/wifi/WifiServiceExterned;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiServiceExterned;->setSoftApState(I)V

    .line 847
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 848
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 849
    const-string v1, "wifi_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 850
    const-string v1, "previous_wifi_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xe

    if-ne p1, v1, :cond_b7

    .line 853
    const-string p1, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 854
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 856
    sget-boolean v1, Lcom/zte/wifi/ZteWifiUtils;->ZTE_FEATURE_WIFI_MINDSYNC:Z

    if-eqz v1, :cond_b7

    const/16 v1, 0xb

    .line 857
    const-string v2, "enable"

    if-eq p2, v1, :cond_82

    const/16 v1, 0xc

    if-ne p2, v1, :cond_74

    goto :goto_82

    :cond_74
    const/16 v1, 0xd

    if-eq p2, v1, :cond_7c

    const/16 v1, 0xa

    if-ne p2, v1, :cond_87

    .line 862
    :cond_7c
    const-string p2, "false"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 859
    :cond_82
    :goto_82
    const-string p2, "true"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_87
    :goto_87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "reason"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string p2, "WifiMindSync"

    const-string p3, "HOTSPOT_ON_OFF_FAILED "

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    const-string p3, "hotspot_on_off_failed"

    const/4 v1, 0x1

    invoke-static {p2, p3, p1, v1}, Lcom/zte/wifi/ZteWifiUtils;->sendHotspotMindSyncEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 870
    invoke-static {}, Lcom/android/server/wifi/WifiServiceExterned;->getInstance()Lcom/android/server/wifi/WifiServiceExterned;

    move-result-object p1

    const-string p2, "ap_failed"

    const-string p3, "ALL"

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wifi/WifiServiceExterned;->triggerErrorLogToMindSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :cond_b7
    const-string p1, "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 877
    invoke-virtual {p1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p1

    .line 876
    const-string p2, "android.net.wifi.extra.WIFI_AP_MODE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 879
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastSv2()Z

    move-result p1

    if-eqz p1, :cond_d9

    .line 880
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/wifi/WifiContext;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_e0

    .line 883
    :cond_d9
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiContext;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_e0
    return-void
.end method

.method private updateChangeableConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 6

    .line 471
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v0, :cond_65

    if-nez p1, :cond_7

    goto :goto_65

    .line 477
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xcb68ac8

    .line 481
    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1c

    const-wide/16 v0, -0x1

    .line 485
    :cond_1c
    new-instance v2, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 487
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 488
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBlockedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 489
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setClientControlByUserEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 490
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 491
    invoke-virtual {v2, v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setShutdownTimeoutMillis(J)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 492
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 493
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 495
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result p1

    .line 494
    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBridgedModeOpportunisticShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 497
    :cond_5c
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 498
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->configureInternalConfiguration()V

    :cond_65
    :goto_65
    return-void
.end method

.method private updateSafeChannelFrequencyList()V
    .registers 15

    .line 434
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_c

    goto/16 :goto_8a

    .line 437
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_4d

    aget v4, v0, v3

    .line 439
    sget-object v5, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v6, v5

    move v7, v2

    :goto_22
    if-ge v7, v6, :cond_4a

    aget v8, v5, v7

    and-int v9, v8, v4

    if-nez v9, :cond_2b

    goto :goto_47

    .line 443
    :cond_2b
    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v9, v8}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v9

    array-length v10, v9

    move v11, v2

    :goto_33
    if-ge v11, v10, :cond_47

    aget v12, v9, v11

    .line 444
    iget-object v13, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    .line 445
    invoke-static {v12, v8}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 444
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

    .line 449
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/coex/CoexManager;->getCoexRestrictions()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_62

    .line 450
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    .line 451
    invoke-static {v2}, Lcom/android/server/wifi/util/ApConfigUtil;->getUnsafeChannelFreqsFromCoex(Lcom/android/server/wifi/coex/CoexManager;)Ljava/util/Set;

    move-result-object v2

    .line 450
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 453
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_8a

    .line 455
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

.method private writeSoftApStoppedEvent(I)V
    .registers 22

    move-object/from16 v0, p0

    .line 2516
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v6, v2

    move v14, v6

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApInfo;

    .line 2517
    invoke-virtual {v3}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/ScanResult;->toBand(I)I

    move-result v4

    or-int/2addr v6, v4

    .line 2518
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2519
    invoke-virtual {v3}, Landroid/net/wifi/SoftApInfo;->getWifiStandard()I

    move-result v14

    goto :goto_f

    .line 2523
    :cond_2f
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v1, :cond_39

    .line 2524
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    move v13, v1

    goto :goto_3a

    :cond_39
    move v13, v2

    .line 2527
    :goto_3a
    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 2529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/SoftApManager;->getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move-result-object v5

    .line 2531
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v7

    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 2532
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->isStaApConcurrencySupported()Z

    move-result v8

    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 2533
    invoke-static {v1, v4}, Lcom/android/server/wifi/util/ApConfigUtil;->isStaWithBridgedModeSupported(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)Z

    move-result v9

    .line 2534
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/SoftApManager;->getCurrentStaFreqMhz()I

    move-result v10

    iget-wide v11, v0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    const-wide/16 v15, 0x0

    cmp-long v1, v11, v15

    const/4 v4, 0x1

    if-lez v1, :cond_61

    move v11, v4

    goto :goto_62

    :cond_61
    move v11, v2

    :goto_62
    iget-wide v0, v0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

    cmp-long v0, v0, v15

    if-lez v0, :cond_6b

    move/from16 v16, v4

    goto :goto_6d

    :cond_6b
    move/from16 v16, v2

    :goto_6d
    const/16 v18, -0x1

    const/16 v19, 0x0

    const/4 v12, -0x1

    const/4 v15, -0x1

    const/16 v17, -0x1

    move/from16 v4, p1

    .line 2527
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/wifi/WifiMetrics;->writeSoftApStoppedEvent(ILcom/android/server/wifi/ActiveModeManager$SoftApRole;IZZZIZIIIIZIILandroid/net/NetworkCapabilities;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of SoftApManager id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/SoftApManager;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
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

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApInterfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIfaceIsUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoftApCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpecifiedModeConfiguration.targetMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 779
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApCapability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
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

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBridgedModeOpportunisticsShutdownTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApInfoMap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSafeChannelFrequencyList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/SoftApManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wifi/SoftApManager$$ExternalSyntheticLambda0;-><init>()V

    .line 789
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 790
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableVerboseLogging(Z)V
    .registers 2

    .line 796
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getBridgedApDowngradeIfaceInstanceForRemoval()Ljava/lang/String;
    .registers 4

    .line 755
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2d

    .line 758
    :cond_10
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->getBridgedApInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 759
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    goto :goto_2d

    .line 762
    :cond_22
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager;->getHighestFrequencyInstance(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public getId()J
    .registers 3

    .line 621
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mId:J

    return-wide v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 1

    .line 711
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviousRole()Lcom/android/server/wifi/ActiveModeManager$ClientRole;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPreviousRole()Lcom/android/server/wifi/ActiveModeManager$Role;
    .registers 1

    .line 104
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getPreviousRole()Lcom/android/server/wifi/ActiveModeManager$ClientRole;

    move-result-object p0

    return-object p0
.end method

.method public getRequestorWs()Landroid/os/WorkSource;
    .registers 1

    .line 716
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    return-object p0
.end method

.method public bridge synthetic getRole()Lcom/android/server/wifi/ActiveModeManager$Role;
    .registers 1

    .line 104
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move-result-object p0

    return-object p0
.end method

.method public getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;
    .registers 1

    .line 689
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    return-object p0
.end method

.method public getSTAListWithTime()Ljava/lang/String;
    .registers 6

    .line 2651
    const-string v0, ""

    .line 2652
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object v1

    .line 2653
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_58

    .line 2654
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiClient;

    .line 2655
    invoke-virtual {v2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2656
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 2657
    :try_start_27
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 2658
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

    goto :goto_54

    :catchall_52
    move-exception p0

    goto :goto_56

    .line 2660
    :cond_54
    :goto_54
    monitor-exit v3

    goto :goto_10

    :goto_56
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_27 .. :try_end_57} :catchall_52

    throw p0

    :cond_58
    return-object v0
.end method

.method public getSoftApModeConfiguration()Lcom/android/server/wifi/SoftApModeConfiguration;
    .registers 8

    .line 742
    new-instance v6, Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 743
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 744
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 747
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTetheringRequest()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;Ljava/lang/String;Landroid/net/TetheringManager$TetheringRequest;)V

    return-object v6
.end method

.method public isBridgedMode()Z
    .registers 2

    .line 644
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_13

    .line 645
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public stop()V
    .registers 4

    .line 633
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

    .line 634
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApManager{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
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

    .line 725
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 3

    .line 735
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCountryCode(Ljava/lang/String;)Z
    .registers 5

    .line 920
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    invoke-static {v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApDynamicCountryCodeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v1, 0x1

    .line 921
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 923
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

    .line 604
    const-string v0, "SoftApManager"

    const-string v1, "ACTION_WIFI_AP_DATA_LIMIT_CHANGED received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public updateSoftApDateLimitEND()V
    .registers 3

    .line 610
    const-string v0, "ACTION_WIFI_AP_DATA_LIMIT_END received"

    const-string v1, "SoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception p0

    .line 614
    const-string v0, "Error updating soft AP date limit end"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method public writeSoftApStartedEvent(I)V
    .registers 16

    .line 2485
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIsSoftApStartedEventWritten:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2488
    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIsSoftApStartedEventWritten:Z

    .line 2492
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 2493
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v1

    .line 2494
    array-length v3, v1

    if-lt v3, v0, :cond_17

    .line 2495
    aget v3, v1, v2

    goto :goto_18

    :cond_17
    move v3, v2

    .line 2497
    :goto_18
    array-length v4, v1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1e

    .line 2498
    aget v2, v1, v0

    .line 2500
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    move v13, v0

    move v8, v2

    move v7, v3

    goto :goto_2b

    :cond_28
    move v7, v2

    move v8, v7

    move v13, v8

    .line 2502
    :goto_2b
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 2503
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 2506
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->isBridgedModeSupported(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)Z

    move-result v9

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 2507
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->isStaApConcurrencySupported()Z

    move-result v10

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 2508
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->isStaWithBridgedModeSupported(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)Z

    move-result v11

    .line 2509
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getCurrentStaFreqMhz()I

    move-result v12

    move v5, p1

    .line 2502
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wifi/WifiMetrics;->writeSoftApStartedEvent(ILcom/android/server/wifi/ActiveModeManager$SoftApRole;IIZZZII)V

    return-void
.end method
