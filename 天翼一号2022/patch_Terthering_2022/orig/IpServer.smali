.class public Landroid/net/ip/IpServer;
.super Lcom/android/networkstack/tethering/util/StateMachine;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpServer$WaitingForRestartState;,
        Landroid/net/ip/IpServer$UnavailableState;,
        Landroid/net/ip/IpServer$TetheredState;,
        Landroid/net/ip/IpServer$LocalHotspotState;,
        Landroid/net/ip/IpServer$BaseServingState;,
        Landroid/net/ip/IpServer$InitialState;,
        Landroid/net/ip/IpServer$DhcpEventCallback;,
        Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;,
        Landroid/net/ip/IpServer$OnHandlerStatusCallback;,
        Landroid/net/ip/IpServer$MyNeighborEventConsumer;,
        Landroid/net/ip/IpServer$Dependencies;,
        Landroid/net/ip/IpServer$Callback;
    }
.end annotation


# static fields
.field public static final CMD_INTERFACE_DOWN:I = 0x67

.field public static final CMD_IPV6_TETHER_UPDATE:I = 0x6e

.field public static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x69

.field public static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x68

.field public static final CMD_NEIGHBOR_EVENT:I = 0x6f

.field public static final CMD_NEW_PREFIX_REQUEST:I = 0x70

.field public static final CMD_NOTIFY_PREFIX_CONFLICT:I = 0x71

.field public static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0x6c

.field public static final CMD_START_TETHERING_ERROR:I = 0x6a

.field public static final CMD_STOP_TETHERING_ERROR:I = 0x6b

.field public static final CMD_TETHER_CONNECTION_CHANGED:I = 0x6d

.field public static final CMD_TETHER_REQUESTED:I = 0x65

.field public static final CMD_TETHER_UNREQUESTED:I = 0x66

.field public static final CMD_TETHER_VPN_SHARE_ENABLED:I = 0x78

.field private static final NULL_MAC_ADDRESS:Landroid/net/MacAddress;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMessageClasses:[Ljava/lang/Class;


# instance fields
.field private final mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

.field private final mCallback:Landroid/net/ip/IpServer$Callback;

.field private final mDeps:Landroid/net/ip/IpServer$Dependencies;

.field private mDhcpLeases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/TetheredClient;",
            ">;"
        }
    .end annotation
.end field

.field private mDhcpServer:Landroid/net/dhcp/IDhcpServer;

.field private mDhcpServerStartIndex:I

.field private final mIfaceName:Ljava/lang/String;

.field private final mInitialState:Lcom/android/networkstack/tethering/util/State;

.field private final mInterfaceCtrl:Landroid/net/ip/InterfaceController;

.field private mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private final mInterfaceType:I

.field private final mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

.field private mIpv4Address:Landroid/net/LinkAddress;

.field private mIsUntethering:Z

.field private mLastError:I

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastIPv6UpstreamIfindex:I

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalHotspotState:Lcom/android/networkstack/tethering/util/State;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mNetd:Landroid/net/INetd;

.field private mNonVpnUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private final mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

.field private mServingMode:I

.field private mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

.field private mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

.field private final mTetheredState:Lcom/android/networkstack/tethering/util/State;

.field private final mUnavailableState:Lcom/android/networkstack/tethering/util/State;

.field private mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private final mUsingBpfOffload:Z

.field private final mUsingLegacyDhcp:Z

