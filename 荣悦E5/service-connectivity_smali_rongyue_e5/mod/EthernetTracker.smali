.class public Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EthernetTracker"

.field private static final sLog:Landroid/net/connectivity/com/android/net/module/util/SharedLog;


# instance fields
.field private final mConfigStore:Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;

.field private final mContext:Landroid/content/Context;

.field private final mDeps:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$Dependencies;

.field private mEthernetState:I

.field private final mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

.field private final mHandler:Landroid/os/Handler;

.field private final mIfaceMatch:Ljava/lang/String;

.field private volatile mIncludeTestInterfaces:Z

.field private final mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

.field private final mListeners:Landroid/os/RemoteCallbackList;

.field private final mNetd:Landroid/net/connectivity/android/net/INetd;

.field private final mNetlinkMonitor:Landroid/net/connectivity/com/android/net/module/util/ip/NetlinkMonitor;

.field private final mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

.field private final mTetheredInterfaceRequests:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;

.field private mTetheredInterfaceWasAvailable:Z

.field private mTetheringInterface:Ljava/lang/String;

.field private mTetheringInterfaceMode:I


# direct methods
.method public static synthetic $r8$lambda$6kTZsj20s50sn70QH2nC7f64UHg(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$dump$13(Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BEIHVgq1H3gE7H6dSF-cZ1vpto4(Ljava/lang/Runnable;Landroid/os/ConditionVariable;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$postAndWaitForRunnable$11(Ljava/lang/Runnable;Landroid/os/ConditionVariable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D3P7NOKIZAMnl92Z6EcZbCfLgAE(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$removeTestCapabilityData$8(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E8tVH9WRjimm-P4ebFnRXvQIME0(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$setIncludeTestInterfaces$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JJzntWxfq4LWS6mERGohRdBkiZA(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/IEthernetServiceListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$removeListener$5(Landroid/net/IEthernetServiceListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NOJFQG_d3TSac5wsYBhGzpHRBEU(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Ljava/lang/String;ZLandroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$setInterfaceEnabled$3(Ljava/lang/String;ZLandroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QH_mwSvCAA3WYsbBm8_OfM-yadI(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$releaseTetheredInterface$10(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qem-0ivcxQBnfnMvNtBx_SgjA_U(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Ljava/lang/String;Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;Landroid/net/IpConfiguration;Landroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$updateConfiguration$2(Ljava/lang/String;Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;Landroid/net/IpConfiguration;Landroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKHod07zrzkyXMkRl2B6Hn1fuE8(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$start$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y_BpcmpIlUBECa1JVm4zcqZaf7A(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Ljava/lang/String;Landroid/net/IpConfiguration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$updateIpConfiguration$1(Ljava/lang/String;Landroid/net/IpConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ehB24dZFvnDLFIbh9hZZ1rSwMkA(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/IEthernetServiceListener;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$addListener$4(Landroid/net/IEthernetServiceListener;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPVavFQwkUhGbHhqvgloMxUXmZc(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$requestTetheredInterface$9(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFPlv_yfgLoWIfTFcxPK6L8DMi8(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$setEthernetEnabled$12(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wrarcvjkXmTo7uBva6PT0SOR6MI(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->lambda$setIncludeTestInterfaces$6()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEthernetState(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;)I
    .registers 1

    iget p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mEthernetState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFactory(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;)Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetheringInterface(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misValidEthernetInterface(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->isValidEthernetInterface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeTrackInterface(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->maybeTrackInterface(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeUntetherInterface(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->maybeUntetherInterface()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTrackingInterface(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->stopTrackingInterface(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInterfaceState(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->updateInterfaceState(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsLog()Landroid/net/connectivity/com/android/net/module/util/SharedLog;
    .registers 1

    sget-object v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->sLog:Landroid/net/connectivity/com/android/net/module/util/SharedLog;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/connectivity/com/android/net/module/util/SharedLog;

    invoke-direct {v1, v0}, Landroid/net/connectivity/com/android/net/module/util/SharedLog;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->sLog:Landroid/net/connectivity/com/android/net/module/util/SharedLog;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;Landroid/net/connectivity/android/net/INetd;)V
    .registers 11

    new-instance v5, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$Dependencies;

    invoke-direct {v5}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$Dependencies;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;Landroid/net/connectivity/android/net/INetd;Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$Dependencies;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;Landroid/net/connectivity/android/net/INetd;Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$Dependencies;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIncludeTestInterfaces:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList-IA;)V

    iput-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceRequests:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;

    const/4 v1, 0x1

    iput v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterfaceMode:I

    iput-boolean v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceWasAvailable:Z

    iput v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mEthernetState:I

    iput-object p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    iput-object p4, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetd:Landroid/net/connectivity/android/net/INetd;

    iput-object p5, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mDeps:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$Dependencies;

    invoke-virtual {p5, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$Dependencies;->getInterfaceRegexFromResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIfaceMatch:Ljava/lang/String;

    invoke-virtual {p5, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$Dependencies;->getInterfaceConfigFromResource(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_3f
    if-ge v0, p2, :cond_49

    aget-object p3, p1, v0

    invoke-direct {p0, p3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->parseEthernetConfig(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_49
    new-instance p1, Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;

    invoke-direct {p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mConfigStore:Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;

    new-instance p1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetNetlinkMonitor;

    iget-object p2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetNetlinkMonitor;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetlinkMonitor:Landroid/net/connectivity/com/android/net/module/util/ip/NetlinkMonitor;

    return-void
.end method

.method private addInterface(Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetd:Landroid/net/connectivity/android/net/INetd;

    invoke-static {v1, p1}, Landroid/net/connectivity/com/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/connectivity/android/net/INetd;Ljava/lang/String;)Landroid/net/connectivity/android/net/InterfaceConfigurationParcel;

    move-result-object v0

    const-string v1, "down"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/NetdUtils;->hasFlag(Landroid/net/connectivity/android/net/InterfaceConfigurationParcel;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetd:Landroid/net/connectivity/android/net/INetd;

    invoke-static {v1, p1}, Landroid/net/connectivity/com/android/net/module/util/NetdUtils;->setInterfaceUp(Landroid/net/connectivity/android/net/INetd;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_19} :catch_1a

    goto :goto_31

    :catch_1a
    move-exception v1

    sget-object v2, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error upping interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    if-nez v0, :cond_4f

    sget-object p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interface config parcelable for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Bailing out."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4f
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getInterfaceMode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5b

    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->maybeUpdateServerModeInterfaceState(Ljava/lang/String;Z)V

    return-void

    :cond_5b
    iget-object v1, v0, Landroid/net/connectivity/android/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    if-nez v2, :cond_7b

    iget-object v2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    if-nez v2, :cond_7b

    const-string v2, "testtap\\d+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->createDefaultNetworkCapabilities(Z)Landroid/net/NetworkCapabilities;

    move-result-object v2

    :cond_7b
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getOrCreateIpConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;

    move-result-object v4

    sget-object v5, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tracking interface in client mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v5, p1, v1, v4, v2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->addInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;)V

    const-string v1, "running"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/NetdUtils;->hasFlag(Landroid/net/connectivity/android/net/InterfaceConfigurationParcel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {p0, p1, v3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->updateInterfaceLinkState(Ljava/lang/String;Z)Z

    :cond_a7
    return-void
.end method

.method private broadcastEthernetStateChange(I)V
    .registers 5

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->ensureRunningOnEthernetServiceThread()V

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    :try_start_c
    iget-object v2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/IEthernetServiceListener;

    invoke-interface {v2, p1}, Landroid/net/IEthernetServiceListener;->onEthernetStateChanged(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_17

    :catch_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private static createDefaultNetworkCapabilities(Z)Landroid/net/NetworkCapabilities;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->createNetworkCapabilities(ZLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    if-eqz p0, :cond_31

    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_36

    :cond_31
    const/16 p0, 0xc

    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :goto_36
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static createEthernetTrackerConfig(Ljava/lang/String;)Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetTrackerConfig;
    .registers 4

    const-string v0, "EthernetTrackerConfig requires non-null config"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetTrackerConfig;

    const-string v1, ";"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetTrackerConfig;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method private static createIpConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/IpConfiguration;
    .registers 2

    new-instance v0, Landroid/net/IpConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/IpConfiguration$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/net/IpConfiguration$Builder;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/IpConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/IpConfiguration$Builder;->build()Landroid/net/IpConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static createNetworkCapabilities(ZLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkCapabilities$Builder;
    .registers 8

    if-eqz p0, :cond_7

    invoke-static {}, Landroid/net/NetworkCapabilities$Builder;->withoutDefaultCapabilities()Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    goto :goto_c

    :cond_7
    new-instance p0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {p0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    :goto_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_5b

    :try_start_13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_24

    const/4 v2, 0x5

    if-eq v0, v2, :cond_24

    const/4 v2, 0x6

    if-ne v0, v2, :cond_5c

    :cond_24
    sget-object v2, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Override transport \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' is not supported. Defaulting to TRANSPORT_ETHERNET"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_3f} :catch_40

    goto :goto_5b

    :catch_40
    sget-object v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Override transport type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' could not be parsed. Defaulting to TRANSPORT_ETHERNET"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    :goto_5b
    move v0, v1

    :cond_5c
    :try_start_5c
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_79

    :catch_60
    sget-object p2, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid NetworkCapability.TRANSPORT_* value. Defaulting to TRANSPORT_ETHERNET"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    :goto_79
    const p2, 0x186a0

    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_90
    if-ge v0, p2, :cond_d1

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ce

    :try_start_9a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_a5} :catch_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9a .. :try_end_a5} :catch_a6

    goto :goto_ce

    :catch_a6
    sget-object v2, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid NetworkCapability.NET_CAPABILITY_* value"

    goto :goto_c4

    :catch_b3
    sget-object v2, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capability \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' could not be parsed"

    :goto_c4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    :goto_ce
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    :cond_d1
    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    return-object p0
.end method

.method private ensureRunningOnEthernetServiceThread()V
    .registers 3

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_11

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not running on EthernetService thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getInterfaceMode(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterfaceMode:I

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private getInterfaceRole(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->hasInterface(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getInterfaceMode(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_12

    return p1

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private getInterfaceState(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->hasInterface(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->getInterfaceState(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_f
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getInterfaceMode(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_17

    return p1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private getIpConfigurationForCallback(Ljava/lang/String;I)Landroid/net/IpConfiguration;
    .registers 3

    if-nez p2, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getOrCreateIpConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method private getOrCreateIpConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;
    .registers 2

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/IpConfiguration;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Landroid/net/IpConfiguration;

    invoke-direct {p0}, Landroid/net/IpConfiguration;-><init>()V

    sget-object p1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p0, p1}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    sget-object p1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p0, p1}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    return-object p0
.end method

.method private isValidEthernetInterface(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIfaceMatch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->isValidTestInterface(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private synthetic lambda$addListener$4(Landroid/net/IEthernetServiceListener;Z)V
    .registers 6

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$ListenerInfo;

    invoke-direct {v1, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$ListenerInfo;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getInterfaces(Z)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_1e

    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->unicastInterfaceStateChange(Landroid/net/IEthernetServiceListener;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1e
    iget p2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mEthernetState:I

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->unicastEthernetStateChange(Landroid/net/IEthernetServiceListener;I)V

    return-void
.end method

.method private synthetic lambda$dump$13(Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ethernet State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mEthernetState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    const-string v1, "enabled"

    goto :goto_1f

    :cond_1d
    const-string v1, "disabled"

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ethernet interface name filter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIfaceMatch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interface used for tethering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tethering interface mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterfaceMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tethered interface requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceRequests:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "IP Configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;->increaseIndent()Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ": "

    if-eqz v1, :cond_db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b1

    :cond_db
    invoke-virtual {p1}, Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;->decreaseIndent()Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println()V

    const-string v0, "Network Capabilities:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;->increaseIndent()Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f3

    :cond_11b
    invoke-virtual {p1}, Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;->decreaseIndent()Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println()V

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {p0, p2, p1, p3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->dump(Ljava/io/FileDescriptor;Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$postAndWaitForRunnable$11(Ljava/lang/Runnable;Landroid/os/ConditionVariable;)V
    .registers 2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private synthetic lambda$releaseTetheredInterface$10(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceRequests:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->maybeUntetherInterface()V

    return-void
.end method

.method private synthetic lambda$removeListener$5(Landroid/net/IEthernetServiceListener;)V
    .registers 2

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private static synthetic lambda$removeTestCapabilityData$8(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "testtap\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$requestTetheredInterface$9(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceRequests:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterfaceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget-boolean v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceWasAvailable:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->notifyTetheredInterfaceAvailable(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;Ljava/lang/String;)V

    :cond_17
    return-void

    :cond_18
    invoke-direct {p0, v1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->setTetheringInterfaceMode(I)V

    return-void
.end method

.method private synthetic lambda$setEthernetEnabled$12(Z)V
    .registers 3

    iget v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mEthernetState:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mEthernetState:I

    if-eqz p1, :cond_d

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->trackAvailableInterfaces()V

    goto :goto_10

    :cond_d
    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->untrackFactoryInterfaces()V

    :goto_10
    iget p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mEthernetState:I

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->broadcastEthernetStateChange(I)V

    return-void
.end method

.method private synthetic lambda$setIncludeTestInterfaces$6()V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->trackAvailableInterfaces()V

    return-void
.end method

.method private synthetic lambda$setIncludeTestInterfaces$7(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIncludeTestInterfaces:Z

    if-nez p1, :cond_7

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->removeTestData()V

    :cond_7
    iget-object p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda12;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setInterfaceEnabled$3(Ljava/lang/String;ZLandroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->updateInterfaceState(Ljava/lang/String;ZLandroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V

    return-void
.end method

.method private synthetic lambda$start$0()V
    .registers 2

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetlinkMonitor:Landroid/net/connectivity/com/android/net/module/util/ip/NetlinkMonitor;

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/FdEventsReader;->start()Z

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->trackAvailableInterfaces()V

    return-void
.end method

.method private synthetic lambda$updateConfiguration$2(Ljava/lang/String;Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;Landroid/net/IpConfiguration;Landroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V
    .registers 7

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->updateInterface(Ljava/lang/String;Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;)V

    if-eqz p4, :cond_a

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->broadcastInterfaceStateChange(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p5, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateIpConfiguration$1(Ljava/lang/String;Landroid/net/IpConfiguration;)V
    .registers 5

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->updateInterface(Ljava/lang/String;Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;)V

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->broadcastInterfaceStateChange(Ljava/lang/String;)V

    return-void
.end method

.method private maybeTrackInterface(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->isValidEthernetInterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->hasInterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_43

    :cond_18
    sget-object v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeTrackInterface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    if-nez v0, :cond_3c

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    iput-object p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    :cond_3c
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->addInterface(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->broadcastInterfaceStateChange(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterfaceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    goto :goto_42

    :cond_41
    invoke-direct {p0, v1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->setTetheringInterfaceMode(I)V

    :cond_42
    :goto_42

    return-void

    :cond_43
    :goto_43
    sget-object p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring already-tracked interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private maybeUntetherInterface()V
    .registers 3

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceRequests:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_9

    return-void

    :cond_9
    iget v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterfaceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    return-void

    :cond_f
    invoke-direct {p0, v1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->setTetheringInterfaceMode(I)V

    return-void
.end method

.method private maybeUpdateServerModeInterfaceState(Ljava/lang/String;Z)V
    .registers 6

    iget-boolean v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceWasAvailable:Z

    if-eq p2, v0, :cond_51

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_51

    :cond_d
    sget-object v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_19

    const-string v2, "Tracking"

    goto :goto_1b

    :cond_19
    const-string v2, "No longer tracking"

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interface in server mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceRequests:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_34
    if-ge v1, v0, :cond_4a

    iget-object v2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceRequests:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;

    if-eqz p2, :cond_44

    invoke-direct {p0, v2, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->notifyTetheredInterfaceAvailable(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;Ljava/lang/String;)V

    goto :goto_47

    :cond_44
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->notifyTetheredInterfaceUnavailable(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V

    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_4a
    iget-object p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceRequests:Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$TetheredInterfaceRequestList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iput-boolean p2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheredInterfaceWasAvailable:Z

    :cond_51
    :goto_51
    return-void
.end method

.method private notifyTetheredInterfaceAvailable(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;->onAvailable(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    sget-object p1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    const-string p2, "Error sending tethered interface available callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method private notifyTetheredInterfaceUnavailable(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    .registers 3

    :try_start_0
    invoke-interface {p1}, Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;->onUnavailable()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    sget-object p1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    const-string v0, "Error sending tethered interface available callback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method private parseEthernetConfig(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->createEthernetTrackerConfig(Ljava/lang/String;)Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetTrackerConfig;

    move-result-object p1

    iget-object v0, p1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetTrackerConfig;->mCapabilities:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetTrackerConfig;->mCapabilities:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetTrackerConfig;->mTransport:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->createNetworkCapabilities(ZLjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetTrackerConfig;->mIface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetTrackerConfig;->mIpConfig:Ljava/lang/String;

    if-eqz v0, :cond_2e

    invoke-static {v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->parseStaticIpConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;

    move-result-object v0

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$EthernetTrackerConfig;->mIface:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-void
.end method

.method static parseStaticIpConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;
    .registers 13

    new-instance v0, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_d9

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto/16 :goto_b8

    :cond_1e
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const-string v8, " in "

    const/4 v9, 0x2

    if-ne v7, v9, :cond_bc

    aget-object v5, v6, v3

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v10, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_e2

    :goto_3a
    move v9, v10

    goto :goto_65

    :sswitch_3c
    const-string v7, "domains"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    goto :goto_3a

    :cond_45
    const/4 v9, 0x3

    goto :goto_65

    :sswitch_47
    const-string v7, "dns"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_65

    goto :goto_3a

    :sswitch_50
    const-string v9, "ip"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_59

    goto :goto_3a

    :cond_59
    move v9, v7

    goto :goto_65

    :sswitch_5b
    const-string v7, "gateway"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_64

    goto :goto_3a

    :cond_64
    move v9, v3

    :cond_65
    :goto_65
    packed-switch v9, :pswitch_data_f4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_85  #0x3
    invoke-virtual {v0, v6}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    goto :goto_b8

    :pswitch_89  #0x2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_96
    if-ge v8, v7, :cond_a4

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_96

    :cond_a4
    invoke-virtual {v0, v5}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    goto :goto_b8

    :pswitch_a8  #0x1
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v6}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    goto :goto_b8

    :pswitch_b1  #0x0
    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    :goto_b8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    :cond_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d9
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p0

    invoke-static {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->createIpConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/IpConfiguration;

    move-result-object p0

    return-object p0

    :sswitch_data_e2
    .sparse-switch
        -0xb45b9bc -> :sswitch_5b
        0xd27 -> :sswitch_50
        0x18529 -> :sswitch_47
        0x6d86c42f -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_b1  #00000000
        :pswitch_a8  #00000001
        :pswitch_89  #00000002
        :pswitch_85  #00000003
    .end packed-switch
.end method

.method private postAndWaitForRunnable(Ljava/lang/Runnable;)V
    .registers 4

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Runnable;Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, p0, p1}, Landroid/os/ConditionVariable;->block(J)Z

    :cond_17
    return-void
.end method

.method private removeInterface(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->removeInterface(Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->maybeUpdateServerModeInterfaceState(Ljava/lang/String;Z)V

    return-void
.end method

.method private removeTestCapabilityData()V
    .registers 2

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private removeTestData()V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->removeTestIpData()V

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->removeTestCapabilityData()V

    return-void
.end method

.method private removeTestIpData()V
    .registers 5

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "testtap\\d+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mConfigStore:Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;->write(Ljava/lang/String;Landroid/net/IpConfiguration;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_28
    return-void
.end method

.method private setTetheringInterfaceMode(I)V
    .registers 5

    sget-object v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting tethering interface mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterfaceMode:I

    iget-object p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    if-eqz p1, :cond_29

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->removeInterface(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->addInterface(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->broadcastInterfaceStateChange(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method private stopTrackingInterface(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->removeInterface(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mTetheringInterface:Ljava/lang/String;

    :cond_e
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->broadcastInterfaceStateChange(Ljava/lang/String;)V

    return-void
.end method

.method private trackAvailableInterfaces()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetd:Landroid/net/connectivity/android/net/INetd;

    invoke-interface {v0}, Landroid/net/connectivity/android/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->maybeTrackInterface(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_12
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_f} :catch_12

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_12
    move-exception p0

    sget-object v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get list of interfaces "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method private unicastEthernetStateChange(Landroid/net/IEthernetServiceListener;I)V
    .registers 3

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->ensureRunningOnEthernetServiceThread()V

    :try_start_3
    invoke-interface {p1, p2}, Landroid/net/IEthernetServiceListener;->onEthernetStateChanged(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

.method private untrackFactoryInterfaces()V
    .registers 5

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->getAvailableInterfaces(Z)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->stopTrackingInterface(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method private updateInterfaceState(Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetCallback;-><init>(Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;)V

    invoke-direct {p0, p1, p2, v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->updateInterfaceState(Ljava/lang/String;ZLandroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V

    return-void
.end method

.method private updateInterfaceState(Ljava/lang/String;ZLandroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getInterfaceMode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->hasInterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1f

    :cond_10
    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->updateInterfaceLinkState(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->broadcastInterfaceStateChange(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {p3, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetCallback;->onResult(Ljava/lang/String;)V

    return-void

    :cond_1f
    :goto_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set link state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2e

    const-string p2, "up"

    goto :goto_30

    :cond_2e
    const-string p2, "down"

    :goto_30
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private writeIpConfiguration(Ljava/lang/String;Landroid/net/IpConfiguration;)V
    .registers 4

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mConfigStore:Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;->write(Ljava/lang/String;Landroid/net/IpConfiguration;)V

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method addListener(Landroid/net/IEthernetServiceListener;Z)V
    .registers 5

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda11;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/IEthernetServiceListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected broadcastInterfaceStateChange(Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->ensureRunningOnEthernetServiceThread()V

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getInterfaceState(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getInterfaceRole(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getIpConfigurationForCallback(Ljava/lang/String;I)Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->isRestrictedInterface(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_39

    if-eqz v3, :cond_2b

    :try_start_1e
    iget-object v6, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$ListenerInfo;

    iget-boolean v6, v6, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$ListenerInfo;->canUseRestrictedNetworks:Z

    if-nez v6, :cond_2b

    goto :goto_36

    :cond_2b
    iget-object v6, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/IEthernetServiceListener;

    invoke-interface {v6, p1, v0, v1, v2}, Landroid/net/IEthernetServiceListener;->onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_36} :catch_36

    :catch_36
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_39
    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1, p3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/connectivity/com/android/internal/util/IndentingPrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->postAndWaitForRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method getInterfaceList()Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v1, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetd:Landroid/net/connectivity/android/net/INetd;

    invoke-interface {v1}, Landroid/net/connectivity/android/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_1e

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->isValidEthernetInterface(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1d
    return-object v0

    :catch_1e
    move-exception p0

    sget-object v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get list of interfaces "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method getInterfaces(Z)[Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->getAvailableInterfaces(Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getIpConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;
    .registers 2

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/IpConfiguration;

    return-object p0
.end method

.method isRestrictedInterface(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkCapabilities;

    if-eqz p0, :cond_14

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method protected isTrackingInterface(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->hasInterface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValidTestInterface(Ljava/lang/String;)Z
    .registers 2

    iget-boolean p0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIncludeTestInterfaces:Z

    if-eqz p0, :cond_e

    const-string p0, "testtap\\d+"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public releaseTetheredInterface(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda6;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method removeListener(Landroid/net/IEthernetServiceListener;)V
    .registers 4

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda5;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/IEthernetServiceListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestTetheredInterface(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda3;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setEthernetEnabled(Z)V
    .registers 4

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda2;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIncludeTestInterfaces(Z)V
    .registers 4

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda8;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setInterfaceEnabled(Ljava/lang/String;ZLandroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda4;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Ljava/lang/String;ZLandroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method start()V
    .registers 6

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->register()V

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mConfigStore:Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;->read()V

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mConfigStore:Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetConfigStore;->getIpConfigurations()Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2b
    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected unicastInterfaceStateChange(Landroid/net/IEthernetServiceListener;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->ensureRunningOnEthernetServiceThread()V

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mFactory:Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;

    invoke-virtual {v0, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetNetworkFactory;->getInterfaceState(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getInterfaceRole(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p2, v0}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->getIpConfigurationForCallback(Ljava/lang/String;I)Landroid/net/IpConfiguration;

    move-result-object p0

    :try_start_11
    invoke-interface {p1, p2, v0, v1, p0}, Landroid/net/IEthernetServiceListener;->onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method

.method protected updateConfiguration(Ljava/lang/String;Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;Landroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V
    .registers 14

    sget-object v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConfiguration, iface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", capabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ipConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2a

    const/4 v0, 0x0

    goto :goto_2f

    :cond_2a
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0, p2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    :goto_2f
    move-object v4, v0

    if-eqz p2, :cond_35

    invoke-direct {p0, p1, v4}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->writeIpConfiguration(Ljava/lang/String;Landroid/net/IpConfiguration;)V

    :cond_35
    if-eqz p3, :cond_3c

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mNetworkCapabilities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda7;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda7;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Ljava/lang/String;Landroid/net/IpConfiguration;Landroid/net/NetworkCapabilities;Landroid/net/IpConfiguration;Landroid/net/connectivity/com/android/server/ethernet/EthernetCallback;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateIpConfiguration(Ljava/lang/String;Landroid/net/IpConfiguration;)V
    .registers 6

    sget-object v0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIpConfiguration, iface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cfg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->writeIpConfiguration(Ljava/lang/String;Landroid/net/IpConfiguration;)V

    iget-object v0, p0, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker$$ExternalSyntheticLambda10;-><init>(Landroid/net/connectivity/com/android/server/ethernet/EthernetTracker;Ljava/lang/String;Landroid/net/IpConfiguration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
