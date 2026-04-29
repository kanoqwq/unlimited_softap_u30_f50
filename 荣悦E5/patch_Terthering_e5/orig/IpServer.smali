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

.field private mDadProxy:Landroid/net/ip/DadProxy;

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

.field private final mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

.field private mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

.field private final mInterfaceType:I

.field private final mIpNeighborMonitor:Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor;

.field private mIpv4Address:Landroid/net/LinkAddress;

.field private mLastError:I

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastIPv6UpstreamIfindex:I

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalHotspotState:Lcom/android/networkstack/tethering/util/State;

.field private final mLog:Lcom/android/networkstack/tethering/util/SharedLog;

.field private final mNetd:Landroid/net/INetd;

.field private final mP2pLeasesSubnetPrefixLength:I

.field private final mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

.field private mServingMode:I

.field private mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

.field private mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

.field private final mTetheredState:Lcom/android/networkstack/tethering/util/State;

.field private final mTetheringMetrics:Lcom/android/networkstack/tethering/metrics/TetheringMetrics;

.field private final mUnavailableState:Lcom/android/networkstack/tethering/util/State;

.field private mUpstreamIfaceSet:Lcom/android/networkstack/tethering/util/InterfaceSet;

.field private final mUsingBpfOffload:Z

.field private final mUsingLegacyDhcp:Z