.field private final mWaitingForRestartState:Lcom/android/networkstack/tethering/util/State;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "00:00:00:00:00:00"

    .line 122
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpServer;->NULL_MAC_ADDRESS:Landroid/net/MacAddress;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 127
    const-class v2, Landroid/net/ip/IpServer;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/ip/IpServer;->sMessageClasses:[Ljava/lang/Class;

    .line 131
    invoke-static {v0}, Lcom/android/networkstack/tethering/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/net/INetd;Lcom/android/networkstack/tethering/BpfCoordinator;Landroid/net/ip/IpServer$Callback;ZZLcom/android/networkstack/tethering/PrivateAddressCoordinator;Landroid/net/ip/IpServer$Dependencies;)V
    .registers 14

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/tethering/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 270
    iput-object p2, p0, Landroid/net/ip/IpServer;->mNonVpnUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    const/4 v0, 0x0

    .line 275
    iput v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    .line 285
    iput v0, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    .line 299
    iput-boolean v0, p0, Landroid/net/ip/IpServer;->mIsUntethering:Z

    .line 310
    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p4

    iput-object p4, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    .line 311
    iput-object p5, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    .line 312
    iput-object p6, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    .line 313
    iput-object p7, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    .line 314
    new-instance p6, Landroid/net/ip/InterfaceController;

    invoke-direct {p6, p1, p5, p4}, Landroid/net/ip/InterfaceController;-><init>(Ljava/lang/String;Landroid/net/INetd;Landroid/net/util/SharedLog;)V

    iput-object p6, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    .line 315
    iput-object p1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 316
    iput p3, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    .line 317
    new-instance p1, Landroid/net/LinkProperties;

    invoke-direct {p1}, Landroid/net/LinkProperties;-><init>()V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 318
    iput-boolean p8, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    .line 319
    iput-boolean p9, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    .line 320
    iput-object p10, p0, Landroid/net/ip/IpServer;->mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

    .line 321
    iput-object p11, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    .line 322
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    .line 323
    iput v0, p0, Landroid/net/ip/IpServer;->mLastError:I

    const/4 p1, 0x1

    .line 324
    iput p1, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 326
    invoke-direct {p0}, Landroid/net/ip/IpServer;->initOemNetd()V

    .line 328
    iget-object p1, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {p0}, Lcom/android/networkstack/tethering/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p3

    iget-object p4, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance p5, Landroid/net/ip/IpServer$MyNeighborEventConsumer;

    invoke-direct {p5, p0, p2}, Landroid/net/ip/IpServer$MyNeighborEventConsumer;-><init>(Landroid/net/ip/IpServer;Landroid/net/ip/IpServer$1;)V

    invoke-virtual {p1, p3, p4, p5}, Landroid/net/ip/IpServer$Dependencies;->getIpNeighborMonitor(Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;)Landroid/net/ip/IpNeighborMonitor;

    move-result-object p1

    iput-object p1, p0, Landroid/net/ip/IpServer;->mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

    .line 334
    iget-boolean p2, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    if-eqz p2, :cond_79

    invoke-virtual {p1}, Landroid/net/util/FdEventsReader;->start()Z

    move-result p1

    if-nez p1, :cond_79

    .line 335
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create IpNeighborMonitor on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 338
    :cond_79
    new-instance p1, Landroid/net/ip/IpServer$InitialState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$InitialState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/networkstack/tethering/util/State;

    .line 339
    new-instance p1, Landroid/net/ip/IpServer$LocalHotspotState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$LocalHotspotState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/networkstack/tethering/util/State;

    .line 340
    new-instance p1, Landroid/net/ip/IpServer$TetheredState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$TetheredState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/networkstack/tethering/util/State;

    .line 341
    new-instance p1, Landroid/net/ip/IpServer$UnavailableState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$UnavailableState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/networkstack/tethering/util/State;

    .line 342
    new-instance p1, Landroid/net/ip/IpServer$WaitingForRestartState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$WaitingForRestartState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mWaitingForRestartState:Lcom/android/networkstack/tethering/util/State;

    .line 343
    iget-object p1, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/networkstack/tethering/util/State;

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/StateMachine;->addState(Lcom/android/networkstack/tethering/util/State;)V

    .line 344
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/networkstack/tethering/util/State;

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/StateMachine;->addState(Lcom/android/networkstack/tethering/util/State;)V

    .line 345
    iget-object p1, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/networkstack/tethering/util/State;

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/StateMachine;->addState(Lcom/android/networkstack/tethering/util/State;)V

    .line 346
    iget-object p1, p0, Landroid/net/ip/IpServer;->mWaitingForRestartState:Lcom/android/networkstack/tethering/util/State;

    iget-object p2, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/networkstack/tethering/util/State;

    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/tethering/util/StateMachine;->addState(Lcom/android/networkstack/tethering/util/State;Lcom/android/networkstack/tethering/util/State;)V

    .line 347
    iget-object p1, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/networkstack/tethering/util/State;

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/StateMachine;->addState(Lcom/android/networkstack/tethering/util/State;)V

    .line 349
    iget-object p1, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/networkstack/tethering/util/State;

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/StateMachine;->setInitialState(Lcom/android/networkstack/tethering/util/State;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/ip/IpServer;)I
    .registers 1

    .line 97
    iget p0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p0
