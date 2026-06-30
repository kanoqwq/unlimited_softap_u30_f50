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

.field private static final ZTE_FEATURE_MBB_HTTP_REDIRECT:Z

.field public static final ZTE_FEATURE_PV_AR:Z

.field public static final ZTE_FEATURE_WIFI_FOR_U30PRO:Z

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

.field private mIsUsbCharging:Z

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

.field private mWifiTetheringLimitAlertName:Ljava/lang/String;

.field private final mWifiTetheringQuotaObserver:Landroid/net/INetworkManagementEventObserver;

.field private mWifiTetheringWithLimitStarted:Z

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

.method static bridge synthetic -$$Nest$fgetmIsUsbCharging(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIsUsbCharging:Z

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

.method static bridge synthetic -$$Nest$fputmIsUsbCharging(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIsUsbCharging:Z

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

.method static bridge synthetic -$$Nest$mgetHotspotSleepStoreState(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getHotspotSleepStoreState()Z

    move-result p0

    return p0
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

.method static bridge synthetic -$$Nest$mhandleMacListChange(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->handleMacListChange()V

    return-void
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

.method static bridge synthetic -$$Nest$mremoveMacFromBlacklist(Lcom/android/server/wifi/SoftApManager;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->removeMacFromBlacklist(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCountryCode(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->setCountryCode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetHotspotSleepStoreState(Lcom/android/server/wifi/SoftApManager;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->setHotspotSleepStoreState(Z)V

    return-void
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

    .line 284
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/SoftApManager;->FORMATTER:Ljava/text/SimpleDateFormat;

    .line 310
    const-string v0, "ZTE_FEATURE_WIFI_FOR_U30PRO"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/feature/Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/SoftApManager;->ZTE_FEATURE_WIFI_FOR_U30PRO:Z

    .line 311
    const-string v0, "ro.vendor.feature.zte_feature_mbb_http_redirect"

    .line 312
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/SoftApManager;->ZTE_FEATURE_MBB_HTTP_REDIRECT:Z

    .line 313
    const-string v0, "PV_VERSION"

    invoke-static {v0, v1}, Lcom/zte/feature/Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/SoftApManager;->ZTE_FEATURE_PV_AR:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiContext;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/coex/CoexManager;Lcom/android/server/wifi/InterfaceConflictManager;Lcom/android/server/wifi/ActiveModeManager$Listener;Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/server/wifi/SoftApModeConfiguration;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/SarManager;Lcom/android/server/wifi/WifiDiagnostics;Lcom/android/server/wifi/SoftApNotifier;Lcom/android/server/wifi/ClientModeImplMonitor;Lcom/android/server/wifi/ActiveModeWarden;JLandroid/os/WorkSource;Lcom/android/server/wifi/ActiveModeManager$SoftApRole;Z)V
    .registers 36

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, p16

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v4, Lcom/android/server/wifi/SoftApManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/SoftApManager$1;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v4, v0, Lcom/android/server/wifi/SoftApManager;->mCmiListener:Lcom/android/server/wifi/ClientModeImplListener;

    const/4 v5, 0x0

    .line 238
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mVerboseLoggingEnabled:Z

    .line 261
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    .line 267
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mConnectedClientWithApInfoMap:Ljava/util/Map;

    .line 268
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    .line 271
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 272
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    const/4 v6, 0x0

    .line 288
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    .line 290
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    .line 293
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    .line 295
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    .line 298
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 301
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    .line 304
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mIsPlugged:Z

    const/16 v7, 0xb

    .line 306
    iput v7, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentApState:I

    .line 308
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mIsSoftApStartedEventWritten:Z

    .line 314
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mIsUsbCharging:Z

    .line 333
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApTimeoutMessageMap:Ljava/util/Map;

    const-wide/32 v7, 0x100000

    .line 336
    iput-wide v7, v0, Lcom/android/server/wifi/SoftApManager;->MB_IN_BYTES:J

    .line 339
    const-string v7, ""

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    .line 343
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringWithLimitStarted:Z

    .line 344
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    .line 345
    iput-boolean v5, v0, Lcom/android/server/wifi/SoftApManager;->runAutoRestart:Z

    .line 354
    new-instance v7, Lcom/android/server/wifi/SoftApManager$2;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/SoftApManager$2;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringQuotaObserver:Landroid/net/INetworkManagementEventObserver;

    .line 397
    new-instance v7, Lcom/android/server/wifi/SoftApManager$3;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/SoftApManager$3;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApHalCallback:Lcom/android/server/wifi/WifiNative$SoftApHalCallback;

    .line 538
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    move-object/from16 v7, p3

    .line 539
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object/from16 v7, p15

    .line 540
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

    move-object/from16 v7, p4

    .line 541
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v7, p5

    .line 542
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    move-object/from16 v7, p6

    .line 543
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    move-object/from16 v7, p7

    .line 544
    iput-object v7, v0, Lcom/android/server/wifi/SoftApManager;->mInterfaceConflictManager:Lcom/android/server/wifi/InterfaceConflictManager;

    .line 545
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 546
    new-instance v6, Lcom/android/server/wifi/SoftApManager$4;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/SoftApManager$4;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    goto :goto_a5

    .line 557
    :cond_a3
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCoexListener:Lcom/android/server/wifi/coex/CoexManager$CoexListener;

    .line 559
    :goto_a5
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    .line 560
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

    .line 561
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    move-object/from16 v6, p9

    .line 562
    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    .line 563
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 564
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 565
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getCapability()Landroid/net/wifi/SoftApCapability;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    .line 567
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v6, :cond_fe

    .line 568
    const-string v6, "mCurrentSoftApConfiguration is null so get"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_fe
    new-instance v6, Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 576
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v8

    iget-object v9, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v10, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    iget-object v11, v0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    .line 580
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

    .line 581
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v6, :cond_161

    .line 582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBand : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v6

    if-nez v6, :cond_147

    const/4 v6, 0x1

    goto :goto_148

    :cond_147
    move v6, v5

    :goto_148
    iput-boolean v6, v0, Lcom/android/server/wifi/SoftApManager;->mIsUnsetBssid:Z

    .line 584
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v8, 0x8

    invoke-virtual {v6, v8, v9}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v6

    if-eqz v6, :cond_161

    .line 586
    const-string v6, "randomizeBssidIfUnset"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2, p1, v6}, Lcom/android/server/wifi/WifiApConfigStore;->randomizeBssidIfUnset(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 591
    :cond_161
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

    .line 592
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Bssid : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 593
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " HiddenSsid : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 594
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " MaxChannelBandwidth : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 595
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getMaxChannelBandwidth()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " SecurityType : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 596
    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p12

    .line 598
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    move-object/from16 v2, p13

    .line 599
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    move-object/from16 v2, p14

    .line 600
    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    .line 601
    new-instance v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-object v6, p2

    invoke-direct {v2, p0, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 602
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 603
    invoke-static {v6}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    .line 604
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->configureInternalConfiguration()V

    .line 605
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050054

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    .line 607
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

    .line 610
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f02002b

    .line 611
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wifi/SoftApManager;->mIsDisableShutDownBridgedModeIdleInstanceTimerWhenPlugged:Z

    .line 613
    iput-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mCmiMonitor:Lcom/android/server/wifi/ClientModeImplMonitor;

    move-object/from16 v1, p17

    .line 614
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mActiveModeWarden:Lcom/android/server/wifi/ActiveModeWarden;

    .line 615
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ClientModeImplMonitor;->registerListener(Lcom/android/server/wifi/ClientModeImplListener;)V

    .line 616
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->updateSafeChannelFrequencyList()V

    move-wide/from16 v3, p18

    .line 617
    iput-wide v3, v0, Lcom/android/server/wifi/SoftApManager;->mId:J

    move-object/from16 v1, p21

    .line 618
    iput-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move/from16 v1, p22

    .line 619
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SoftApManager;->enableVerboseLogging(Z)V

    move-object/from16 v1, p20

    .line 620
    invoke-virtual {v2, v5, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 622
    sget-boolean v1, Lcom/android/server/wifi/SoftApManager;->ZTE_FEATURE_MBB_HTTP_REDIRECT:Z

    if-eqz v1, :cond_236

    sget-boolean v1, Lcom/android/server/wifi/SoftApManager;->ZTE_FEATURE_PV_AR:Z

    if-nez v1, :cond_236

    .line 623
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->listenToSomeWifiMacNeedDisconnect()V

    :cond_236
    return-void
.end method

.method private addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V
    .registers 6

    .line 1148
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

    .line 1150
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mPendingDisconnectClients:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1153
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private addToBlacklist(Ljava/util/List;)V
    .registers 5

    .line 2850
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_12

    .line 2852
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No current SoftAP configuration, cannot add blacklist"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_e
    move-exception p1

    goto :goto_3a

    :catch_10
    move-exception p1

    goto :goto_57

    .line 2856
    :cond_12
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 2858
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2861
    :cond_1d
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2862
    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2863
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2865
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 2866
    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBlockedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2867
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 2868
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->updateChangeableConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    :try_end_39
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_39} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_39} :catch_e

    goto :goto_73

    .line 2872
    :goto_3a
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftAP state exception, cannot add blacklist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 2870
    :goto_57
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No permission to add blacklist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    return-void
.end method

.method private checkSoftApClient(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z
    .registers 8

    .line 1167
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 1172
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    .line 1173
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

    .line 1174
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 1175
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 1174
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_47

    .line 1177
    invoke-direct {p0, p2, v2}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    :cond_47
    return v2

    .line 1182
    :cond_48
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 1183
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 1184
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 1186
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

    .line 1187
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 1188
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 1187
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_88

    .line 1190
    invoke-direct {p0, p2, v2}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    :cond_88
    return v2

    .line 1195
    :cond_89
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApCapability;->getMaxSupportedClients()I

    move-result v0

    .line 1196
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v3

    if-lez v3, :cond_9d

    .line 1197
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1200
    :cond_9d
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_e1

    .line 1201
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No more room for new client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 1203
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v4

    .line 1202
    invoke-virtual {p1, v3, v4, v1}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    move-result p1

    if-nez p1, :cond_d0

    .line 1205
    invoke-direct {p0, p2, v1}, Lcom/android/server/wifi/SoftApManager;->addClientToPendingDisconnectionList(Landroid/net/wifi/WifiClient;I)V

    .line 1208
    :cond_d0
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 1211
    iget-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    if-nez p1, :cond_e0

    .line 1212
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {p1, v0}, Lcom/android/server/wifi/WifiMetrics;->noteSoftApClientBlocked(I)V

    .line 1213
    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    :cond_e0
    return v2

    :cond_e1
    return v1
.end method

.method private configureInternalConfiguration()V
    .registers 3

    .line 474
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_5

    return-void

    .line 477
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    .line 478
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 479
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 480
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 481
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    return-void
.end method

.method private disconnectAllClients()V
    .registers 6

    .line 1118
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

    .line 1119
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

.method private disconnectClients(Ljava/util/List;)V
    .registers 7

    .line 2834
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    .line 2836
    :try_start_10
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    .line 2841
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully disconnected MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_30} :catch_31

    goto :goto_4

    :catch_31
    move-exception v1

    .line 2843
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to disconnect MAC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", error: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_57
    return-void
.end method

.method private filterValidMacs([Ljava/lang/String;)Ljava/util/List;
    .registers 10

    .line 2820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2821
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_42

    aget-object v3, p1, v2

    .line 2822
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_3f

    .line 2824
    :cond_12
    :try_start_12
    invoke-static {v3}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v4

    .line 2825
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_3f

    :catch_1a
    move-exception v4

    .line 2827
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid MAC format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_42
    return-object v0
.end method

.method private getConnectedClientList()Ljava/util/List;
    .registers 3

    .line 1159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1160
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

    .line 1161
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_1f
    return-object v0
.end method

.method private getCurrentStaFreqMhz()I
    .registers 2

    .line 2594
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

    .line 2595
    invoke-interface {v0}, Lcom/android/server/wifi/ClientMode;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2597
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

    .line 845
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getCurrentState()Lcom/android/wifi/x/com/android/internal/util/IState;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 848
    invoke-interface {p0}, Lcom/android/wifi/x/com/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 851
    :cond_d
    const-string p0, "StateMachine not active"

    return-object p0
.end method

.method private getHighestFrequencyInstance(Ljava/util/Set;)Ljava/lang/String;
    .registers 6

    .line 696
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

    .line 697
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApInfo;

    if-nez v3, :cond_28

    .line 699
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid instance name, no way to get the frequency"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string p0, ""

    return-object p0

    .line 702
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

.method private getHotspotSleepStoreState()Z
    .registers 4

    .line 860
    const-string v0, "persist.sys.hotspot.sleep.store.state"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 862
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHotspotSleepStoreState  HOTSPOT state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getShutdownIdleInstanceInBridgedModeTimeoutMillis()J
    .registers 5

    .line 682
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 683
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBridgedModeOpportunisticShutdownTimeoutMillisInternal()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    goto :goto_f

    .line 684
    :cond_d
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownIdleInstanceInBridgedModeTimeoutMillis:J

    :goto_f
    return-wide v0
.end method

.method private getShutdownTimeoutMillis()J
    .registers 5

    .line 677
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    goto :goto_f

    .line 678
    :cond_d
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutdownTimeoutMillis:J

    :goto_f
    return-wide v0
.end method

.method public static getSoftApInterfaceName()Ljava/lang/String;
    .registers 1

    .line 1221
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->mSoftApInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method private getTag()Ljava/lang/String;
    .registers 3

    .line 649
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

    .line 688
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_f

    .line 689
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getVendorData()Ljava/util/List;

    move-result-object p0

    goto :goto_14

    .line 690
    :cond_f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_14
    return-object p0
.end method

.method private handleMacListChange()V
    .registers 6

    .line 2790
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    .line 2791
    invoke-virtual {v0}, Landroid/net/wifi/WifiContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_wifi_mac_need_disconnect"

    .line 2790
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2794
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changes to the MAC list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    return-void

    .line 2800
    :cond_2b
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2801
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager;->filterValidMacs([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2803
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    return-void

    .line 2807
    :cond_3c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager;->disconnectClients(Ljava/util/List;)V

    .line 2809
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager;->addToBlacklist(Ljava/util/List;)V

    .line 2810
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 2811
    new-instance v2, Lcom/android/server/wifi/SoftApManager$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wifi/SoftApManager$6;-><init>(Lcom/android/server/wifi/SoftApManager;Ljava/util/List;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleStartSoftApFailure(I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1092
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

    .line 1104
    iget v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentApState:I

    invoke-direct {p0, v1, v3, v0}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    .line 1107
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    .line 1108
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 1109
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    invoke-interface {v0, p0}, Lcom/android/server/wifi/ActiveModeManager$Listener;->onStartFailure(Lcom/android/server/wifi/ActiveModeManager;)V

    .line 1110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager;->writeSoftApStartedEvent(I)V

    return-void
.end method

.method private isBridgeRequired()Z
    .registers 2

    .line 673
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

    .line 348
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->IS_DEBUG_BUILD:Ljava/lang/Boolean;

    if-nez v0, :cond_20

    .line 349
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

    .line 351
    :cond_20
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->IS_DEBUG_BUILD:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isOweTransition()Z
    .registers 2

    .line 662
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_13

    .line 663
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

.method private listenToSomeWifiMacNeedDisconnect()V
    .registers 6

    .line 1126
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    invoke-virtual {v0}, Landroid/net/wifi/WifiContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_wifi_mac_need_disconnect"

    .line 1127
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/SoftApManager$5;

    new-instance v3, Landroid/os/Handler;

    .line 1128
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/SoftApManager$5;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Handler;)V

    const/4 p0, 0x0

    .line 1126
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private onL2Connected(Lcom/android/server/wifi/ConcreteClientModeManager;)V
    .registers 4

    .line 838
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onL2Connected called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized removeMacFromBlacklist(Ljava/util/List;)V
    .registers 6

    monitor-enter p0

    .line 2879
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_15

    .line 2881
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No current SoftAP configuration, cannot remove blacklist"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_13
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 2882
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    goto/16 :goto_87

    :catch_13
    move-exception p1

    goto :goto_69

    .line 2885
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 2886
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_5e

    .line 2892
    :cond_22
    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 2894
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully removed temporary MACs, remaining blacklist size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {p1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 2897
    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBlockedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2898
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 2899
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->updateChangeableConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    goto :goto_85

    .line 2902
    :cond_54
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No temporary MACs need to be removed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 2887
    :cond_5e
    :goto_5e
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Blacklist is empty, no need to remove"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_67} :catch_13
    .catchall {:try_start_15 .. :try_end_67} :catchall_10

    .line 2888
    monitor-exit p0

    return-void

    .line 2905
    :goto_69
    :try_start_69
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update blacklist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_69 .. :try_end_85} :catchall_10

    .line 2907
    :goto_85
    monitor-exit p0

    return-void

    :goto_87
    monitor-exit p0

    throw p1
.end method

.method private setCountryCode()Z
    .registers 10

    .line 967
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    .line 968
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "softapmanager: setCountryCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v1, :cond_4b

    if-eq v0, v5, :cond_32

    if-ne v0, v4, :cond_31

    goto :goto_32

    :cond_31
    return v3

    .line 972
    :cond_32
    :goto_32
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

    .line 979
    :cond_4b
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 980
    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 979
    invoke-virtual {v1, v6, v7}, Lcom/android/server/wifi/WifiNative;->setApCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7a

    if-eq v0, v5, :cond_61

    if-ne v0, v4, :cond_7a

    .line 984
    :cond_61
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

    :cond_7a
    return v3
.end method

.method private setHotspotSleepStoreState(Z)V
    .registers 4

    .line 855
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHotspotSleepStoreState  state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string p0, "persist.sys.hotspot.sleep.store.state"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMacAddress()I
    .registers 4

    .line 924
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setMacAddress mac"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->isApSetMacAddressSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 936
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiNative;->setApMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 937
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to set explicitly requested MAC address"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb

    return p0

    .line 940
    :cond_2f
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIsUnsetBssid:Z

    if-nez p0, :cond_35

    const/4 p0, 0x4

    return p0

    :cond_35
    const/4 p0, 0x1

    return p0
.end method

.method private startSoftAp()I
    .registers 11

    .line 999
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1000
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1003
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

    .line 1006
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    .line 1009
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->setMacAddress()I

    .line 1015
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 1018
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    .line 1019
    invoke-virtual {v1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    move-object v7, v0

    .line 1018
    invoke-static/range {v3 .. v9}, Lcom/android/server/wifi/util/ApConfigUtil;->updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/coex/CoexManager;Landroid/content/res/Resources;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration$Builder;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8b

    .line 1022
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to update AP band and channel"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1026
    :cond_8b
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiTetheringLimitAlertName:Ljava/lang/String;

    .line 1028
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 1029
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SoftAP is a hidden network"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_a0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-static {v1, v4}, Lcom/android/server/wifi/util/ApConfigUtil;->checkSupportAllConfiguration(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)Z

    move-result v1

    if-nez v1, :cond_c6

    .line 1034
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

    .line 1039
    :cond_c6
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 1040
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 1044
    invoke-virtual {v6}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v6

    if-ne v6, v3, :cond_d8

    move v6, v3

    goto :goto_d9

    :cond_d8
    move v6, v2

    :goto_d9
    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApHalCallback:Lcom/android/server/wifi/WifiNative$SoftApHalCallback;

    .line 1041
    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/android/server/wifi/WifiNative;->startSoftAp(Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration;ZLcom/android/server/wifi/WifiNative$SoftApHalCallback;)I

    move-result v4

    if-eq v4, v3, :cond_158

    .line 1048
    iget-boolean v3, p0, Lcom/android/server/wifi/SoftApManager;->runAutoRestart:Z

    if-nez v3, :cond_157

    .line 1049
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v1

    .line 1050
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    move v4, v2

    .line 1051
    :goto_f3
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_109

    .line 1052
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1053
    invoke-static {v5}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result v6

    if-eqz v6, :cond_106

    .line 1054
    invoke-virtual {v3, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_106
    add-int/lit8 v4, v4, 0x1

    goto :goto_f3

    .line 1057
    :cond_109
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eqz v4, :cond_113

    .line 1058
    invoke-virtual {v0, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_11c

    .line 1060
    :cond_113
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    .line 1061
    invoke-static {v2, v3}, Lcom/android/server/wifi/util/ApConfigUtil;->append24GToBandIf24GSupported(ILandroid/content/Context;)I

    move-result v2

    .line 1060
    invoke-virtual {v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1064
    :goto_11c
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 1065
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

    .line 1066
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and try to auto restart"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsDestroyed:Z

    if-nez v0, :cond_154

    .line 1069
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    :cond_154
    const/16 p0, 0x14

    return p0

    :cond_157
    return v4

    .line 1076
    :cond_158
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->startLogging(Ljava/lang/String;)V

    .line 1077
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimestamp:Ljava/lang/String;

    .line 1079
    invoke-direct {p0, v2}, Lcom/android/server/wifi/SoftApManager;->setHotspotSleepStoreState(Z)V

    .line 1080
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getHotspotSleepStoreState()Z

    .line 1081
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Soft AP is started "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private stopSoftAp()V
    .registers 3

    .line 1141
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->disconnectAllClients()V

    .line 1142
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->stopLogging(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1144
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Soft AP is stopped"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateApState(III)V
    .registers 8

    .line 875
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentApState:I

    .line 876
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;

    new-instance v1, Landroid/net/wifi/SoftApState;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 879
    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTetheringRequest()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-direct {v1, p1, p3, v2, v3}, Landroid/net/wifi/SoftApState;-><init>(IILandroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackInternal;->onStateChanged(Landroid/net/wifi/SoftApState;)V

    .line 881
    invoke-static {}, Lcom/android/server/wifi/WifiServiceExterned;->getInstance()Lcom/android/server/wifi/WifiServiceExterned;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiServiceExterned;->setSoftApState(I)V

    .line 884
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 885
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 886
    const-string v1, "wifi_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 887
    const-string v1, "previous_wifi_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xe

    if-ne p1, v1, :cond_8a

    .line 890
    const-string p1, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 891
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 893
    sget-boolean v1, Lcom/zte/wifi/ZteWifiUtils;->ZTE_FEATURE_WIFI_MINDSYNC:Z

    if-eqz v1, :cond_8a

    const/16 v1, 0xb

    .line 894
    const-string v2, "enable"

    if-eq p2, v1, :cond_5c

    const/16 v1, 0xc

    if-ne p2, v1, :cond_4e

    goto :goto_5c

    :cond_4e
    const/16 v1, 0xd

    if-eq p2, v1, :cond_56

    const/16 v1, 0xa

    if-ne p2, v1, :cond_61

    .line 899
    :cond_56
    const-string p2, "false"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 896
    :cond_5c
    :goto_5c
    const-string p2, "true"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_61
    :goto_61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "reason"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    const-string p3, "hotspot_on_off_failed"

    const/4 v1, 0x1

    invoke-static {p2, p3, p1, v1}, Lcom/zte/wifi/ZteWifiUtils;->sendHotspotMindSyncEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 906
    invoke-static {}, Lcom/android/server/wifi/WifiServiceExterned;->getInstance()Lcom/android/server/wifi/WifiServiceExterned;

    move-result-object p1

    const-string p2, "ap_failed"

    const-string p3, "ALL"

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wifi/WifiServiceExterned;->triggerErrorLogToMindSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_8a
    const-string p1, "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 913
    invoke-virtual {p1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p1

    .line 912
    const-string p2, "android.net.wifi.extra.WIFI_AP_MODE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 915
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastSv2()Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 916
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/wifi/WifiContext;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_b3

    .line 919
    :cond_ac
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiContext;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_b3
    return-void
.end method

.method private updateChangeableConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 6

    .line 485
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v0, :cond_82

    if-nez p1, :cond_8

    goto/16 :goto_82

    .line 488
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateChangeableConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xcb68ac8

    .line 496
    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_39

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_39

    const-wide/16 v0, -0x1

    .line 500
    :cond_39
    new-instance v2, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 502
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 503
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBlockedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 504
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setClientControlByUserEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 505
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 506
    invoke-virtual {v2, v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setShutdownTimeoutMillis(J)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 508
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 510
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result p1

    .line 509
    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBridgedModeOpportunisticShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 512
    :cond_79
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 513
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->configureInternalConfiguration()V

    :cond_82
    :goto_82
    return-void
.end method

.method private updateSafeChannelFrequencyList()V
    .registers 15

    .line 448
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v0, :cond_c

    goto/16 :goto_8a

    .line 451
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 452
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_4d

    aget v4, v0, v3

    .line 453
    sget-object v5, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v6, v5

    move v7, v2

    :goto_22
    if-ge v7, v6, :cond_4a

    aget v8, v5, v7

    and-int v9, v8, v4

    if-nez v9, :cond_2b

    goto :goto_47

    .line 457
    :cond_2b
    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v9, v8}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v9

    array-length v10, v9

    move v11, v2

    :goto_33
    if-ge v11, v10, :cond_47

    aget v12, v9, v11

    .line 458
    iget-object v13, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    .line 459
    invoke-static {v12, v8}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 458
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

    .line 463
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/coex/CoexManager;->getCoexRestrictions()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_62

    .line 464
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCoexManager:Lcom/android/server/wifi/coex/CoexManager;

    .line 465
    invoke-static {v2}, Lcom/android/server/wifi/util/ApConfigUtil;->getUnsafeChannelFreqsFromCoex(Lcom/android/server/wifi/coex/CoexManager;)Ljava/util/Set;

    move-result-object v2

    .line 464
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 467
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_8a

    .line 469
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

    .line 2640
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

    .line 2641
    invoke-virtual {v3}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/ScanResult;->toBand(I)I

    move-result v4

    or-int/2addr v6, v4

    .line 2642
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2643
    invoke-virtual {v3}, Landroid/net/wifi/SoftApInfo;->getWifiStandard()I

    move-result v14

    goto :goto_f

    .line 2647
    :cond_2f
    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v1, :cond_39

    .line 2648
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    move v13, v1

    goto :goto_3a

    :cond_39
    move v13, v2

    .line 2651
    :goto_3a
    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 2653
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/SoftApManager;->getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move-result-object v5

    .line 2655
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v7

    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 2656
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->isStaApConcurrencySupported()Z

    move-result v8

    iget-object v1, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 2657
    invoke-static {v1, v4}, Lcom/android/server/wifi/util/ApConfigUtil;->isStaWithBridgedModeSupported(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)Z

    move-result v9

    .line 2658
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

    .line 2651
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/wifi/WifiMetrics;->writeSoftApStoppedEvent(ILcom/android/server/wifi/ActiveModeManager$SoftApRole;IZZZIZIIIIZIILandroid/net/NetworkCapabilities;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of SoftApManager id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/SoftApManager;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
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

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApInterfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIfaceIsUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoftApCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpecifiedModeConfiguration.targetMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 803
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApCapability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
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

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBridgedModeOpportunisticsShutdownTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mBridgedModeOpportunisticsShutdownTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApInfoMap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSafeChannelFrequencyList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSafeChannelFrequencyList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/SoftApManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wifi/SoftApManager$$ExternalSyntheticLambda0;-><init>()V

    .line 813
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 814
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableVerboseLogging(Z)V
    .registers 2

    .line 820
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getBridgedApDowngradeIfaceInstanceForRemoval()Ljava/lang/String;
    .registers 4

    .line 779
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->isBridgedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2d

    .line 782
    :cond_10
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->getBridgedApInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 783
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    goto :goto_2d

    .line 786
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

    .line 645
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mId:J

    return-wide v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 1

    .line 735
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

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getPreviousRole()Lcom/android/server/wifi/ActiveModeManager$ClientRole;

    move-result-object p0

    return-object p0
.end method

.method public getRequestorWs()Landroid/os/WorkSource;
    .registers 1

    .line 740
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mRequestorWs:Landroid/os/WorkSource;

    return-object p0
.end method

.method public bridge synthetic getRole()Lcom/android/server/wifi/ActiveModeManager$Role;
    .registers 1

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move-result-object p0

    return-object p0
.end method

.method public getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;
    .registers 1

    .line 713
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mRole:Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    return-object p0
.end method

.method public getSTAListWithTime()Ljava/lang/String;
    .registers 6

    .line 2774
    const-string v0, ""

    .line 2775
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getConnectedClientList()Ljava/util/List;

    move-result-object v1

    .line 2776
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_58

    .line 2777
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiClient;

    .line 2778
    invoke-virtual {v2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2779
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 2780
    :try_start_27
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mDeviceClientsTime:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 2781
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

    .line 2783
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

    .line 766
    new-instance v6, Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 767
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 768
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSpecifiedModeConfiguration:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 771
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTetheringRequest()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;Ljava/lang/String;Landroid/net/TetheringManager$TetheringRequest;)V

    return-object v6
.end method

.method public isBridgedMode()Z
    .registers 2

    .line 668
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p0, :cond_13

    .line 669
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

    .line 657
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

    .line 658
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApManager{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
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

    .line 749
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 3

    .line 759
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCountryCode(Ljava/lang/String;)Z
    .registers 5

    .line 957
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    invoke-static {v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApDynamicCountryCodeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v1, 0x1

    .line 958
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 960
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

    .line 628
    const-string v0, "SoftApManager"

    const-string v1, "ACTION_WIFI_AP_DATA_LIMIT_CHANGED received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public updateSoftApDateLimitEND()V
    .registers 3

    .line 634
    const-string v0, "ACTION_WIFI_AP_DATA_LIMIT_END received"

    const-string v1, "SoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception p0

    .line 638
    const-string v0, "Error updating soft AP date limit end"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method public writeSoftApStartedEvent(I)V
    .registers 16

    .line 2609
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIsSoftApStartedEventWritten:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2612
    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIsSoftApStartedEventWritten:Z

    .line 2616
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 2617
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v1

    .line 2618
    array-length v3, v1

    if-lt v3, v0, :cond_17

    .line 2619
    aget v3, v1, v2

    goto :goto_18

    :cond_17
    move v3, v2

    .line 2621
    :goto_18
    array-length v4, v1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1e

    .line 2622
    aget v2, v1, v0

    .line 2624
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

    .line 2626
    :goto_2b
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 2627
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager;->getRole()Lcom/android/server/wifi/ActiveModeManager$SoftApRole;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 2630
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->isBridgedModeSupported(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)Z

    move-result v9

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 2631
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->isStaApConcurrencySupported()Z

    move-result v10

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/net/wifi/WifiContext;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 2632
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->isStaWithBridgedModeSupported(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)Z

    move-result v11

    .line 2633
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getCurrentStaFreqMhz()I

    move-result v12

    move v5, p1

    .line 2626
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wifi/WifiMetrics;->writeSoftApStartedEvent(ILcom/android/server/wifi/ActiveModeManager$SoftApRole;IIZZZII)V

    return-void
.end method
