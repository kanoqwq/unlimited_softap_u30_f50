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

.field public static final SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "SoftApManager Soft AP Send Message Timeout"

.field private static final TAG:Ljava/lang/String; = "SoftApManager"


# instance fields
.field private mAllowedClientList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mApConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

.field private mApInterfaceName:Ljava/lang/String;

.field private mBlockedClientList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/android/server/wifi/WifiContext;

.field private final mCountryCode:Ljava/lang/String;

.field private mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

.field private mCurrentSoftApInfo:Landroid/net/wifi/SoftApInfo;

.field private mDefaultShutDownTimeoutMills:J

.field private mEnableNat:Z

.field private mEverReportMetricsForMaxClient:Z

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mIfaceIsDestroyed:Z

.field private mIfaceIsUp:Z

.field private mIsRandomizeBssid:Z

.field private final mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

.field private mRole:I

.field private final mSarManager:Lcom/android/server/wifi/SarManager;

.field private final mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private final mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

.field mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

.field private mStartTimestamp:Ljava/lang/String;

.field private final mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

.field private mTargetRole:I

.field private mTimeoutEnabled:Z

.field private final mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 125
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/SoftApManager;->FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiContext;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Lcom/android/server/wifi/ActiveModeManager$Listener;Landroid/net/wifi/WifiManager$SoftApCallback;Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/server/wifi/SoftApModeConfiguration;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/SarManager;Lcom/android/server/wifi/BaseWifiDiagnostics;)V
    .registers 15

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v0}, Landroid/net/wifi/SoftApInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfo:Landroid/net/wifi/SoftApInfo;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mConnectedClients:Ljava/util/List;

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mEnableNat:Z

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:I

    .line 130
    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mTargetRole:I

    .line 132
    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 143
    new-instance v0, Lcom/android/server/wifi/SoftApManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SoftApManager$1;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 180
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Lcom/android/server/wifi/WifiContext;

    .line 181
    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 182
    new-instance v0, Lcom/android/server/wifi/SoftApNotifier;

    invoke-direct {v0, p1, p3}, Lcom/android/server/wifi/SoftApNotifier;-><init>(Lcom/android/server/wifi/WifiContext;Lcom/android/server/wifi/FrameworkFacade;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

    .line 183
    iput-object p4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 184
    iput-object p5, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    .line 185
    iput-object p6, p0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    .line 186
    iput-object p7, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 187
    iput-object p8, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 188
    invoke-virtual {p9}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 189
    invoke-virtual {p9}, Lcom/android/server/wifi/SoftApModeConfiguration;->getCapability()Landroid/net/wifi/SoftApCapability;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    if-nez p1, :cond_5a

    .line 192
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 201
    :cond_5a
    new-instance p3, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {p9}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p4

    iget-object p5, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-direct {p3, p4, p1, p5}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)V

    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 203
    iput-object p10, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 204
    iput-object p11, p0, Lcom/android/server/wifi/SoftApManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    .line 205
    iput-object p12, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    .line 206
    new-instance p3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p3, p0, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    if-eqz p1, :cond_92

    .line 208
    new-instance p2, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    .line 209
    new-instance p2, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 210
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 212
    :cond_92
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Lcom/android/server/wifi/WifiContext;

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050020

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutDownTimeoutMills:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ActiveModeManager$Listener;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/SoftApManager;)I
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->startSoftAp()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/SoftApManager;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/SoftApModeConfiguration;)Lcom/android/server/wifi/SoftApModeConfiguration;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApCapability;)Landroid/net/wifi/SoftApCapability;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/server/wifi/SoftApManager;Z)Z
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mConnectedClients:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/SoftApManager;)J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultShutDownTimeoutMills:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->checkSoftApClient(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfo:Landroid/net/wifi/SoftApInfo;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiContext;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Lcom/android/server/wifi/WifiContext;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mSarManager:Lcom/android/server/wifi/SarManager;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/android/server/wifi/SoftApManager;Z)Z
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/wifi/SoftApManager;I)I
    .registers 2

    .line 71
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIsRandomizeBssid:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/SoftApManager;Z)Z
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/SoftApManager;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsDestroyed:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/SoftApManager;Z)Z
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsDestroyed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/SoftApManager;III)V
    .registers 4

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object p0
.end method