.end method

.method static synthetic access$1000(Landroid/net/ip/IpServer;)Ljava/util/List;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Landroid/net/ip/IpServer;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 97
    iput-object p1, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/ip/IpServer;I)I
    .registers 2

    .line 97
    iput p1, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p1
.end method

.method static synthetic access$1100(Landroid/net/ip/IpServer;)Landroid/net/ip/IpServer$Callback;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    return-object p0
.end method

.method static synthetic access$1300(Landroid/net/ip/IpServer;I)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->sendInterfaceState(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/util/State;I)V
    .registers 3

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->logMessage(Lcom/android/networkstack/tethering/util/State;I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/ip/IpServer;Landroid/net/TetheringRequestParcel;)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->maybeConfigureStaticIp(Landroid/net/TetheringRequestParcel;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static synthetic access$1700(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static synthetic access$1800(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static synthetic access$1900(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;I)V
    .registers 3

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static synthetic access$2002(Landroid/net/ip/IpServer;Z)Z
    .registers 2

    .line 97
    iput-boolean p1, p0, Landroid/net/ip/IpServer;->mIsUntethering:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/net/ip/IpServer;)Z
    .registers 1

    .line 97
    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv4()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Landroid/net/ip/IpServer;)Landroid/net/INetd;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    return-object p0
.end method

.method static synthetic access$2300(Landroid/net/ip/IpServer;)Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Landroid/net/ip/IpServer;)Landroid/net/LinkAddress;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    return-object p0
.end method

.method static synthetic access$2500(Landroid/net/ip/IpServer;)Z
    .registers 1

    .line 97
    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv6()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv4()V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    return-void
.end method

.method static synthetic access$300(Landroid/net/ip/IpServer;)I
    .registers 1

    .line 97
    iget p0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    return p0
.end method