.field private final mWaitingForRestartState:Lcom/android/networkstack/tethering/util/State;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBpfCoordinator(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/BpfCoordinator;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/net/ip/IpServer;)Landroid/net/ip/IpServer$Callback;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeps(Landroid/net/ip/IpServer;)Landroid/net/ip/IpServer$Dependencies;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpLeases(Landroid/net/ip/IpServer;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpServer(Landroid/net/ip/IpServer;)Landroid/net/dhcp/IDhcpServer;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpServerStartIndex(Landroid/net/ip/IpServer;)I
    .registers 1

    iget p0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceName(Landroid/net/ip/IpServer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitialState(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceType(Landroid/net/ip/IpServer;)I
    .registers 1

    iget p0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpNeighborMonitor(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIpNeighborMonitor:Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpv4Address(Landroid/net/ip/IpServer;)Landroid/net/LinkAddress;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastError(Landroid/net/ip/IpServer;)I
    .registers 1

    iget p0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalHotspotState(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/SharedLog;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetd(Landroid/net/ip/IpServer;)Landroid/net/INetd;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetheredState(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetheringMetrics(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/metrics/TetheringMetrics;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mTetheringMetrics:Lcom/android/networkstack/tethering/metrics/TetheringMetrics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnavailableState(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpstreamIfaceSet(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/InterfaceSet;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Lcom/android/networkstack/tethering/util/InterfaceSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingForRestartState(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mWaitingForRestartState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDhcpLeases(Landroid/net/ip/IpServer;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDhcpServer(Landroid/net/ip/IpServer;Landroid/net/dhcp/IDhcpServer;)V
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastError(Landroid/net/ip/IpServer;I)V
    .registers 2

    iput p1, p0, Landroid/net/ip/IpServer;->mLastError:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpstreamIfaceSet(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/util/InterfaceSet;)V
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Lcom/android/networkstack/tethering/util/InterfaceSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearIpv6ForwardingRules(Landroid/net/ip/IpServer;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpServer;->clearIpv6ForwardingRules()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNeighborEvent(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->handleNeighborEvent(Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNewPrefixRequest(Landroid/net/ip/IpServer;Landroid/net/IpPrefix;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->handleNewPrefixRequest(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeConfigureStaticIp(Landroid/net/ip/IpServer;Landroid/net/TetheringRequestParcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->maybeConfigureStaticIp(Landroid/net/TetheringRequestParcel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeLogMessage(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/util/State;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->maybeLogMessage(Lcom/android/networkstack/tethering/util/State;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetLinkProperties(Landroid/net/ip/IpServer;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendInterfaceState(Landroid/net/ip/IpServer;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->sendInterfaceState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendLinkProperties(Landroid/net/ip/IpServer;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartConntrackMonitoring(Landroid/net/ip/IpServer;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpServer;->startConntrackMonitoring()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartIPv4(Landroid/net/ip/IpServer;)Z
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv4()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartIPv6(Landroid/net/ip/IpServer;)Z
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv6()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopConntrackMonitoring(Landroid/net/ip/IpServer;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopConntrackMonitoring()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopIPv4(Landroid/net/ip/IpServer;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopIPv6(Landroid/net/ip/IpServer;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUpstreamIPv6LinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const-string v0, "00:00:00:00:00:00"

    .line 128
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpServer;->NULL_MAC_ADDRESS:Landroid/net/MacAddress;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 133
    const-class v2, Landroid/net/ip/IpServer;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/ip/IpServer;->sMessageClasses:[Ljava/lang/Class;

    .line 137
    invoke-static {v0}, Lcom/android/networkstack/tethering/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILcom/android/networkstack/tethering/util/SharedLog;Landroid/net/INetd;Lcom/android/networkstack/tethering/BpfCoordinator;Landroid/net/ip/IpServer$Callback;Lcom/android/networkstack/tethering/TetheringConfiguration;Lcom/android/networkstack/tethering/PrivateAddressCoordinator;Lcom/android/networkstack/tethering/metrics/TetheringMetrics;Landroid/net/ip/IpServer$Dependencies;)V
    .registers 13

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/tethering/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 273
    iput p2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    .line 283
    iput p2, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    .line 305
    invoke-virtual {p4, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->forSubComponent(Ljava/lang/String;)Lcom/android/networkstack/tethering/util/SharedLog;

    move-result-object p4

    iput-object p4, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    .line 306
    iput-object p5, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    .line 307
    iput-object p6, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    .line 308
    iput-object p7, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    .line 309
    new-instance p6, Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    invoke-direct {p6, p1, p5, p4}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;-><init>(Ljava/lang/String;Landroid/net/INetd;Lcom/android/networkstack/tethering/util/SharedLog;)V

    iput-object p6, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    .line 310
    iput-object p1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 311
    iput p3, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    .line 312
    new-instance p3, Landroid/net/LinkProperties;

    invoke-direct {p3}, Landroid/net/LinkProperties;-><init>()V

    iput-object p3, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 313
    invoke-virtual {p8}, Lcom/android/networkstack/tethering/TetheringConfiguration;->useLegacyDhcpServer()Z

    move-result p3

    iput-boolean p3, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    .line 314
    invoke-virtual {p8}, Lcom/android/networkstack/tethering/TetheringConfiguration;->isBpfOffloadEnabled()Z

    move-result p3

    iput-boolean p3, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    .line 315
    invoke-virtual {p8}, Lcom/android/networkstack/tethering/TetheringConfiguration;->getP2pLeasesSubnetPrefixLength()I

    move-result p5

    iput p5, p0, Landroid/net/ip/IpServer;->mP2pLeasesSubnetPrefixLength:I

    .line 316
    iput-object p9, p0, Landroid/net/ip/IpServer;->mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

    .line 317
    iput-object p11, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    .line 318
    iput-object p10, p0, Landroid/net/ip/IpServer;->mTetheringMetrics:Lcom/android/networkstack/tethering/metrics/TetheringMetrics;

    .line 319
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    .line 320
    iput p2, p0, Landroid/net/ip/IpServer;->mLastError:I

    const/4 p2, 0x1

    .line 321
    iput p2, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 323
    invoke-virtual {p0}, Lcom/android/networkstack/tethering/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p5, Landroid/net/ip/IpServer$MyNeighborEventConsumer;

    const/4 p6, 0x0

    invoke-direct {p5, p0, p6}, Landroid/net/ip/IpServer$MyNeighborEventConsumer;-><init>(Landroid/net/ip/IpServer;Landroid/net/ip/IpServer$MyNeighborEventConsumer-IA;)V

    invoke-virtual {p11, p2, p4, p5}, Landroid/net/ip/IpServer$Dependencies;->getIpNeighborMonitor(Landroid/os/Handler;Lcom/android/networkstack/tethering/util/SharedLog;Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEventConsumer;)Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor;

    move-result-object p2

    iput-object p2, p0, Landroid/net/ip/IpServer;->mIpNeighborMonitor:Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor;

    if-eqz p3, :cond_78

    .line 330
    invoke-virtual {p2}, Lcom/android/networkstack/tethering/util/FdEventsReader;->start()Z

    move-result p2

    if-nez p2, :cond_78

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create IpNeighborMonitor on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    .line 334
    :cond_78
    new-instance p1, Landroid/net/ip/IpServer$InitialState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$InitialState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/networkstack/tethering/util/State;

    .line 335
    new-instance p2, Landroid/net/ip/IpServer$LocalHotspotState;

    invoke-direct {p2, p0}, Landroid/net/ip/IpServer$LocalHotspotState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p2, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/networkstack/tethering/util/State;

    .line 336
    new-instance p3, Landroid/net/ip/IpServer$TetheredState;

    invoke-direct {p3, p0}, Landroid/net/ip/IpServer$TetheredState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p3, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/networkstack/tethering/util/State;

    .line 337
    new-instance p4, Landroid/net/ip/IpServer$UnavailableState;

    invoke-direct {p4, p0}, Landroid/net/ip/IpServer$UnavailableState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p4, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/networkstack/tethering/util/State;

    .line 338
    new-instance p5, Landroid/net/ip/IpServer$WaitingForRestartState;

    invoke-direct {p5, p0}, Landroid/net/ip/IpServer$WaitingForRestartState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p5, p0, Landroid/net/ip/IpServer;->mWaitingForRestartState:Lcom/android/networkstack/tethering/util/State;

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/StateMachine;->addState(Lcom/android/networkstack/tethering/util/State;)V

    .line 340
    invoke-virtual {p0, p2}, Lcom/android/networkstack/tethering/util/StateMachine;->addState(Lcom/android/networkstack/tethering/util/State;)V

    .line 341
    invoke-virtual {p0, p3}, Lcom/android/networkstack/tethering/util/StateMachine;->addState(Lcom/android/networkstack/tethering/util/State;)V

    .line 342
    invoke-virtual {p0, p5, p3}, Lcom/android/networkstack/tethering/util/StateMachine;->addState(Lcom/android/networkstack/tethering/util/State;Lcom/android/networkstack/tethering/util/State;)V

    .line 343
    invoke-virtual {p0, p4}, Lcom/android/networkstack/tethering/util/StateMachine;->addState(Lcom/android/networkstack/tethering/util/State;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/StateMachine;->setInitialState(Lcom/android/networkstack/tethering/util/State;)V

    return-void
.end method

.method private addIpv6ForwardingRule(Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;)V
    .registers 3

    .line 895
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    if-nez v0, :cond_5

    return-void

    .line 897
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

    .line 809
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    const/16 v1, 0x63

    iget-object v2, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_9} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_3f

    .line 813
    :try_start_9
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/networkstack/tethering/util/NetdUtils;->addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_10} :catch_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_10} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_3f

    .line 823
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

    .line 815
    :try_start_28
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add IPv4/v6 routes to local table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/os/ServiceSpecificException; {:try_start_28 .. :try_end_3e} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p1

    .line 819
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

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

    invoke-virtual {v0, p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private clearIpv6ForwardingRules()V
    .registers 2

    .line 909
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    if-nez v0, :cond_5

    return-void

    .line 911
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadRuleClear(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method private configureDhcp(ZLandroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 4

    if-eqz p1, :cond_7

    .line 611
    invoke-direct {p0, p2, p3}, Landroid/net/ip/IpServer;->startDhcp(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0

    .line 613
    :cond_7
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V

    const/4 p0, 0x1

    return p0
.end method

.method private configureIPv4(Z)Z
    .registers 6

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    .line 634
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->requestIpv4Address(Z)Landroid/net/LinkAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    .line 637
    :cond_9
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 638
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p1, "No available ipv4 address"

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    return v1

    .line 642
    :cond_16
    invoke-direct {p0}, Landroid/net/ip/IpServer;->shouldNotConfigureBluetoothInterface()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    .line 644
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, p1, v0, v2}, Landroid/net/ip/IpServer;->configureDhcp(ZLandroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0

    .line 647
    :cond_24
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-static {v0}, Lcom/android/networkstack/tethering/util/PrefixUtils;->asIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;

    .line 650
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    if-eqz v0, :cond_3b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3b

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3b

    const/4 v3, 0x6

    if-ne v0, v3, :cond_37

    goto :goto_3b

    .line 659
    :cond_37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 661
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    iget-object v3, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v0, v3, v2}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;->setInterfaceConfiguration(Landroid/net/LinkAddress;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 662
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string v2, "Error configuring interface"

    invoke-virtual {v0, v2}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    if-nez p1, :cond_51

    .line 663
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V

    :cond_51
    return v1

    :cond_52
    if-eqz p1, :cond_67

    .line 668
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 669
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, v1}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_79

    .line 671
    :cond_67
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 672
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, v1}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    .line 674
    :goto_79
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

    .line 849
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    if-nez v0, :cond_11

    if-eqz p2, :cond_9

    .line 850
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 851
    :cond_9
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p1, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    .line 856
    :cond_11
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/16 v1, 0x40

    if-nez v0, :cond_52

    .line 857
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 858
    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    invoke-virtual {v2, v0, v1}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;->removeAddress(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_47

    .line 859
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove local dns IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    .line 862
    :cond_47
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_1d

    :cond_52
    if-eqz p2, :cond_a5

    .line 867
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a5

    .line 868
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    .line 869
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v0, :cond_69

    .line 870
    iget-object v0, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 873
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

    .line 874
    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    invoke-virtual {v2, v0, v1}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 875
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add local dns IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 879
    :cond_9a
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_6d

    .line 884
    :cond_a5
    :try_start_a5
    iget-object p1, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {p1}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_aa
    .catch Landroid/os/ServiceSpecificException; {:try_start_a5 .. :try_end_aa} :catch_ab
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_aa} :catch_ab

    goto :goto_b7

    .line 886
    :catch_ab
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p1, "Failed to update local DNS caching server"

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_b7

    .line 887
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    :cond_b7
    :goto_b7
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

    .line 829
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 830
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->removeRoutesFromLocalNetwork(Ljava/util/List;)V

    :cond_f
    if-eqz p2, :cond_35

    .line 834
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    .line 835
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    .line 836
    iget-object p2, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz p2, :cond_26

    .line 837
    iget-object p2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 840
    :cond_26
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_35

    .line 841
    iget-object p2, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->addRoutesToLocalNetwork(Ljava/util/List;)V

    :cond_35
    return-void
.end method

.method private getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;
    .registers 5

    .line 541
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v0, Landroid/net/RouteInfo;

    invoke-static {p1}, Lcom/android/networkstack/tethering/util/PrefixUtils;->asIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;

    move-result-object p1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getHopLimit(Ljava/lang/String;I)B
    .registers 7

    .line 1064
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const-string v3, "hop_limit"

    .line 1065
    invoke-interface {v0, v1, v2, p1, v3}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1064
    invoke-static {p1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p2

    const/16 p2, 0xff

    .line 1068
    invoke-static {p1, p2}, Ljava/lang/Integer;->min(II)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    int-to-byte p0, p0

    return p0

    :catch_17
    move-exception p1

    .line 1070
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p2, "Failed to find upstream interface hop limit"

    invoke-virtual {p0, p2, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x41

    return p0
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .registers 7

    .line 1504
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    .line 1505
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

    .line 1507
    :try_start_20
    invoke-static {v1, v0, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_24
    .catch Ljava/net/UnknownHostException; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    .line 1509
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

    .line 1495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1496
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .line 1497
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

    .line 1515
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    .line 1516
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

    .line 117
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

.method private handleNeighborEvent(Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 5

    .line 993
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    if-eqz v0, :cond_16

    iget v1, v0, Lcom/android/networkstack/tethering/util/InterfaceParams;->index:I

    iget v2, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ifindex:I

    if-ne v1, v2, :cond_16

    iget-boolean v0, v0, Lcom/android/networkstack/tethering/util/InterfaceParams;->hasMacAddress:Z

    if-eqz v0, :cond_16

    .line 996
    iget v0, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    invoke-direct {p0, v0, v0, p1}, Landroid/net/ip/IpServer;->updateIpv6ForwardingRules(IILcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V

    .line 997
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->updateClientInfoIpv4(Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V

    :cond_16
    return-void
.end method

.method private handleNewPrefixRequest(Landroid/net/IpPrefix;)V
    .registers 5

    .line 1002
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1003
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    if-eq v0, v1, :cond_1a

    goto/16 :goto_b0

    .line 1008
    :cond_1a
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    const/4 v1, 0x0

    .line 1009
    invoke-direct {p0, v1}, Landroid/net/ip/IpServer;->requestIpv4Address(Z)Landroid/net/LinkAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    if-nez v1, :cond_2d

    .line 1011
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p1, "Fail to request a new downstream prefix"

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    .line 1014
    :cond_2d
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    .line 1017
    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result p1

    if-nez p1, :cond_56

    .line 1018
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to add new IP "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    .line 1024
    :cond_56
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1023
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->removeRoutesFromLocalNetwork(Ljava/util/List;)V

    .line 1025
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1028
    iget-object p1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    .line 1029
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1028
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->addRoutesToLocalNetwork(Ljava/util/List;)V

    .line 1030
    iget-object p1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1036
    :try_start_7a
    iget-object p1, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {p1}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_7f
    .catch Landroid/os/ServiceSpecificException; {:try_start_7a .. :try_end_7f} :catch_a8
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7f} :catch_a8

    .line 1041
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    .line 1044
    iget-object p1, p0, Landroid/net/ip/IpServer;->mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

    if-nez p1, :cond_88

    const/4 p1, 0x0

    goto :goto_8e

    .line 1045
    :cond_88
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    .line 1046
    :goto_8e
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, v1, v1, v0, p1}, Landroid/net/ip/IpServer;->makeServingParams(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/LinkAddress;Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcel;

    move-result-object p1

    .line 1049
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

    .line 1058
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string v0, "Error updating DHCP serving params"

    invoke-virtual {p0, v0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a7
    return-void

    .line 1038
    :catch_a8
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p1, "Failed to update local DNS caching server"

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    .line 1004
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

.method private isIpv6VcnNetworkInterface()Z
    .registers 1

    .line 923
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 925
    :cond_6
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/networkstack/tethering/UpstreamNetworkState;->isVcnInterface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private makeServingParams(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/LinkAddress;Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcel;
    .registers 11

    .line 548
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_b

    if-nez p4, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v2

    :goto_c
    const/4 v4, 0x3

    if-ne v0, v4, :cond_12

    .line 551
    iget p0, p0, Landroid/net/ip/IpServer;->mP2pLeasesSubnetPrefixLength:I

    goto :goto_13

    :cond_12
    move p0, v2

    .line 553
    :goto_13
    new-instance v0, Landroid/net/dhcp/DhcpServingParamsParcelExt;

    invoke-direct {v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;-><init>()V

    new-array v4, v1, [Ljava/net/Inet4Address;

    aput-object p1, v4, v2

    .line 554
    invoke-virtual {v0, v4}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDefaultRouters([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    const-wide/16 v4, 0xe10

    .line 555
    invoke-virtual {p1, v4, v5}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDhcpLeaseTimeSecs(J)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    new-array v0, v1, [Ljava/net/Inet4Address;

    aput-object p2, v0, v2

    .line 556
    invoke-virtual {p1, v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDnsServers([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 557
    invoke-virtual {p1, p3}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setServerAddr(Landroid/net/LinkAddress;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 558
    invoke-virtual {p1, v1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setMetered(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 559
    invoke-virtual {p1, p4}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setSingleClientAddr(Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 560
    invoke-virtual {p1, v3}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setChangePrefixOnDecline(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 561
    invoke-virtual {p1, p0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setLeasesSubnetPrefixLength(I)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p0

    return-object p0
.end method

.method private maybeConfigureStaticIp(Landroid/net/TetheringRequestParcel;)V
    .registers 4

    if-eqz p1, :cond_19

    .line 1123
    iget-object v0, p1, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    if-eqz v0, :cond_19

    iget-object v1, p1, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_19

    .line 1124
    invoke-static {v0, v1}, Landroid/net/TetheringManager$TetheringRequest;->checkStaticAddressConfiguration(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 1129
    :cond_11
    iget-object v0, p1, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    iput-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

    .line 1130
    iget-object p1, p1, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    iput-object p1, p0, Landroid/net/ip/IpServer;->mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

    :cond_19
    :goto_19
    return-void
.end method

.method private maybeLogMessage(Lcom/android/networkstack/tethering/util/State;I)V
    .registers 5

    const/16 v0, 0x6e

    if-eq p2, v0, :cond_31

    const/16 v0, 0x6f

    if-eq p2, v0, :cond_31

    .line 1099
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/networkstack/tethering/util/State;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " got "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 1100
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1099
    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->log(Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method private removeIpv6ForwardingRule(Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;)V
    .registers 3

    .line 903
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    if-nez v0, :cond_5

    return-void

    .line 905
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

    .line 795
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-static {v0, p1}, Lcom/android/networkstack/tethering/util/NetdUtils;->removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1d

    .line 798
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 799
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Failed to remove %d IPv6 routes from local table."

    .line 798
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    .line 802
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
    .registers 3

    .line 683
    iget-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

    if-eqz v0, :cond_5

    return-object v0

    .line 685
    :cond_5
    invoke-direct {p0}, Landroid/net/ip/IpServer;->shouldNotConfigureBluetoothInterface()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance p0, Landroid/net/LinkAddress;

    const-string p1, "192.168.44.1/24"

    invoke-direct {p0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 687
    :cond_13
    iget-object v0, p0, Landroid/net/ip/IpServer;->mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

    invoke-virtual {v0, p0, p1}, Lcom/android/networkstack/tethering/PrivateAddressCoordinator;->requestDownstreamAddress(Landroid/net/ip/IpServer;Z)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method private resetLinkProperties()V
    .registers 2

    .line 1115
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 1116
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    return-void
.end method

.method private sendInterfaceState(I)V
    .registers 4

    .line 1105
    iput p1, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 1106
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    iget v1, p0, Landroid/net/ip/IpServer;->mLastError:I

    invoke-virtual {v0, p0, p1, v1}, Landroid/net/ip/IpServer$Callback;->updateInterfaceState(Landroid/net/ip/IpServer;II)V

    .line 1107
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    return-void
.end method

.method private sendLinkProperties()V
    .registers 4

    .line 1111
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpServer$Callback;->updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    return-void
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 6

    .line 1076
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_24

    .line 1077
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 1078
    invoke-static {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    .line 1080
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    .line 1081
    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    goto :goto_13

    :cond_12
    move-object v3, v2

    .line 1080
    :goto_13
    invoke-direct {p0, v1, v3}, Landroid/net/ip/IpServer;->configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1083
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    if-eqz p1, :cond_1c

    .line 1084
    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 1083
    :cond_1c
    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpServer;->configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1086
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 1089
    :cond_24
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    return-void
.end method

.method private shouldNotConfigureBluetoothInterface()Z
    .registers 2

    .line 679
    iget p0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private startConntrackMonitoring()V
    .registers 2

    .line 1169
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/BpfCoordinator;->startMonitoring(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method private startDhcp(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 8

    .line 566
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 570
    :cond_6
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    const/4 v2, 0x0

    if-nez p2, :cond_11

    move-object p2, v2

    goto :goto_17

    .line 572
    :cond_11
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    check-cast p2, Ljava/net/Inet4Address;

    .line 574
    :goto_17
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/net/ip/IpServer;->makeServingParams(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/LinkAddress;Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcel;

    move-result-object p1

    .line 576
    iget p2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/2addr p2, v1

    iput p2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 577
    iget-object p2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    new-instance v3, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    iget v4, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    invoke-direct {v3, p0, v4, v2}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;-><init>(Landroid/net/ip/IpServer;ILandroid/net/ip/IpServer$DhcpServerCallbacksImpl-IA;)V

    invoke-virtual {p2, v0, p1, v3}, Landroid/net/ip/IpServer$Dependencies;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/DhcpServerCallbacks;)V

    return v1
.end method

.method private startIPv4()Z
    .registers 2

    const/4 v0, 0x1

    .line 409
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->configureIPv4(Z)Z

    move-result p0

    return p0
.end method

.method private startIPv6()Z
    .registers 4

    .line 691
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer$Dependencies;->getInterfaceParams(Ljava/lang/String;)Lcom/android/networkstack/tethering/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 693
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string v2, "Failed to find InterfaceParams"

    invoke-virtual {v0, v2}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    .line 694
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return v1

    .line 698
    :cond_18
    iget-object v2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {v2, v0}, Landroid/net/ip/IpServer$Dependencies;->getRouterAdvertisementDaemon(Lcom/android/networkstack/tethering/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 699
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 700
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return v1

    .line 704
    :cond_2a
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 706
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {p0}, Lcom/android/networkstack/tethering/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    invoke-virtual {v0, v1, v2}, Landroid/net/ip/IpServer$Dependencies;->getDadProxy(Landroid/os/Handler;Lcom/android/networkstack/tethering/util/InterfaceParams;)Landroid/net/ip/DadProxy;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mDadProxy:Landroid/net/ip/DadProxy;

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method

.method private stopConntrackMonitoring()V
    .registers 2

    .line 1173
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/BpfCoordinator;->stopMonitoring(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method private stopDhcp()V
    .registers 3

    .line 584
    iget v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 586
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    if-eqz v0, :cond_1e

    .line 588
    :try_start_a
    new-instance v1, Landroid/net/ip/IpServer$1;

    invoke-direct {v1, p0}, Landroid/net/ip/IpServer$1;-><init>(Landroid/net/ip/IpServer;)V

    invoke-interface {v0, v1}, Landroid/net/dhcp/IDhcpServer;->stop(Landroid/net/INetworkStackStatusCallback;)V

    const/4 v0, 0x0

    .line 600
    iput-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception v0

    .line 602
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string v1, "Error stopping DHCP server"

    invoke-virtual {p0, v1, v0}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private stopIPv4()V
    .registers 2

    const/4 v0, 0x0

    .line 619
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->configureIPv4(Z)Z

    .line 622
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    invoke-virtual {v0}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;->clearIPv4Address()Z

    .line 623
    iget-object v0, p0, Landroid/net/ip/IpServer;->mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/PrivateAddressCoordinator;->releaseDownstream(Landroid/net/ip/IpServer;)V

    .line 624
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadClientClear(Landroid/net/ip/IpServer;)V

    const/4 v0, 0x0

    .line 625
    iput-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    .line 626
    iput-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

    .line 627
    iput-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

    return-void
.end method

.method private stopIPv6()V
    .registers 3

    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    .line 714
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 716
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_f

    .line 717
    invoke-virtual {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    .line 718
    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 721
    :cond_f
    iget-object v1, p0, Landroid/net/ip/IpServer;->mDadProxy:Landroid/net/ip/DadProxy;

    if-eqz v1, :cond_18

    .line 722
    invoke-virtual {v1}, Landroid/net/ip/DadProxy;->stop()V

    .line 723
    iput-object v0, p0, Landroid/net/ip/IpServer;->mDadProxy:Landroid/net/ip/DadProxy;

    :cond_18
    return-void
.end method

.method private updateClientInfoIpv4(Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 7

    .line 971
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    .line 974
    :cond_8
    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_50

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    .line 975
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_50

    .line 982
    :cond_25
    invoke-virtual {p1}, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->macAddr:Landroid/net/MacAddress;

    goto :goto_30

    :cond_2e
    sget-object v0, Landroid/net/ip/IpServer;->NULL_MAC_ADDRESS:Landroid/net/MacAddress;

    .line 983
    :goto_30
    new-instance v1, Lcom/android/networkstack/tethering/BpfCoordinator$ClientInfo;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    iget v3, v2, Lcom/android/networkstack/tethering/util/InterfaceParams;->index:I

    iget-object v2, v2, Lcom/android/networkstack/tethering/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    iget-object v4, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    check-cast v4, Ljava/net/Inet4Address;

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/android/networkstack/tethering/BpfCoordinator$ClientInfo;-><init>(ILandroid/net/MacAddress;Ljava/net/Inet4Address;Landroid/net/MacAddress;)V

    .line 985
    invoke-virtual {p1}, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->isValid()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 986
    iget-object p1, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {p1, p0, v1}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadClientAdd(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/BpfCoordinator$ClientInfo;)V

    goto :goto_50

    .line 988
    :cond_4b
    iget-object p1, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {p1, p0, v1}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadClientRemove(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/BpfCoordinator$ClientInfo;)V

    :cond_50
    :goto_50
    return-void
.end method

.method private updateIpv6ForwardingRule(I)V
    .registers 3

    .line 917
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingBpfOffload:Z

    if-nez v0, :cond_5

    return-void

    .line 919
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0, p1}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadRuleUpdate(Landroid/net/ip/IpServer;I)V

    return-void
.end method

.method private updateIpv6ForwardingRules(IILcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 10

    if-eqz p2, :cond_5a

    .line 935
    invoke-direct {p0}, Landroid/net/ip/IpServer;->isIpv6VcnNetworkInterface()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5a

    :cond_9
    if-eq p1, p2, :cond_e

    .line 943
    invoke-direct {p0, p2}, Landroid/net/ip/IpServer;->updateIpv6ForwardingRule(I)V

    :cond_e
    if-nez p3, :cond_11

    return-void

    .line 949
    :cond_11
    iget-object p1, p3, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_59

    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result p1

    if-nez p1, :cond_59

    iget-object p1, p3, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    .line 950
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-nez p1, :cond_59

    iget-object p1, p3, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_59

    .line 957
    :cond_2e
    invoke-virtual {p3}, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->isValid()Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p3, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->macAddr:Landroid/net/MacAddress;

    goto :goto_39

    :cond_37
    sget-object p1, Landroid/net/ip/IpServer;->NULL_MAC_ADDRESS:Landroid/net/MacAddress;

    :goto_39
    move-object v5, p1

    .line 958
    new-instance p1, Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    iget v2, v0, Lcom/android/networkstack/tethering/util/InterfaceParams;->index:I

    iget-object v1, p3, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    move-object v3, v1

    check-cast v3, Ljava/net/Inet6Address;

    iget-object v4, v0, Lcom/android/networkstack/tethering/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    move-object v0, p1

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;-><init>(IILjava/net/Inet6Address;Landroid/net/MacAddress;Landroid/net/MacAddress;)V

    .line 960
    invoke-virtual {p3}, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->isValid()Z

    move-result p2

    if-eqz p2, :cond_56

    .line 961
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->addIpv6ForwardingRule(Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;)V

    goto :goto_59

    .line 963
    :cond_56
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->removeIpv6ForwardingRule(Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6ForwardingRule;)V

    :cond_59
    :goto_59
    return-void

    .line 936
    :cond_5a
    :goto_5a
    invoke-direct {p0}, Landroid/net/ip/IpServer;->clearIpv6ForwardingRules()V

    return-void
.end method

.method private updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;I)V
    .registers 11

    .line 734
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v0, :cond_5

    return-void

    .line 737
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_74

    .line 747
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 748
    iget-object v3, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {v3, v2}, Landroid/net/ip/IpServer$Dependencies;->getInterfaceParams(Ljava/lang/String;)Lcom/android/networkstack/tethering/util/InterfaceParams;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 750
    iget v0, v3, Lcom/android/networkstack/tethering/util/InterfaceParams;->index:I

    .line 752
    :cond_20
    new-instance v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v4}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    .line 753
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v5

    iput v5, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 754
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v5

    iput-boolean v5, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    if-eqz v5, :cond_39

    .line 756
    invoke-direct {p0, v2, p2}, Landroid/net/ip/IpServer;->getHopLimit(Ljava/lang/String;I)B

    move-result p2

    iput-byte p2, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    .line 758
    :cond_39
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 759
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_56

    goto :goto_41

    .line 761
    :cond_56
    new-instance v6, Landroid/net/IpPrefix;

    .line 762
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    invoke-direct {v6, v7, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 763
    iget-object v5, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-static {v6}, Landroid/net/ip/IpServer;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 767
    iget-object v6, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_74
    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 776
    :cond_77
    iget-object p2, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {p2, v0, v2}, Lcom/android/networkstack/tethering/BpfCoordinator;->addUpstreamNameToLookupTable(ILjava/lang/String;)V

    .line 781
    invoke-direct {p0, v4}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 785
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    .line 787
    iget p1, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/net/ip/IpServer;->updateIpv6ForwardingRules(IILcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V

    .line 788
    iput v0, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    .line 789
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDadProxy:Landroid/net/ip/DadProxy;

    if-eqz p0, :cond_8f

    .line 790
    invoke-virtual {p0, v3}, Landroid/net/ip/DadProxy;->setUpstreamIface(Lcom/android/networkstack/tethering/util/InterfaceParams;)V

    :cond_8f
    return-void
.end method


# virtual methods
.method public enable(ILandroid/net/TetheringRequestParcel;)V
    .registers 5

    const/16 v0, 0x65

    const/4 v1, 0x0

    .line 390
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/networkstack/tethering/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public getAddress()Landroid/net/LinkAddress;
    .registers 1

    .line 377
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

    .line 385
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public interfaceName()Ljava/lang/String;
    .registers 1

    .line 350
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public interfaceType()I
    .registers 1

    .line 357
    iget p0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    return p0
.end method

.method public lastError()I
    .registers 1

    .line 362
    iget p0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p0
.end method

.method public linkProperties()Landroid/net/LinkProperties;
    .registers 2

    .line 372
    new-instance v0, Landroid/net/LinkProperties;

    iget-object p0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, p0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public servingMode()I
    .registers 1

    .line 367
    iget p0, p0, Landroid/net/ip/IpServer;->mServingMode:I

    return p0
.end method

.method public stop()V
    .registers 2

    const/16 v0, 0x67

    .line 395
    invoke-virtual {p0, v0}, Lcom/android/networkstack/tethering/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public unwanted()V
    .registers 2

    const/16 v0, 0x66

    .line 403
    invoke-virtual {p0, v0}, Lcom/android/networkstack/tethering/util/StateMachine;->sendMessage(I)V

    return-void
.end method