.method private checkSoftApClient(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z
    .registers 8

    .line 520
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 525
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mBlockedClientList:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "SoftApManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_40

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Force disconnect for client: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "in blocked list"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 528
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p2

    .line 527
    invoke-virtual {p1, p0, p2, v3}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    return v3

    .line 532
    :cond_40
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mAllowedClientList:Ljava/util/Set;

    .line 533
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 534
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {p1, p2, v3}, Landroid/net/wifi/WifiManager$SoftApCallback;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Force disconnect for unauthorized client: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 538
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p2

    .line 537
    invoke-virtual {p1, p0, p2, v3}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    return v3

    .line 542
    :cond_77
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApCapability;->getMaxSupportedClients()I

    move-result v0

    .line 543
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v4

    if-lez v4, :cond_8b

    .line 544
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 547
    :cond_8b
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mConnectedClients:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_c3

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No more room for new client:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 550
    invoke-virtual {p2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v4

    .line 549
    invoke-virtual {p1, v2, v4, v1}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    .line 552
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {p1, p2, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 555
    iget-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    if-nez p1, :cond_c2

    .line 556
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {p1, v0}, Lcom/android/server/wifi/WifiMetrics;->noteSoftApClientBlocked(I)V

    .line 557
    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mEverReportMetricsForMaxClient:Z

    :cond_c2
    return v3

    :cond_c3
    return v1
.end method

.method private disconnectAllClients()V
    .registers 6

    .line 503
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mConnectedClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiClient;

    .line 504
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    goto :goto_6

    :cond_1f
    return-void
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getCurrentState()Lcom/android/wifi/x/com/android/internal/util/IState;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 313
    invoke-interface {p0}, Lcom/android/wifi/x/com/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "StateMachine not active"

    return-object p0
.end method

.method private setCountryCode()I
    .registers 8

    .line 413
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    .line 414
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SoftApManager"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1f

    if-ne v0, v4, :cond_1e

    const-string p0, "Invalid country code, required for setting up soft ap in 5GHz"

    .line 417
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1e
    return v3

    .line 424
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 425
    invoke-virtual {p0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 424
    invoke-virtual {v1, v5, p0}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_39

    if-ne v0, v4, :cond_39

    const-string p0, "Failed to set country code, required for setting up soft ap in 5GHz"

    .line 429
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_39
    return v3
.end method

.method private setMacAddress()I
    .registers 7

    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v0

    const-string v1, "SoftApManager"

    if-eqz v0, :cond_26

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bssid MacAddress:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_64

    .line 380
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiNative;->getFactoryMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFactoryMacAddress MacAddress:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    if-nez v0, :cond_54

    const-string p0, "failed to get factory MAC address"

    .line 385
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 389
    :cond_54
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, p0, v0}, Lcom/android/server/wifi/WifiNative;->setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z

    move-result p0

    if-nez p0, :cond_63

    const-string p0, "failed to reset to factory MAC address; continuing with current MAC"

    .line 390
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return v2

    .line 396
    :cond_64
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiNative;->isSetMacAddressSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 397
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, p0, v0}, Lcom/android/server/wifi/WifiNative;->setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z

    move-result p0

    if-nez p0, :cond_84

    const-string p0, "failed to set explicitly requested MAC address"

    .line 398
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 401
    :cond_7e
    iget-boolean p0, p0, Lcom/android/server/wifi/SoftApManager;->mIsRandomizeBssid:Z

    if-nez p0, :cond_84

    const/4 p0, 0x3

    return p0

    :cond_84
    if-eqz v0, :cond_9e

    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end MacAddress:  "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    return v2
.end method

.method private startSoftAp()I
    .registers 11

    .line 443
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    const/4 v7, 0x2

    const-string v8, "SoftApManager"

    if-eqz v0, :cond_d0

    .line 444
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto/16 :goto_d0

    .line 449
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

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

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->setMacAddress()I

    move-result v1

    if-eqz v1, :cond_46

    return v1

    .line 457
    :cond_46
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->setCountryCode()I

    move-result v1

    if-eqz v1, :cond_4d

    return v1

    .line 463
    :cond_4d
    new-instance v9, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v9, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 465
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v6

    .line 468
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Lcom/android/server/wifi/WifiContext;

    .line 469
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    move-object v4, v9

    move-object v5, v0

    .line 468
    invoke-static/range {v1 .. v6}, Lcom/android/server/wifi/util/ApConfigUtil;->updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration$Builder;Landroid/net/wifi/SoftApConfiguration;Z)I

    move-result v1

    if-eqz v1, :cond_72

    const-string p0, "Failed to update AP band and channel"

    .line 472
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 476
    :cond_72
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v1

    if-eqz v1, :cond_7d

    const-string v1, "SoftAP is a hidden network"

    .line 477
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_7d
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApCapability:Landroid/net/wifi/SoftApCapability;

    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->checkSupportAllConfiguration(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 481
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Configuration detect! config = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    .line 485
    :cond_9b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 486
    invoke-virtual {v9}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 485
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->startSoftAp(Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z

    move-result v0

    if-nez v0, :cond_b1

    const-string p0, "Soft AP start failed"

    .line 487
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 491
    :cond_b1
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;->startLogging(Ljava/lang/String;)V

    .line 492
    sget-object v0, Lcom/android/server/wifi/SoftApManager;->FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimestamp:Ljava/lang/String;

    const-string p0, "Soft AP is started "

    .line 493
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_d0
    :goto_d0
    const-string p0, "Unable to start soft AP without valid configuration"

    .line 445
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private stopSoftAp()V
    .registers 3

    .line 513
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->disconnectAllClients()V

    .line 514
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiDiagnostics:Lcom/android/server/wifi/BaseWifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiDiagnostics;->stopLogging(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    const-string p0, "SoftApManager"

    const-string v0, "Soft AP is stopped"

    .line 516
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateApState(III)V
    .registers 7

    .line 327
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1, p3}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStateChanged(II)V

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 331
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "wifi_state"

    .line 332
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previous_wifi_state"

    .line 333
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p2, 0xe

    if-ne p1, p2, :cond_24

    const-string v1, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    .line 336
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_24
    const/4 p3, 0x1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2b

    if-ne p1, p2, :cond_2d

    .line 343
    :cond_2b
    iput-boolean p3, p0, Lcom/android/server/wifi/SoftApManager;->mEnableNat:Z

    .line 345
    :cond_2d
    iget-boolean p2, p0, Lcom/android/server/wifi/SoftApManager;->mEnableNat:Z

    const-string v2, "extra_enable_nat"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    const-string v2, "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {p2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p2

    const-string v2, "android.net.wifi.extra.WIFI_AP_MODE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Lcom/android/server/wifi/WifiContext;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, v2}, Landroid/content/ContextWrapper;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 353
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.meizu.connectivitysettings"

    const-string v2, "com.meizu.connectivitysettings.tether.TetherDataMonitor"

    .line 354
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_restore_use_current"

    .line 360
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p3, 0xd

    const-string v0, "SoftApManager"

    if-ne p1, p3, :cond_6f

    .line 362
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Lcom/android/server/wifi/WifiContext;

    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string p0, "Start tether data monitor"

    .line 363
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    :cond_6f
    if-ne p1, v1, :cond_7b

    const-string p1, "Stop tether data monitor"

    .line 365
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Lcom/android/server/wifi/WifiContext;

    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    :cond_7b
    :goto_7b
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string v0, "--Dump of SoftApManager--"

    .line 290
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
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

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApInterfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIfaceIsUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoftApCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApConfig.targetMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mApConfig.SoftApConfiguration.SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mApConfig.SoftApConfiguration.mBand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mApConfig.SoftApConfiguration.hiddenSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConnectedClients.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mConnectedClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSoftApInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCurrentSoftApInfo:Landroid/net/wifi/SoftApInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getRole()I
    .registers 1

    .line 254
    iget p0, p0, Lcom/android/server/wifi/SoftApManager;->mRole:I

    return p0
.end method

.method public isStopping()Z
    .registers 3

    .line 249
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mTargetRole:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iget p0, p0, Lcom/android/server/wifi/SoftApManager;->mRole:I

    if-eq p0, v1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public setRole(I)V
    .registers 4

    .line 260
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mRole:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkState(Z)V

    .line 261
    sget-object v0, Lcom/android/server/wifi/ActiveModeManager;->SOFTAP_ROLES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkState(Z)V

    .line 262
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mTargetRole:I

    .line 263
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mRole:I

    return-void
.end method

.method public start()V
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " currentstate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mApInterfaceName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 230
    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mTargetRole:I

    .line 231
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 232
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    const/16 v2, 0xa

    if-eqz v0, :cond_38

    const/16 v0, 0xd

    .line 233
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    goto :goto_48

    :cond_38
    const/16 v0, 0xc

    .line 236
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    goto :goto_48

    :cond_3e
    const/16 v0, 0xb

    .line 240
    invoke-direct {p0, v0, v0, v1}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mModeListener:Lcom/android/server/wifi/ActiveModeManager$Listener;

    invoke-interface {v0}, Lcom/android/server/wifi/ActiveModeManager$Listener;->onStopped()V

    .line 244
    :goto_48
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    return-void
.end method

.method public updateCapability(Landroid/net/wifi/SoftApCapability;)V
    .registers 3

    .line 272
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 3

    .line 282
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