.method static synthetic access$3000(Landroid/net/ip/IpServer;Landroid/net/IpPrefix;)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->handleNewPrefixRequest(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mWaitingForRestartState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static synthetic access$3200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p0
.end method

.method static synthetic access$3202(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .registers 2

    .line 97
    iput-object p1, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Landroid/net/ip/IpServer;->clearIpv6ForwardingRules()V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mNonVpnUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p0
.end method

.method static synthetic access$3402(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .registers 2

    .line 97
    iput-object p1, p0, Landroid/net/ip/IpServer;->mNonVpnUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$3500(Landroid/net/ip/IpServer;)Lcom/android/internal/net/IOemNetd;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    return-object p0
.end method

.method static synthetic access$3600(Landroid/net/ip/IpServer;Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->handleNeighborEvent(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/ip/IpServer;)Landroid/net/ip/IpNeighborMonitor;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

    return-object p0
.end method

.method static synthetic access$400(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    return-object p0
.end method

.method static synthetic access$500(Landroid/net/ip/IpServer;)Landroid/net/dhcp/IDhcpServer;
    .registers 1

    .line 97
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-object p0
.end method

.method static synthetic access$502(Landroid/net/ip/IpServer;Landroid/net/dhcp/IDhcpServer;)Landroid/net/dhcp/IDhcpServer;
    .registers 2

    .line 97
    iput-object p1, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-object p1
.end method

.method static synthetic access$900(Landroid/net/ip/IpServer;)I
    .registers 1

    .line 97
    iget p0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    return p0
.end method

.method private addIpv6ForwardingRule(Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;)V
    .registers 3

    .line 875
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    if-nez v0, :cond_5

    return-void

    .line 877
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0, p1}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadRuleAdd(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;)V

    return-void
.end method

.method private addRoutesToLocalNetwork(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    const/16 v1, 0x63

    iget-object v2, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_9} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_3f

    .line 785
    :try_start_9
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/net/shared/RouteUtils;->addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_10} :catch_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_10} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_3f

    .line 795
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_14

    :cond_26
    return-void

    :catch_27
    move-exception p1

    .line 787
    :try_start_28
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add IPv4/v6 routes to local table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/os/ServiceSpecificException; {:try_start_28 .. :try_end_3e} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p1

    .line 791
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to local table: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private clearIpv6ForwardingRules()V
    .registers 2

    .line 889
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    if-nez v0, :cond_5

    return-void

    .line 891
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadRuleClear(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method private configureDhcp(ZLandroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 4

    if-eqz p1, :cond_7

    .line 602
    invoke-direct {p0, p2, p3}, Landroid/net/ip/IpServer;->startDhcp(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0

    .line 604
    :cond_7
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V

    const/4 p0, 0x1

    return p0
.end method

.method private configureIPv4(Z)Z
    .registers 7

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureIPv4("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    .line 624
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->requestIpv4Address(Z)Landroid/net/LinkAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    .line 627
    :cond_24
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_31

    .line 628
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string p1, "No available ipv4 address"

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return v1

    .line 632
    :cond_31
    iget v2, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3c

    .line 636
    invoke-direct {p0, p1, v0, v4}, Landroid/net/ip/IpServer;->configureDhcp(ZLandroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0

    .line 639
    :cond_3c
    invoke-static {v0}, Landroid/net/util/PrefixUtils;->asIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;

    .line 642
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    if-eqz v0, :cond_51

    const/4 v2, 0x3

    if-eq v0, v2, :cond_51

    const/4 v2, 0x5

    if-eq v0, v2, :cond_51

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4d

    goto :goto_51

    .line 651
    :cond_4d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 653
    :cond_51
    :goto_51
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v0, v2, v4}, Landroid/net/ip/InterfaceController;->setInterfaceConfiguration(Landroid/net/LinkAddress;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 654
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Error configuring interface"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    if-nez p1, :cond_67

    .line 655
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V

    :cond_67
    return v1

    :cond_68
    if-eqz p1, :cond_7d

    .line 660
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 661
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, v1}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_8f

    .line 663
    :cond_7d
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 664
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, v1}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    .line 666
    :goto_8f
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

    invoke-direct {p0, p1, v0, v1}, Landroid/net/ip/IpServer;->configureDhcp(ZLandroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method private configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 821
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    if-nez v0, :cond_11

    if-eqz p2, :cond_9

    .line 822
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 823
    :cond_9
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string p1, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    .line 828
    :cond_11
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/16 v1, 0x40

    if-nez v0, :cond_52

    .line 829
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 830
    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v2, v0, v1}, Landroid/net/ip/InterfaceController;->removeAddress(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_47

    .line 831
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove local dns IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 834
    :cond_47
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_1d

    :cond_52
    if-eqz p2, :cond_a5

    .line 839
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a5

    .line 840
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    .line 841
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v0, :cond_69

    .line 842
    iget-object v0, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 845
    :cond_69
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 846
    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v2, v0, v1}, Landroid/net/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 847
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add local dns IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 851
    :cond_9a
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_6d

    .line 857
    :cond_a5
    iget-boolean p1, p0, Landroid/net/ip/IpServer;->mIsUntethering:Z

    if-eqz p1, :cond_b1

    const-string p0, "IpServer"

    const-string p1, "Skip iface update when untethering "

    .line 858
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 864
    :cond_b1
    :try_start_b1
    iget-object p1, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {p1}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_b6
    .catch Landroid/os/ServiceSpecificException; {:try_start_b1 .. :try_end_b6} :catch_b7
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_b6} :catch_b7

    goto :goto_c3

    .line 866
    :catch_b7
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string p1, "Failed to update local DNS caching server"

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_c3

    .line 867
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    :cond_c3
    :goto_c3
    return-void
.end method

.method private configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 801
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 802
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->removeRoutesFromLocalNetwork(Ljava/util/List;)V

    :cond_f
    if-eqz p2, :cond_35

    .line 806
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    .line 807
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    .line 808
    iget-object p2, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz p2, :cond_26

    .line 809
    iget-object p2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 812
    :cond_26
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_35

    .line 813
    iget-object p2, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->addRoutesToLocalNetwork(Ljava/util/List;)V

    :cond_35
    return-void
.end method

.method private getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;
    .registers 5

    .line 536
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    new-instance v0, Landroid/net/RouteInfo;

    invoke-static {p1}, Landroid/net/util/PrefixUtils;->asIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;

    move-result-object p1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getHopLimit(Ljava/lang/String;I)B
    .registers 7

    .line 1010
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const-string v3, "hop_limit"

    .line 1011
    invoke-interface {v0, v1, v2, p1, v3}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1010
    invoke-static {p1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p2

    const/16 p2, 0xff

    .line 1014
    invoke-static {p1, p2}, Ljava/lang/Integer;->min(II)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    int-to-byte p0, p0

    return p0

    :catch_17
    move-exception p1

    .line 1016
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string p2, "Failed to find upstream interface hop limit"

    invoke-virtual {p0, p2, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x41

    return p0
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .registers 7

    .line 1498
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    .line 1499
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v4

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v2

    const/16 v2, 0x2a

    invoke-static {v2, v3}, Landroid/net/ip/IpServer;->getRandomSanitizedByte(B[B)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    .line 1501
    :try_start_20
    invoke-static {v1, v0, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_24
    .catch Ljava/net/UnknownHostException; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    .line 1503
    :catch_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to construct Inet6Address from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IpServer"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 1489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .line 1491
    new-instance v2, Landroid/net/RouteInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, p0, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_20
    return-object v0
.end method

.method private static varargs getRandomSanitizedByte(B[B)B
    .registers 6

    .line 1509
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    .line 1510
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-byte v3, p1, v2

    if-ne v0, v3, :cond_13

    return p0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    return v0
.end method

.method public static getStateString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, "LOCAL_ONLY"

    return-object p0

    :cond_20
    const-string p0, "TETHERED"

    return-object p0

    :cond_23
    const-string p0, "AVAILABLE"

    return-object p0

    :cond_26
    const-string p0, "UNAVAILABLE"

    return-object p0
.end method

.method private handleNeighborEvent(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 5

    .line 940
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    if-eqz v0, :cond_13

    iget v1, v0, Landroid/net/util/InterfaceParams;->index:I

    iget v2, p1, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ifindex:I

    if-ne v1, v2, :cond_13

    iget-boolean v0, v0, Landroid/net/util/InterfaceParams;->hasMacAddress:Z

    if-eqz v0, :cond_13

    .line 943
    iget v0, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    invoke-direct {p0, v0, v0, p1}, Landroid/net/ip/IpServer;->updateIpv6ForwardingRules(IILandroid/net/ip/IpNeighborMonitor$NeighborEvent;)V

    :cond_13
    return-void
.end method

.method private handleNewPrefixRequest(Landroid/net/IpPrefix;)V
    .registers 5

    .line 948
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 949
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    if-eq v0, v1, :cond_1a

    goto/16 :goto_b0

    .line 954
    :cond_1a
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    const/4 v1, 0x0

    .line 955
    invoke-direct {p0, v1}, Landroid/net/ip/IpServer;->requestIpv4Address(Z)Landroid/net/LinkAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    if-nez v1, :cond_2d

    .line 957
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string p1, "Fail to request a new downstream prefix"

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    .line 960
    :cond_2d
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    .line 963
    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Landroid/net/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result p1

    if-nez p1, :cond_56

    .line 964
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to add new IP "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    .line 970
    :cond_56
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 969
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->removeRoutesFromLocalNetwork(Ljava/util/List;)V

    .line 971
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 974
    iget-object p1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    .line 975
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 974
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->addRoutesToLocalNetwork(Ljava/util/List;)V

    .line 976
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 982
    :try_start_7a
    iget-object p1, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {p1}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_7f
    .catch Landroid/os/ServiceSpecificException; {:try_start_7a .. :try_end_7f} :catch_a8
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7f} :catch_a8

    .line 987
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    .line 990
    iget-object p1, p0, Landroid/net/ip/IpServer;->mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

    if-nez p1, :cond_88

    const/4 p1, 0x0

    goto :goto_8e

    .line 991
    :cond_88
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    .line 992
    :goto_8e
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, v1, v1, v0, p1}, Landroid/net/ip/IpServer;->makeServingParams(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/LinkAddress;Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcel;

    move-result-object p1

    .line 995
    :try_start_94
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    new-instance v1, Landroid/net/ip/IpServer$2;

    invoke-direct {v1, p0}, Landroid/net/ip/IpServer$2;-><init>(Landroid/net/ip/IpServer;)V

    invoke-interface {v0, p1, v1}, Landroid/net/dhcp/IDhcpServer;->updateParams(Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/INetworkStackStatusCallback;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_9e} :catch_9f

    goto :goto_a7

    :catch_9f
    move-exception p1

    .line 1004
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v0, "Error updating DHCP serving params"

    invoke-virtual {p0, v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a7
    return-void

    .line 984
    :catch_a8
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string p1, "Failed to update local DNS caching server"

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    .line 950
    :cond_b0
    :goto_b0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid prefix: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IpServer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initOemNetd()V
    .registers 4

    const-string v0, "IpServer"

    .line 1519
    :try_start_2
    iget-object v1, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {v1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpServer;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 1520
    invoke-interface {v1}, Lcom/android/internal/net/IOemNetd;->isAlive()Z

    const-string p0, "get OemNetd instance"

    .line 1521
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_2c

    :catch_17
    move-exception p0

    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get OemNetd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-void
.end method

.method private logMessage(Lcom/android/networkstack/tethering/util/State;I)V
    .registers 5

    .line 1039
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/networkstack/tethering/util/State;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " got "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private makeServingParams(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/LinkAddress;Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcel;
    .registers 10

    .line 543
    iget p0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p0, v2, :cond_b

    if-nez p4, :cond_b

    move p0, v1

    goto :goto_c

    :cond_b
    move p0, v0

    .line 545
    :goto_c
    new-instance v2, Landroid/net/dhcp/DhcpServingParamsParcelExt;

    invoke-direct {v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;-><init>()V

    new-array v3, v1, [Ljava/net/Inet4Address;

    aput-object p1, v3, v0

    .line 546
    invoke-virtual {v2, v3}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDefaultRouters([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    const-wide/16 v3, 0xe10

    .line 547
    invoke-virtual {v2, v3, v4}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDhcpLeaseTimeSecs(J)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    new-array p1, v1, [Ljava/net/Inet4Address;

    aput-object p2, p1, v0

    .line 548
    invoke-virtual {v2, p1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDnsServers([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    .line 549
    invoke-virtual {v2, p3}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setServerAddr(Landroid/net/LinkAddress;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    .line 550
    invoke-virtual {v2, v1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setMetered(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    .line 551
    invoke-virtual {v2, p4}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setSingleClientAddr(Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    .line 552
    invoke-virtual {v2, p0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setChangePrefixOnDecline(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    return-object v2
.end method

.method private maybeConfigureStaticIp(Landroid/net/TetheringRequestParcel;)V
    .registers 4

    if-eqz p1, :cond_19

    .line 1061
    iget-object v0, p1, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    if-eqz v0, :cond_19

    iget-object v1, p1, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_19

    .line 1062
    invoke-static {v0, v1}, Landroid/net/TetheringManager$TetheringRequest;->checkStaticAddressConfiguration(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 1067
    :cond_11
    iget-object v0, p1, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    iput-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

    .line 1068
    iget-object p1, p1, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    iput-object p1, p0, Landroid/net/ip/IpServer;->mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

    :cond_19
    :goto_19
    return-void
.end method

.method private removeIpv6ForwardingRule(Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;)V
    .registers 3

    .line 883
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    if-nez v0, :cond_5

    return-void

    .line 885
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0, p1}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadRuleRemove(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;)V

    return-void
.end method

.method private removeRoutesFromLocalNetwork(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 767
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-static {v0, p1}, Landroid/net/shared/RouteUtils;->removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1d

    .line 770
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 771
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Failed to remove %d IPv6 routes from local table."

    .line 770
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 774
    :cond_1d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_21

    :cond_33
    return-void
.end method

.method private requestIpv4Address(Z)Landroid/net/LinkAddress;
    .registers 4

    .line 670
    iget-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

    if-eqz v0, :cond_5

    return-object v0

    .line 672
    :cond_5
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 673
    new-instance p0, Landroid/net/LinkAddress;

    const-string p1, "192.168.44.1/24"

    invoke-direct {p0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 676
    :cond_12
    iget-object v0, p0, Landroid/net/ip/IpServer;->mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

    invoke-virtual {v0, p0, p1}, Lcom/android/networkstack/tethering/PrivateAddressCoordinator;->requestDownstreamAddress(Landroid/net/ip/IpServer;Z)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method private resetLinkProperties()V
    .registers 2

    .line 1053
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 1054
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    return-void
.end method

.method private sendInterfaceState(I)V
    .registers 4

    .line 1043
    iput p1, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 1044
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    iget v1, p0, Landroid/net/ip/IpServer;->mLastError:I

    invoke-virtual {v0, p0, p1, v1}, Landroid/net/ip/IpServer$Callback;->updateInterfaceState(Landroid/net/ip/IpServer;II)V

    .line 1045
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    return-void
.end method

.method private sendLinkProperties()V
    .registers 4

    .line 1049
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpServer$Callback;->updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    return-void
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 6

    .line 1022
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_24

    .line 1023
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 1024
    invoke-static {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    .line 1026
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    .line 1027
    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    goto :goto_13

    :cond_12
    move-object v3, v2

    .line 1026
    :goto_13
    invoke-direct {p0, v1, v3}, Landroid/net/ip/IpServer;->configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1029
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    if-eqz p1, :cond_1c

    .line 1030
    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 1029
    :cond_1c
    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpServer;->configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1032
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 1035
    :cond_24
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    return-void
.end method

.method private startDhcp(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 8

    .line 557
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 561
    :cond_6
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    const/4 v2, 0x0

    if-nez p2, :cond_11

    move-object p2, v2

    goto :goto_17

    .line 563
    :cond_11
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    check-cast p2, Ljava/net/Inet4Address;

    .line 565
    :goto_17
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/net/ip/IpServer;->makeServingParams(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/LinkAddress;Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcel;

    move-result-object p1

    .line 567
    iget p2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/2addr p2, v1

    iput p2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 568
    iget-object p2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    new-instance v3, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    iget v4, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    invoke-direct {v3, p0, v4, v2}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;-><init>(Landroid/net/ip/IpServer;ILandroid/net/ip/IpServer$1;)V

    invoke-virtual {p2, v0, p1, v3}, Landroid/net/ip/IpServer$Dependencies;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/DhcpServerCallbacks;)V

    return v1
.end method

.method private startIPv4()Z
    .registers 2

    const/4 v0, 0x1

    .line 408
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->configureIPv4(Z)Z

    move-result p0

    return p0
.end method

.method private startIPv6()Z
    .registers 4

    .line 680
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer$Dependencies;->getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 682
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to find InterfaceParams"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return v1

    .line 687
    :cond_18
    iget-object v2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {v2, v0}, Landroid/net/ip/IpServer$Dependencies;->getRouterAdvertisementDaemon(Landroid/net/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 688
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 689
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return v1

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method private stopDhcp()V
    .registers 3

    .line 575
    iget v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 577
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    if-eqz v0, :cond_1e

    .line 579
    :try_start_a
    new-instance v1, Landroid/net/ip/IpServer$1;

    invoke-direct {v1, p0}, Landroid/net/ip/IpServer$1;-><init>(Landroid/net/ip/IpServer;)V

    invoke-interface {v0, v1}, Landroid/net/dhcp/IDhcpServer;->stop(Landroid/net/INetworkStackStatusCallback;)V

    const/4 v0, 0x0

    .line 591
    iput-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception v0

    .line 593
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "Error stopping DHCP server"

    invoke-virtual {p0, v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private stopIPv4()V
    .registers 2

    const/4 v0, 0x0

    .line 610
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->configureIPv4(Z)Z

    .line 613
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    .line 614
    iget-object v0, p0, Landroid/net/ip/IpServer;->mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/PrivateAddressCoordinator;->releaseDownstream(Landroid/net/ip/IpServer;)V

    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    .line 616
    iput-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

    .line 617
    iput-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

    return-void
.end method

.method private stopIPv6()V
    .registers 3

    const/4 v0, 0x0

    .line 697
    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 698
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 700
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_f

    .line 701
    invoke-virtual {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    .line 702
    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    :cond_f
    return-void
.end method

.method private updateIpv6ForwardingRule(I)V
    .registers 3

    .line 897
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    if-nez v0, :cond_5

    return-void

    .line 899
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0, p1}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadRuleUpdate(Landroid/net/ip/IpServer;I)V

    return-void
.end method

.method private updateIpv6ForwardingRules(IILandroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 10

    if-nez p2, :cond_6

    .line 908
    invoke-direct {p0}, Landroid/net/ip/IpServer;->clearIpv6ForwardingRules()V

    return-void

    :cond_6
    if-eq p1, p2, :cond_b

    .line 915
    invoke-direct {p0, p2}, Landroid/net/ip/IpServer;->updateIpv6ForwardingRule(I)V

    :cond_b
    if-nez p3, :cond_e

    return-void

    .line 921
    :cond_e
    iget-object p1, p3, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result p1

    if-nez p1, :cond_56

    iget-object p1, p3, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    .line 922
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-nez p1, :cond_56

    iget-object p1, p3, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_56

    .line 929
    :cond_2b
    invoke-virtual {p3}, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->isValid()Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p3, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->macAddr:Landroid/net/MacAddress;

    goto :goto_36

    :cond_34
    sget-object p1, Landroid/net/ip/IpServer;->NULL_MAC_ADDRESS:Landroid/net/MacAddress;

    :goto_36
    move-object v5, p1

    .line 930
    new-instance p1, Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget v2, v0, Landroid/net/util/InterfaceParams;->index:I

    iget-object v1, p3, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    move-object v3, v1

    check-cast v3, Ljava/net/Inet6Address;

    iget-object v4, v0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    move-object v0, p1

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;-><init>(IILjava/net/Inet6Address;Landroid/net/MacAddress;Landroid/net/MacAddress;)V

    .line 932
    invoke-virtual {p3}, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->isValid()Z

    move-result p2

    if-eqz p2, :cond_53

    .line 933
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->addIpv6ForwardingRule(Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;)V

    goto :goto_56

    .line 935
    :cond_53
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->removeIpv6ForwardingRule(Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;)V

    :cond_56
    :goto_56
    return-void
.end method

.method private updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;I)V
    .registers 9

    .line 713
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v0, :cond_5

    return-void

    .line 716
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_77

    .line 724
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 726
    new-instance v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v2}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    .line 727
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v3

    iput v3, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 728
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v3

    iput-boolean v3, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    if-eqz v3, :cond_2f

    .line 730
    invoke-direct {p0, v0, p2}, Landroid/net/ip/IpServer;->getHopLimit(Ljava/lang/String;I)B

    move-result p2

    iput-byte p2, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    .line 732
    :cond_2f
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_37
    :goto_37
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 733
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    const/16 v5, 0x40

    if-eq v4, v5, :cond_4c

    goto :goto_37

    .line 735
    :cond_4c
    new-instance v4, Landroid/net/IpPrefix;

    .line 736
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 737
    iget-object v3, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-static {v4}, Landroid/net/ip/IpServer;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 741
    iget-object v4, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 745
    :cond_6a
    iget-object p2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {p2, v0}, Landroid/net/ip/IpServer$Dependencies;->getIfindex(Ljava/lang/String;)I

    move-result p2

    .line 753
    iget-object v3, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v3, p2, v0}, Lcom/android/networkstack/tethering/BpfCoordinator;->addUpstreamNameToLookupTable(ILjava/lang/String;)V

    move v0, p2

    goto :goto_78

    :cond_77
    move-object v2, v1

    .line 759
    :goto_78
    invoke-direct {p0, v2}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 760
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    .line 762
    iget p1, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/net/ip/IpServer;->updateIpv6ForwardingRules(IILandroid/net/ip/IpNeighborMonitor$NeighborEvent;)V

    .line 763
    iput v0, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    return-void
.end method


# virtual methods
.method public getAddress()Landroid/net/LinkAddress;
    .registers 1

    .line 381
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    return-object p0
.end method

.method public getAllLeases()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/TetheredClient;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public interfaceName()Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public interfaceType()I
    .registers 1

    .line 361
    iget p0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    return p0
.end method

.method public lastError()I
    .registers 1

    .line 366
    iget p0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p0
.end method

.method public linkProperties()Landroid/net/LinkProperties;
    .registers 2

    .line 376
    new-instance v0, Landroid/net/LinkProperties;

    iget-object p0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, p0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public servingMode()I
    .registers 1

    .line 371
    iget p0, p0, Landroid/net/ip/IpServer;->mServingMode:I

    return p0
.end method

.method public stop()V
    .registers 2

    const/16 v0, 0x67

    .line 394
    invoke-virtual {p0, v0}, Lcom/android/networkstack/tethering/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public unwanted()V
    .registers 2

    const/16 v0, 0x66

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/networkstack/tethering/util/StateMachine;->sendMessage(I)V

    return-void
.end method
