.class public Landroid/net/ip/IpServer;
.super Lcom/android/networkstack/tethering/util/StateMachineShim;
.source "IpServer.java"


# static fields
.field public static final CMD_INTERFACE_DOWN:I = 0x67

.field public static final CMD_IPV6_TETHER_UPDATE:I = 0x6e

.field public static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x69

.field public static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x68

.field public static final CMD_NEIGHBOR_EVENT:I = 0x6f

.field public static final CMD_NEW_PREFIX_REQUEST:I = 0x70

.field public static final CMD_NOTIFY_PREFIX_CONFLICT:I = 0x71

.field public static final CMD_SERVICE_FAILED_TO_START:I = 0x72

.field public static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0x6c

.field public static final CMD_START_TETHERING_ERROR:I = 0x6a

.field public static final CMD_STOP_TETHERING_ERROR:I = 0x6b

.field public static final CMD_TETHER_CONNECTION_CHANGED:I = 0x6d

.field public static final CMD_TETHER_REQUESTED:I = 0x65

.field public static final CMD_TETHER_UNREQUESTED:I = 0x66

.field private static final NULL_MAC_ADDRESS:Landroid/net/MacAddress;

.field private static final enableMbbSetMetered:Z

.field private static final enableMbbTetherControl:Z

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;

.field private static final sMessageClasses:[Ljava/lang/Class;


# instance fields
.field private final mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

.field private final mCallback:Landroid/net/ip/IpServer$Callback;

.field private mDadProxy:Landroid/net/ip/DadProxy;

.field private final mDeps:Landroid/net/ip/IpServer$Dependencies;

.field private mDhcpLeases:Ljava/util/List;

.field private mDhcpServer:Landroid/net/dhcp/IDhcpServer;

.field private mDhcpServerStartIndex:I

.field private final mHandler:Landroid/os/Handler;

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

.field private mLastIPv6UpstreamPrefixes:Ljava/util/Set;

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalHotspotState:Lcom/android/networkstack/tethering/util/State;

.field private final mLog:Lcom/android/networkstack/tethering/util/SharedLog;

.field private final mNetd:Landroid/net/INetd;

.field private final mP2pLeasesSubnetPrefixLength:I

.field private final mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

.field private final mRoutingCoordinator:Lcom/android/networkstack/tethering/util/SdkUtil$LateSdk;

.field private mServingMode:I

.field private mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

.field private mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

.field private final mTetheredState:Lcom/android/networkstack/tethering/util/State;

.field private final mTetheringMetrics:Lcom/android/networkstack/tethering/metrics/TetheringMetrics;

.field private final mUnavailableState:Lcom/android/networkstack/tethering/util/State;

.field private mUpstreamIfaceSet:Lcom/android/networkstack/tethering/util/InterfaceSet;

.field private mUpstreamSupportsBpf:Z

.field private final mUsingLegacyDhcp:Z

.field private final mWaitingForRestartState:Lcom/android/networkstack/tethering/util/State;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBpfCoordinator(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/BpfCoordinator;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/net/ip/IpServer;)Landroid/net/ip/IpServer$Callback;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeps(Landroid/net/ip/IpServer;)Landroid/net/ip/IpServer$Dependencies;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpLeases(Landroid/net/ip/IpServer;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpServer(Landroid/net/ip/IpServer;)Landroid/net/dhcp/IDhcpServer;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpServerStartIndex(Landroid/net/ip/IpServer;)I
    .registers 1

    .line 0
    iget p0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceName(Landroid/net/ip/IpServer;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitialState(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceCtrl(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/ip/InterfaceController;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceParams(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/InterfaceParams;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceType(Landroid/net/ip/IpServer;)I
    .registers 1

    .line 0
    iget p0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpNeighborMonitor(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIpNeighborMonitor:Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpv4Address(Landroid/net/ip/IpServer;)Landroid/net/LinkAddress;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastError(Landroid/net/ip/IpServer;)I
    .registers 1

    .line 0
    iget p0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkProperties(Landroid/net/ip/IpServer;)Landroid/net/LinkProperties;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalHotspotState(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/SharedLog;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetd(Landroid/net/ip/IpServer;)Landroid/net/INetd;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStaticIpv4ClientAddr(Landroid/net/ip/IpServer;)Landroid/net/LinkAddress;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetheredState(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetheringMetrics(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/metrics/TetheringMetrics;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mTetheringMetrics:Lcom/android/networkstack/tethering/metrics/TetheringMetrics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnavailableState(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpstreamIfaceSet(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/InterfaceSet;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Lcom/android/networkstack/tethering/util/InterfaceSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingForRestartState(Landroid/net/ip/IpServer;)Lcom/android/networkstack/tethering/util/State;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/net/ip/IpServer;->mWaitingForRestartState:Lcom/android/networkstack/tethering/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDhcpLeases(Landroid/net/ip/IpServer;Ljava/util/List;)V
    .registers 2

    .line 0
    iput-object p1, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDhcpServer(Landroid/net/ip/IpServer;Landroid/net/dhcp/IDhcpServer;)V
    .registers 2

    .line 0
    iput-object p1, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIpv4Address(Landroid/net/ip/IpServer;Landroid/net/LinkAddress;)V
    .registers 2

    .line 0
    iput-object p1, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastError(Landroid/net/ip/IpServer;I)V
    .registers 2

    .line 0
    iput p1, p0, Landroid/net/ip/IpServer;->mLastError:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpstreamIfaceSet(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/util/InterfaceSet;)V
    .registers 2

    .line 0
    iput-object p1, p0, Landroid/net/ip/IpServer;->mUpstreamIfaceSet:Lcom/android/networkstack/tethering/util/InterfaceSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddInterfaceForward(Landroid/net/ip/IpServer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->addInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddRoutesToLocalNetwork(Landroid/net/ip/IpServer;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->addRoutesToLocalNetwork(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDirectConnectedRoute(Landroid/net/ip/IpServer;Landroid/net/LinkAddress;)Landroid/net/RouteInfo;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHandler(Landroid/net/ip/IpServer;)Landroid/os/Handler;
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/net/ip/IpServer;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleNeighborEvent(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->handleNeighborEvent(Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeServingParams(Landroid/net/ip/IpServer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/LinkAddress;Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcel;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/ip/IpServer;->makeServingParams(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/LinkAddress;Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcel;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmaybeConfigureStaticIp(Landroid/net/ip/IpServer;Landroid/net/TetheringRequestParcel;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->maybeConfigureStaticIp(Landroid/net/TetheringRequestParcel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeLogMessage(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/util/State;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->maybeLogMessage(Lcom/android/networkstack/tethering/util/State;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveInterfaceForward(Landroid/net/ip/IpServer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->removeInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveRoutesFromLocalNetwork(Landroid/net/ip/IpServer;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->removeRoutesFromLocalNetwork(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestIpv4Address(Landroid/net/ip/IpServer;IZ)Landroid/net/LinkAddress;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->requestIpv4Address(IZ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetLinkProperties(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendInterfaceState(Landroid/net/ip/IpServer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->sendInterfaceState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendLinkProperties(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartConntrackMonitoring(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/net/ip/IpServer;->startConntrackMonitoring()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartIPv4(Landroid/net/ip/IpServer;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->startIPv4(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartIPv6(Landroid/net/ip/IpServer;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/net/ip/IpServer;->startIPv6()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopConntrackMonitoring(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopConntrackMonitoring()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopIPv4(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopIPv6(Landroid/net/ip/IpServer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUpstreamIPv6LinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 146
    const-string v0, "00:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpServer;->NULL_MAC_ADDRESS:Landroid/net/MacAddress;

    .line 149
    const-string v0, "ro.vendor.feature.zte_feature_enable_mbb_tether_control"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/net/ip/IpServer;->enableMbbTetherControl:Z

    .line 150
    const-string v0, "ro.vendor.feature.zte_featue_driver_aic8800"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/net/ip/IpServer;->enableMbbSetMetered:Z

    const/4 v0, 0x1

    .line 153
    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Landroid/net/ip/IpServer;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/ip/IpServer;->sMessageClasses:[Ljava/lang/Class;

    .line 157
    invoke-static {v0}, Lcom/android/networkstack/tethering/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/networkstack/tethering/util/SharedLog;Landroid/net/INetd;Lcom/android/networkstack/tethering/BpfCoordinator;Lcom/android/networkstack/tethering/util/SdkUtil$LateSdk;Landroid/net/ip/IpServer$Callback;Lcom/android/networkstack/tethering/TetheringConfiguration;Lcom/android/networkstack/tethering/PrivateAddressCoordinator;Lcom/android/networkstack/tethering/metrics/TetheringMetrics;Landroid/net/ip/IpServer$Dependencies;)V
    .registers 16

    .line 344
    sget-boolean v0, Lcom/android/networkstack/tethering/TetheringConfiguration;->USE_SYNC_SM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    invoke-direct {p0, p1, v0}, Lcom/android/networkstack/tethering/util/StateMachineShim;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 308
    iput v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    .line 318
    iput v0, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    .line 319
    iput-boolean v0, p0, Landroid/net/ip/IpServer;->mUpstreamSupportsBpf:Z

    .line 321
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamPrefixes:Ljava/util/Set;

    .line 345
    iput-object p2, p0, Landroid/net/ip/IpServer;->mHandler:Landroid/os/Handler;

    .line 346
    invoke-virtual {p4, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->forSubComponent(Ljava/lang/String;)Lcom/android/networkstack/tethering/util/SharedLog;

    move-result-object p2

    iput-object p2, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    .line 347
    iput-object p5, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    .line 348
    iput-object p6, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    .line 349
    iput-object p7, p0, Landroid/net/ip/IpServer;->mRoutingCoordinator:Lcom/android/networkstack/tethering/util/SdkUtil$LateSdk;

    .line 350
    iput-object p8, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    .line 351
    new-instance p4, Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    invoke-direct {p4, p1, p5, p2}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;-><init>(Ljava/lang/String;Landroid/net/INetd;Lcom/android/networkstack/tethering/util/SharedLog;)V

    iput-object p4, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    .line 352
    iput-object p1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    .line 353
    iput p3, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    .line 354
    new-instance p3, Landroid/net/LinkProperties;

    invoke-direct {p3}, Landroid/net/LinkProperties;-><init>()V

    iput-object p3, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 355
    invoke-virtual {p9}, Lcom/android/networkstack/tethering/TetheringConfiguration;->useLegacyDhcpServer()Z

    move-result p3

    iput-boolean p3, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    .line 356
    invoke-virtual {p9}, Lcom/android/networkstack/tethering/TetheringConfiguration;->getP2pLeasesSubnetPrefixLength()I

    move-result p3

    iput p3, p0, Landroid/net/ip/IpServer;->mP2pLeasesSubnetPrefixLength:I

    .line 357
    iput-object p10, p0, Landroid/net/ip/IpServer;->mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

    .line 358
    iput-object p12, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    .line 359
    iput-object p11, p0, Landroid/net/ip/IpServer;->mTetheringMetrics:Lcom/android/networkstack/tethering/metrics/TetheringMetrics;

    .line 360
    invoke-direct {p0}, Landroid/net/ip/IpServer;->resetLinkProperties()V

    .line 361
    iput v0, p0, Landroid/net/ip/IpServer;->mLastError:I

    const/4 p3, 0x1

    .line 362
    iput p3, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 364
    invoke-direct {p0}, Landroid/net/ip/IpServer;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Landroid/net/ip/IpServer$MyNeighborEventConsumer;

    invoke-direct {p4, p0, v1}, Landroid/net/ip/IpServer$MyNeighborEventConsumer;-><init>(Landroid/net/ip/IpServer;Landroid/net/ip/IpServer$MyNeighborEventConsumer-IA;)V

    invoke-virtual {p12, p3, p2, p4}, Landroid/net/ip/IpServer$Dependencies;->getIpNeighborMonitor(Landroid/os/Handler;Lcom/android/networkstack/tethering/util/SharedLog;Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEventConsumer;)Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor;

    move-result-object p3

    iput-object p3, p0, Landroid/net/ip/IpServer;->mIpNeighborMonitor:Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor;

    .line 369
    invoke-virtual {p6}, Lcom/android/networkstack/tethering/BpfCoordinator;->isUsingBpfOffload()Z

    move-result p4

    if-eqz p4, :cond_8c

    invoke-virtual {p3}, Lcom/android/networkstack/tethering/util/FdEventsReader;->start()Z

    move-result p3

    if-nez p3, :cond_8c

    .line 370
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to create IpNeighborMonitor on "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    .line 373
    :cond_8c
    new-instance p1, Landroid/net/ip/IpServer$InitialState;

    invoke-direct {p1, p0}, Landroid/net/ip/IpServer$InitialState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p1, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/networkstack/tethering/util/State;

    .line 374
    new-instance p2, Landroid/net/ip/IpServer$LocalHotspotState;

    invoke-direct {p2, p0}, Landroid/net/ip/IpServer$LocalHotspotState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p2, p0, Landroid/net/ip/IpServer;->mLocalHotspotState:Lcom/android/networkstack/tethering/util/State;

    .line 375
    new-instance p3, Landroid/net/ip/IpServer$TetheredState;

    invoke-direct {p3, p0}, Landroid/net/ip/IpServer$TetheredState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p3, p0, Landroid/net/ip/IpServer;->mTetheredState:Lcom/android/networkstack/tethering/util/State;

    .line 376
    new-instance p4, Landroid/net/ip/IpServer$UnavailableState;

    invoke-direct {p4, p0}, Landroid/net/ip/IpServer$UnavailableState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p4, p0, Landroid/net/ip/IpServer;->mUnavailableState:Lcom/android/networkstack/tethering/util/State;

    .line 377
    new-instance p5, Landroid/net/ip/IpServer$WaitingForRestartState;

    invoke-direct {p5, p0}, Landroid/net/ip/IpServer$WaitingForRestartState;-><init>(Landroid/net/ip/IpServer;)V

    iput-object p5, p0, Landroid/net/ip/IpServer;->mWaitingForRestartState:Lcom/android/networkstack/tethering/util/State;

    .line 378
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 379
    new-instance p7, Lcom/android/networkstack/tethering/util/SyncStateMachine$StateInfo;

    invoke-direct {p7, p1, v1}, Lcom/android/networkstack/tethering/util/SyncStateMachine$StateInfo;-><init>(Lcom/android/networkstack/tethering/util/State;Lcom/android/networkstack/tethering/util/State;)V

    invoke-virtual {p6, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance p1, Lcom/android/networkstack/tethering/util/SyncStateMachine$StateInfo;

    invoke-direct {p1, p2, v1}, Lcom/android/networkstack/tethering/util/SyncStateMachine$StateInfo;-><init>(Lcom/android/networkstack/tethering/util/State;Lcom/android/networkstack/tethering/util/State;)V

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance p1, Lcom/android/networkstack/tethering/util/SyncStateMachine$StateInfo;

    invoke-direct {p1, p3, v1}, Lcom/android/networkstack/tethering/util/SyncStateMachine$StateInfo;-><init>(Lcom/android/networkstack/tethering/util/State;Lcom/android/networkstack/tethering/util/State;)V

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance p1, Lcom/android/networkstack/tethering/util/SyncStateMachine$StateInfo;

    invoke-direct {p1, p5, p3}, Lcom/android/networkstack/tethering/util/SyncStateMachine$StateInfo;-><init>(Lcom/android/networkstack/tethering/util/State;Lcom/android/networkstack/tethering/util/State;)V

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance p1, Lcom/android/networkstack/tethering/util/SyncStateMachine$StateInfo;

    invoke-direct {p1, p4, v1}, Lcom/android/networkstack/tethering/util/SyncStateMachine$StateInfo;-><init>(Lcom/android/networkstack/tethering/util/State;Lcom/android/networkstack/tethering/util/State;)V

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-virtual {p0, p6}, Lcom/android/networkstack/tethering/util/StateMachineShim;->addAllStates(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Landroid/net/ip/IpServer;II)V
    .registers 3

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/tethering/util/StateMachineShim;->sendMessageAtFrontOfQueueToAsyncSM(II)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/ip/IpServer;II)V
    .registers 3

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/tethering/util/StateMachineShim;->sendMessageAtFrontOfQueueToAsyncSM(II)V

    return-void
.end method

.method private addInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 897
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/ip/IpServer;->mRoutingCoordinator:Lcom/android/networkstack/tethering/util/SdkUtil$LateSdk;

    iget-object v0, v0, Lcom/android/networkstack/tethering/util/SdkUtil$LateSdk;->value:Ljava/lang/Object;

    if-eqz v0, :cond_12

    .line 898
    check-cast v0, Landroid/net/RoutingCoordinatorManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/RoutingCoordinatorManager;->addInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 900
    :cond_12
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object p0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method private addInterfaceToNetwork(ILjava/lang/String;)V
    .registers 5

    .line 883
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/net/ip/IpServer;->mRoutingCoordinator:Lcom/android/networkstack/tethering/util/SdkUtil$LateSdk;

    iget-object v0, v0, Lcom/android/networkstack/tethering/util/SdkUtil$LateSdk;->value:Ljava/lang/Object;

    if-eqz v0, :cond_14

    .line 886
    check-cast v0, Landroid/net/RoutingCoordinatorManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/RoutingCoordinatorManager;->addInterfaceToNetwork(ILjava/lang/String;)V

    goto :goto_37

    :catch_12
    move-exception p1

    goto :goto_1a

    .line 888
    :cond_14
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_19} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_12

    goto :goto_37

    .line 891
    :goto_1a
    iget-object p2, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to local table: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_37
    return-void
.end method

.method private addOrRemoveIpv6Downstream(Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 1030
    :cond_3
    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    .line 1031
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_56

    .line 1038
    :cond_20
    invoke-virtual {p1}, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->macAddr:Landroid/net/MacAddress;

    :goto_28
    move-object v6, v0

    goto :goto_2d

    :cond_2a
    sget-object v0, Landroid/net/ip/IpServer;->NULL_MAC_ADDRESS:Landroid/net/MacAddress;

    goto :goto_28

    .line 1039
    :goto_2d
    new-instance v0, Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6DownstreamRule;

    iget v1, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    iget-boolean v2, p0, Landroid/net/ip/IpServer;->mUpstreamSupportsBpf:Z

    .line 1040
    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpServer;->getInterfaceIndexForRule(IZ)I

    move-result v2

    iget-object v1, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    iget v3, v1, Lcom/android/networkstack/tethering/util/InterfaceParams;->index:I

    iget-object v4, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    check-cast v4, Ljava/net/Inet6Address;

    iget-object v5, v1, Lcom/android/networkstack/tethering/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6DownstreamRule;-><init>(IILjava/net/Inet6Address;Landroid/net/MacAddress;Landroid/net/MacAddress;)V

    .line 1042
    invoke-virtual {p1}, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->isValid()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 1043
    iget-object p1, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {p1, p0, v0}, Lcom/android/networkstack/tethering/BpfCoordinator;->addIpv6DownstreamRule(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6DownstreamRule;)V

    goto :goto_56

    .line 1045
    :cond_51
    iget-object p1, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {p1, p0, v0}, Lcom/android/networkstack/tethering/BpfCoordinator;->removeIpv6DownstreamRule(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/BpfCoordinator$Ipv6DownstreamRule;)V

    :cond_56
    :goto_56
    return-void
.end method

.method private addRoutesToLocalNetwork(Ljava/util/List;)V
    .registers 4

    const/16 v0, 0x63

    .line 930
    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpServer;->addInterfaceToNetwork(ILjava/lang/String;)V

    .line 934
    :try_start_7
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/networkstack/tethering/util/NetdUtils;->addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_e} :catch_25

    .line 940
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_12

    :cond_24
    return-void

    :catch_25
    move-exception p1

    .line 936
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to add IPv4/v6 routes to local table: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private configureDhcp(ZLandroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 8

    .line 674
    const-string v0, "persist.sys.tetherconfig.DHCPAddressPoolStatus"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHCPAddressPoolStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IpServer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2a

    .line 676
    sget-boolean p1, Landroid/net/ip/IpServer;->enableMbbTetherControl:Z

    if-eqz p1, :cond_25

    if-eqz v0, :cond_2a

    .line 677
    :cond_25
    invoke-direct {p0, p2, p3}, Landroid/net/ip/IpServer;->startDhcp(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0

    .line 679
    :cond_2a
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V

    return v1
.end method

.method private configureIPv4(ZI)Z
    .registers 6

    .line 697
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

    .line 700
    invoke-direct {p0, p2, v0}, Landroid/net/ip/IpServer;->requestIpv4Address(IZ)Landroid/net/LinkAddress;

    move-result-object p2

    iput-object p2, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    .line 703
    :cond_24
    iget-object p2, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    const/4 v0, 0x0

    if-nez p2, :cond_31

    .line 704
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p1, "No available ipv4 address"

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    return v0

    .line 708
    :cond_31
    invoke-direct {p0}, Landroid/net/ip/IpServer;->shouldNotConfigureBluetoothInterface()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3f

    .line 710
    iget-object p2, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, p1, p2, v1}, Landroid/net/ip/IpServer;->configureDhcp(ZLandroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0

    .line 713
    :cond_3f
    iget-object p2, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-static {p2}, Lcom/android/networkstack/tethering/util/PrefixUtils;->asIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;

    .line 716
    iget p2, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    if-eqz p2, :cond_56

    const/4 v2, 0x3

    if-eq p2, v2, :cond_56

    const/4 v2, 0x5

    if-eq p2, v2, :cond_56

    const/4 v2, 0x6

    if-ne p2, v2, :cond_52

    goto :goto_56

    .line 725
    :cond_52
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 727
    :cond_56
    :goto_56
    iget-object p2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {p2, v2, v1}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;->setInterfaceConfiguration(Landroid/net/LinkAddress;Ljava/lang/Boolean;)Z

    move-result p2

    if-nez p2, :cond_6d

    .line 728
    iget-object p2, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string v1, "Error configuring interface"

    invoke-virtual {p2, v1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    if-nez p1, :cond_6c

    .line 729
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopDhcp()V

    :cond_6c
    return v0

    :cond_6d
    if-eqz p1, :cond_82

    .line 734
    iget-object p2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 735
    iget-object p2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_94

    .line 737
    :cond_82
    iget-object p2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 738
    iget-object p2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    .line 740
    :goto_94
    iget-object p2, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

    invoke-direct {p0, p1, p2, v0}, Landroid/net/ip/IpServer;->configureDhcp(ZLandroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method private configureLocalIPv6Dns(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 8

    .line 966
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    if-nez v0, :cond_11

    if-eqz p2, :cond_9

    .line 967
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 968
    :cond_9
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p1, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    .line 973
    :cond_11
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    const/16 v1, 0x40

    if-nez v0, :cond_52

    .line 974
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 975
    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    invoke-virtual {v2, v0, v1}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;->removeAddress(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_47

    .line 976
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove local dns IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    .line 979
    :cond_47
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_1d

    :cond_52
    if-eqz p2, :cond_a4

    .line 984
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a4

    .line 985
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 986
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v0, :cond_68

    .line 987
    iget-object v0, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 990
    :cond_68
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 991
    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    invoke-virtual {v2, v0, v1}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_99

    .line 992
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add local dns IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 996
    :cond_99
    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_6c

    .line 1001
    :cond_a4
    :try_start_a4
    iget-object p1, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {p1}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_a9
    .catch Landroid/os/ServiceSpecificException; {:try_start_a4 .. :try_end_a9} :catch_aa
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a9} :catch_aa

    goto :goto_b6

    .line 1003
    :catch_aa
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p1, "Failed to update local DNS caching server"

    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_b6

    .line 1004
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    :cond_b6
    :goto_b6
    return-void
.end method

.method private configureLocalIPv6Routes(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 4

    .line 946
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 947
    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Landroid/util/ArraySet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->removeRoutesFromLocalNetwork(Ljava/util/List;)V

    :cond_f
    if-eqz p2, :cond_34

    .line 951
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_34

    .line 952
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 953
    iget-object p2, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz p2, :cond_25

    .line 954
    iget-object p2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 957
    :cond_25
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_34

    .line 958
    iget-object p2, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/net/ip/IpServer;->getLocalRoutesFor(Ljava/lang/String;Landroid/util/ArraySet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->addRoutesToLocalNetwork(Ljava/util/List;)V

    :cond_34
    return-void
.end method

.method private getDirectConnectedRoute(Landroid/net/LinkAddress;)Landroid/net/RouteInfo;
    .registers 5

    .line 594
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    new-instance v0, Landroid/net/RouteInfo;

    invoke-static {p1}, Lcom/android/networkstack/tethering/util/PrefixUtils;->asIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;

    move-result-object p1

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 1

    .line 388
    iget-object p0, p0, Landroid/net/ip/IpServer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getHopLimit(Ljava/lang/String;I)B
    .registers 7

    .line 1081
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    const-string v1, "hop_limit"

    const/4 v2, 0x6

    const/4 v3, 0x1

    .line 1082
    invoke-interface {v0, v2, v3, p1, v1}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1081
    invoke-static {p1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p2

    const/16 p2, 0xff

    .line 1085
    invoke-static {p1, p2}, Ljava/lang/Integer;->min(II)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    int-to-byte p0, p0

    return p0

    :catch_17
    move-exception p1

    .line 1087
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p2, "Failed to find upstream interface hop limit"

    invoke-virtual {p0, p2, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x41

    return p0
.end method

.method private getInterfaceIndexForRule(IZ)I
    .registers 3

    .line 0
    if-eqz p2, :cond_3

    goto :goto_4

    :cond_3
    const/4 p1, 0x0

    :goto_4
    return p1
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .registers 8

    .line 1602
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    .line 1603
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v4

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [B

    aput-byte v4, v6, v3

    aput-byte v5, v6, v2

    const/16 v2, 0x2a

    invoke-static {v2, v6}, Landroid/net/ip/IpServer;->getRandomSanitizedByte(B[B)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    .line 1605
    :try_start_20
    invoke-static {v1, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_24
    .catch Ljava/net/UnknownHostException; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    .line 1607
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

.method private static getLocalRoutesFor(Ljava/lang/String;Landroid/util/ArraySet;)Ljava/util/ArrayList;
    .registers 7

    .line 1593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1594
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .line 1595
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

    .line 1613
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    .line 1614
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

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_1d
    const-string p0, "LOCAL_ONLY"

    return-object p0

    .line 126
    :cond_20
    const-string p0, "TETHERED"

    return-object p0

    .line 125
    :cond_23
    const-string p0, "AVAILABLE"

    return-object p0

    .line 124
    :cond_26
    const-string p0, "UNAVAILABLE"

    return-object p0
.end method

.method private getTetherableIpv6Prefixes(Landroid/net/LinkProperties;)Landroid/util/ArraySet;
    .registers 2

    .line 1634
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroid/net/ip/IpServer;->getTetherableIpv6Prefixes(Ljava/util/Collection;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method static getTetherableIpv6Prefixes(Ljava/util/Collection;)Landroid/util/ArraySet;
    .registers 5

    .line 1624
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1625
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1626
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1e

    goto :goto_9

    .line 1627
    :cond_1e
    new-instance v2, Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v2, v1, v3}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2b
    return-object v0
.end method

.method private handleNeighborEvent(Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 5

    .line 1071
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    if-eqz v0, :cond_14

    iget v1, v0, Lcom/android/networkstack/tethering/util/InterfaceParams;->index:I

    iget v2, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ifindex:I

    if-ne v1, v2, :cond_14

    iget-boolean v0, v0, Lcom/android/networkstack/tethering/util/InterfaceParams;->hasMacAddress:Z

    if-eqz v0, :cond_14

    .line 1074
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->addOrRemoveIpv6Downstream(Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V

    .line 1075
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->updateClientInfoIpv4(Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V

    :cond_14
    return-void
.end method

.method private makeServingParams(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/LinkAddress;Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcel;
    .registers 12

    .line 601
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    if-nez p4, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    const/4 v4, 0x3

    if-ne v0, v4, :cond_12

    .line 604
    iget p0, p0, Landroid/net/ip/IpServer;->mP2pLeasesSubnetPrefixLength:I

    goto :goto_13

    :cond_12
    move p0, v3

    .line 606
    :goto_13
    sget-boolean v0, Landroid/net/ip/IpServer;->enableMbbSetMetered:Z

    const-wide/16 v4, 0xe10

    if-eqz v0, :cond_47

    .line 607
    new-instance v0, Landroid/net/dhcp/DhcpServingParamsParcelExt;

    invoke-direct {v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;-><init>()V

    new-array v6, v2, [Ljava/net/Inet4Address;

    aput-object p1, v6, v3

    .line 608
    invoke-virtual {v0, v6}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDefaultRouters([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 609
    invoke-virtual {p1, v4, v5}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDhcpLeaseTimeSecs(J)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    new-array v0, v2, [Ljava/net/Inet4Address;

    aput-object p2, v0, v3

    .line 610
    invoke-virtual {p1, v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDnsServers([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 611
    invoke-virtual {p1, p3}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setServerAddr(Landroid/net/LinkAddress;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 612
    invoke-virtual {p1, v3}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setMetered(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 613
    invoke-virtual {p1, p4}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setSingleClientAddr(Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 614
    invoke-virtual {p1, v1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setChangePrefixOnDecline(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 615
    invoke-virtual {p1, p0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setLeasesSubnetPrefixLength(I)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p0

    return-object p0

    .line 617
    :cond_47
    new-instance v0, Landroid/net/dhcp/DhcpServingParamsParcelExt;

    invoke-direct {v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;-><init>()V

    new-array v6, v2, [Ljava/net/Inet4Address;

    aput-object p1, v6, v3

    .line 618
    invoke-virtual {v0, v6}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDefaultRouters([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 619
    invoke-virtual {p1, v4, v5}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDhcpLeaseTimeSecs(J)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    new-array v0, v2, [Ljava/net/Inet4Address;

    aput-object p2, v0, v3

    .line 620
    invoke-virtual {p1, v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDnsServers([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 621
    invoke-virtual {p1, p3}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setServerAddr(Landroid/net/LinkAddress;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 622
    invoke-virtual {p1, v2}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setMetered(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 623
    invoke-virtual {p1, p4}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setSingleClientAddr(Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 624
    invoke-virtual {p1, v1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setChangePrefixOnDecline(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p1

    .line 625
    invoke-virtual {p1, p0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setLeasesSubnetPrefixLength(I)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object p0

    return-object p0
.end method

.method private maybeConfigureStaticIp(Landroid/net/TetheringRequestParcel;)V
    .registers 4

    if-eqz p1, :cond_19

    .line 1140
    iget-object v0, p1, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    if-eqz v0, :cond_19

    iget-object v1, p1, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_19

    .line 1141
    invoke-static {v0, v1}, Landroid/net/TetheringManager$TetheringRequest;->checkStaticAddressConfiguration(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 1146
    :cond_11
    iget-object v0, p1, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    iput-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

    .line 1147
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

    .line 1116
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/networkstack/tethering/util/State;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " got "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/net/ip/IpServer;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 1117
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1116
    invoke-virtual {p0, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->log(Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method private removeInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 907
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/net/ip/IpServer;->mRoutingCoordinator:Lcom/android/networkstack/tethering/util/SdkUtil$LateSdk;

    iget-object v0, v0, Lcom/android/networkstack/tethering/util/SdkUtil$LateSdk;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    .line 909
    :try_start_c
    check-cast v0, Landroid/net/RoutingCoordinatorManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/RoutingCoordinatorManager;->removeInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_37

    :catch_12
    move-exception p1

    .line 911
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p2, "Exception in removeInterfaceForward"

    invoke-virtual {p0, p2, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    .line 915
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
    .catch Landroid/os/ServiceSpecificException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception v0

    .line 917
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string v2, "Exception in ipfwdRemoveInterfaceForward"

    invoke-virtual {v1, v2, v0}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 920
    :goto_29
    :try_start_29
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catch Landroid/os/ServiceSpecificException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception p1

    .line 922
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string p2, "Exception in disableNat"

    invoke-virtual {p0, p2, p1}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_37
    return-void
.end method

.method private removeRoutesFromLocalNetwork(Ljava/util/List;)V
    .registers 5

    .line 871
    iget-object v0, p0, Landroid/net/ip/IpServer;->mNetd:Landroid/net/INetd;

    invoke-static {v0, p1}, Lcom/android/networkstack/tethering/util/NetdUtils;->removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    .line 874
    iget-object v1, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    .line 875
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 874
    const-string v2, "Failed to remove %d IPv6 routes from local table."

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    .line 878
    :cond_1b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_1f

    :cond_31
    return-void
.end method

.method private requestIpv4Address(IZ)Landroid/net/LinkAddress;
    .registers 6

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestIpv4Address: mInterfaceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    if-eqz v0, :cond_fixed_wifi

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    new-instance p0, Landroid/net/LinkAddress;

    const-string p1, "192.168.42.1/24"

    invoke-direct {p0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_fixed_wifi
    new-instance p0, Landroid/net/LinkAddress;

    const-string p1, "192.168.43.1/24"

    invoke-direct {p0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_20
    sget-boolean v0, Landroid/net/ip/IpServer;->enableMbbTetherControl:Z

    if-eqz v0, :cond_77

    .line 751
    iget v0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6c

    .line 752
    const-string p0, "persist.sys.tetherconfig.sGatewayAndSubnetMask"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 753
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_64

    if-eqz p2, :cond_64

    .line 754
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "customGatewayAndMask:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance p1, Landroid/net/LinkAddress;

    invoke-direct {p1, p0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 757
    :cond_64
    new-instance p0, Landroid/net/LinkAddress;

    const-string p1, "192.168.0.1/24"

    invoke-direct {p0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_6c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_77

    .line 759
    new-instance p0, Landroid/net/LinkAddress;

    const-string p1, "0.0.0.0/24"

    invoke-direct {p0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 762
    :cond_77
    iget-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

    if-eqz v0, :cond_61

    return-object v0

    .line 764
    :cond_61
    invoke-direct {p0}, Landroid/net/ip/IpServer;->shouldNotConfigureBluetoothInterface()Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance p0, Landroid/net/LinkAddress;

    const-string p1, "192.168.44.1/24"

    invoke-direct {p0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 766
    :cond_6f
    iget-object v0, p0, Landroid/net/ip/IpServer;->mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/networkstack/tethering/PrivateAddressCoordinator;->requestDownstreamAddress(Landroid/net/ip/IpServer;IZ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method private resetLinkProperties()V
    .registers 2

    .line 1132
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 1133
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    return-void
.end method

.method private sendInterfaceState(I)V
    .registers 4

    .line 1122
    iput p1, p0, Landroid/net/ip/IpServer;->mServingMode:I

    .line 1123
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    iget v1, p0, Landroid/net/ip/IpServer;->mLastError:I

    invoke-virtual {v0, p0, p1, v1}, Landroid/net/ip/IpServer$Callback;->updateInterfaceState(Landroid/net/ip/IpServer;II)V

    .line 1124
    invoke-direct {p0}, Landroid/net/ip/IpServer;->sendLinkProperties()V

    return-void
.end method

.method private sendLinkProperties()V
    .registers 4

    .line 1128
    iget-object v0, p0, Landroid/net/ip/IpServer;->mCallback:Landroid/net/ip/IpServer$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpServer$Callback;->updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    return-void
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 6

    .line 1093
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_24

    .line 1094
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 1095
    invoke-static {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    .line 1097
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Landroid/util/ArraySet;

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    .line 1098
    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Landroid/util/ArraySet;

    goto :goto_13

    :cond_12
    move-object v3, v2

    .line 1097
    :goto_13
    invoke-direct {p0, v1, v3}, Landroid/net/ip/IpServer;->configureLocalIPv6Routes(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1100
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Landroid/util/ArraySet;

    if-eqz p1, :cond_1c

    .line 1101
    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Landroid/util/ArraySet;

    .line 1100
    :cond_1c
    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpServer;->configureLocalIPv6Dns(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1103
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 1106
    :cond_24
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    return-void
.end method

.method private shouldNotConfigureBluetoothInterface()Z
    .registers 2

    .line 745
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

    .line 1186
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/BpfCoordinator;->startMonitoring(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method private startDhcp(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 8

    .line 630
    iget-boolean v0, p0, Landroid/net/ip/IpServer;->mUsingLegacyDhcp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 634
    :cond_6
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    const/4 v2, 0x0

    if-nez p2, :cond_11

    move-object p2, v2

    goto :goto_17

    .line 636
    :cond_11
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    check-cast p2, Ljava/net/Inet4Address;

    .line 638
    :goto_17
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/net/ip/IpServer;->makeServingParams(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/LinkAddress;Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcel;

    move-result-object p1

    .line 640
    iget p2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/2addr p2, v1

    iput p2, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 641
    iget-object p2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    new-instance v3, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    iget v4, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    invoke-direct {v3, p0, v4, v2}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;-><init>(Landroid/net/ip/IpServer;ILandroid/net/ip/IpServer$DhcpServerCallbacksImpl-IA;)V

    invoke-virtual {p2, v0, p1, v3}, Landroid/net/ip/IpServer$Dependencies;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/DhcpServerCallbacks;)V

    return v1
.end method

.method private startIPv4(I)Z
    .registers 3

    const/4 v0, 0x1

    .line 457
    invoke-direct {p0, v0, p1}, Landroid/net/ip/IpServer;->configureIPv4(ZI)Z

    move-result p0

    return p0
.end method

.method private startIPv6()Z
    .registers 4

    .line 770
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    iget-object v1, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer$Dependencies;->getInterfaceParams(Ljava/lang/String;)Lcom/android/networkstack/tethering/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 772
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string v2, "Failed to find InterfaceParams"

    invoke-virtual {v0, v2}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;)V

    .line 773
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return v1

    .line 777
    :cond_18
    iget-object v2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {v2, v0}, Landroid/net/ip/IpServer$Dependencies;->getRouterAdvertisementDaemon(Lcom/android/networkstack/tethering/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 778
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 779
    invoke-direct {p0}, Landroid/net/ip/IpServer;->stopIPv6()V

    return v1

    .line 783
    :cond_2a
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 785
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-direct {p0}, Landroid/net/ip/IpServer;->getHandler()Landroid/os/Handler;

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

    .line 1190
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/BpfCoordinator;->stopMonitoring(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method private stopDhcp()V
    .registers 3

    .line 648
    iget v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/ip/IpServer;->mDhcpServerStartIndex:I

    .line 650
    iget-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;

    if-eqz v0, :cond_1e

    .line 652
    :try_start_a
    new-instance v1, Landroid/net/ip/IpServer$1;

    invoke-direct {v1, p0}, Landroid/net/ip/IpServer$1;-><init>(Landroid/net/ip/IpServer;)V

    invoke-interface {v0, v1}, Landroid/net/dhcp/IDhcpServer;->stop(Landroid/net/INetworkStackStatusCallback;)V

    const/4 v0, 0x0

    .line 664
    iput-object v0, p0, Landroid/net/ip/IpServer;->mDhcpServer:Landroid/net/dhcp/IDhcpServer;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception v0

    .line 666
    iget-object p0, p0, Landroid/net/ip/IpServer;->mLog:Lcom/android/networkstack/tethering/util/SharedLog;

    const-string v1, "Error stopping DHCP server"

    invoke-virtual {p0, v1, v0}, Lcom/android/networkstack/tethering/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private stopIPv4()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 685
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpServer;->configureIPv4(ZI)Z

    .line 688
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceCtrl:Lcom/android/networkstack/tethering/util/ip/InterfaceController;

    invoke-virtual {v0}, Lcom/android/networkstack/tethering/util/ip/InterfaceController;->clearIPv4Address()Z

    .line 689
    iget-object v0, p0, Landroid/net/ip/IpServer;->mPrivateAddressCoordinator:Lcom/android/networkstack/tethering/PrivateAddressCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/PrivateAddressCoordinator;->releaseDownstream(Landroid/net/ip/IpServer;)V

    .line 690
    iget-object v0, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadClientClear(Landroid/net/ip/IpServer;)V

    const/4 v0, 0x0

    .line 691
    iput-object v0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    .line 692
    iput-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ServerAddr:Landroid/net/LinkAddress;

    .line 693
    iput-object v0, p0, Landroid/net/ip/IpServer;->mStaticIpv4ClientAddr:Landroid/net/LinkAddress;

    return-void
.end method

.method private stopIPv6()V
    .registers 3

    const/4 v0, 0x0

    .line 792
    iput-object v0, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    .line 793
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 795
    iget-object v1, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_f

    .line 796
    invoke-virtual {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    .line 797
    iput-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 800
    :cond_f
    iget-object v1, p0, Landroid/net/ip/IpServer;->mDadProxy:Landroid/net/ip/DadProxy;

    if-eqz v1, :cond_18

    .line 801
    invoke-virtual {v1}, Landroid/net/ip/DadProxy;->stop()V

    .line 802
    iput-object v0, p0, Landroid/net/ip/IpServer;->mDadProxy:Landroid/net/ip/DadProxy;

    :cond_18
    return-void
.end method

.method private updateClientInfoIpv4(Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1052
    :cond_3
    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_4b

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    .line 1053
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_4b

    .line 1060
    :cond_20
    invoke-virtual {p1}, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->macAddr:Landroid/net/MacAddress;

    goto :goto_2b

    :cond_29
    sget-object v0, Landroid/net/ip/IpServer;->NULL_MAC_ADDRESS:Landroid/net/MacAddress;

    .line 1061
    :goto_2b
    new-instance v1, Lcom/android/networkstack/tethering/BpfCoordinator$ClientInfo;

    iget-object v2, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    iget v3, v2, Lcom/android/networkstack/tethering/util/InterfaceParams;->index:I

    iget-object v2, v2, Lcom/android/networkstack/tethering/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    iget-object v4, p1, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    check-cast v4, Ljava/net/Inet4Address;

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/android/networkstack/tethering/BpfCoordinator$ClientInfo;-><init>(ILandroid/net/MacAddress;Ljava/net/Inet4Address;Landroid/net/MacAddress;)V

    .line 1063
    invoke-virtual {p1}, Lcom/android/networkstack/tethering/util/ip/IpNeighborMonitor$NeighborEvent;->isValid()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1064
    iget-object p1, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {p1, p0, v1}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadClientAdd(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/BpfCoordinator$ClientInfo;)V

    goto :goto_4b

    .line 1066
    :cond_46
    iget-object p1, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {p1, p0, v1}, Lcom/android/networkstack/tethering/BpfCoordinator;->tetherOffloadClientRemove(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/BpfCoordinator$ClientInfo;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method private updateIpv6ForwardingRules(ILjava/util/Set;ILjava/util/Set;Z)V
    .registers 6

    if-ne p1, p3, :cond_8

    .line 1019
    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 1020
    :cond_8
    iget-object p1, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    iget-object p2, p0, Landroid/net/ip/IpServer;->mInterfaceParams:Lcom/android/networkstack/tethering/util/InterfaceParams;

    .line 1021
    invoke-direct {p0, p3, p5}, Landroid/net/ip/IpServer;->getInterfaceIndexForRule(IZ)I

    move-result p3

    .line 1020
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/networkstack/tethering/BpfCoordinator;->updateAllIpv6Rules(Landroid/net/ip/IpServer;Lcom/android/networkstack/tethering/util/InterfaceParams;ILjava/util/Set;)V

    :cond_13
    return-void
.end method

.method private updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;I)V
    .registers 12

    .line 813
    iget-object v0, p0, Landroid/net/ip/IpServer;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v0, :cond_5

    return-void

    .line 816
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    if-eqz p1, :cond_5e

    .line 826
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 827
    iget-object v2, p0, Landroid/net/ip/IpServer;->mDeps:Landroid/net/ip/IpServer$Dependencies;

    invoke-virtual {v2, v1}, Landroid/net/ip/IpServer$Dependencies;->getInterfaceParams(Ljava/lang/String;)Lcom/android/networkstack/tethering/util/InterfaceParams;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 829
    iget v3, v2, Lcom/android/networkstack/tethering/util/InterfaceParams;->index:I

    goto :goto_21

    :cond_20
    move v3, v0

    .line 831
    :goto_21
    new-instance v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v4}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    .line 832
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v5

    iput v5, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 833
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v5

    iput-boolean v5, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    if-eqz v5, :cond_3a

    .line 835
    invoke-direct {p0, v1, p2}, Landroid/net/ip/IpServer;->getHopLimit(Ljava/lang/String;I)B

    move-result p2

    iput-byte p2, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    .line 837
    :cond_3a
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer;->getTetherableIpv6Prefixes(Landroid/net/LinkProperties;)Landroid/util/ArraySet;

    move-result-object p2

    iput-object p2, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Landroid/util/ArraySet;

    .line 838
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_44
    :goto_44
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/IpPrefix;

    .line 839
    invoke-static {v5}, Landroid/net/ip/IpServer;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v5

    if-eqz v5, :cond_44

    .line 841
    iget-object v6, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_5c
    move p2, v3

    goto :goto_62

    :cond_5e
    const/4 v1, 0x0

    move p2, v0

    move-object v2, v1

    move-object v4, v2

    .line 850
    :goto_62
    iget-object v3, p0, Landroid/net/ip/IpServer;->mBpfCoordinator:Lcom/android/networkstack/tethering/BpfCoordinator;

    invoke-virtual {v3, p2, v1}, Lcom/android/networkstack/tethering/BpfCoordinator;->maybeAddUpstreamToLookupTable(ILjava/lang/String;)V

    .line 854
    invoke-direct {p0, v4}, Landroid/net/ip/IpServer;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    if-eqz v1, :cond_73

    .line 857
    invoke-static {v1}, Lcom/android/networkstack/tethering/UpstreamNetworkState;->isVcnInterface(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_73

    const/4 v0, 0x1

    :cond_73
    if-eqz v4, :cond_78

    .line 858
    iget-object v1, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Landroid/util/ArraySet;

    goto :goto_7c

    :cond_78
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    .line 859
    :goto_7c
    iget v4, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    iget-object v5, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamPrefixes:Ljava/util/Set;

    move-object v3, p0

    move v6, p2

    move-object v7, v1

    move v8, v0

    invoke-direct/range {v3 .. v8}, Landroid/net/ip/IpServer;->updateIpv6ForwardingRules(ILjava/util/Set;ILjava/util/Set;Z)V

    .line 861
    iput-object p1, p0, Landroid/net/ip/IpServer;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    .line 862
    iput p2, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamIfindex:I

    .line 863
    iput-object v1, p0, Landroid/net/ip/IpServer;->mLastIPv6UpstreamPrefixes:Ljava/util/Set;

    .line 864
    iput-boolean v0, p0, Landroid/net/ip/IpServer;->mUpstreamSupportsBpf:Z

    .line 865
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDadProxy:Landroid/net/ip/DadProxy;

    if-eqz p0, :cond_96

    .line 866
    invoke-virtual {p0, v2}, Landroid/net/ip/DadProxy;->setUpstreamIface(Lcom/android/networkstack/tethering/util/InterfaceParams;)V

    :cond_96
    return-void
.end method


# virtual methods
.method public enable(ILandroid/net/TetheringRequestParcel;)V
    .registers 5

    const/16 v0, 0x65

    const/4 v1, 0x0

    .line 438
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/networkstack/tethering/util/StateMachineShim;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public getAddress()Landroid/net/LinkAddress;
    .registers 1

    .line 425
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIpv4Address:Landroid/net/LinkAddress;

    return-object p0
.end method

.method public getAllLeases()Ljava/util/List;
    .registers 1

    .line 433
    iget-object p0, p0, Landroid/net/ip/IpServer;->mDhcpLeases:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public interfaceName()Ljava/lang/String;
    .registers 1

    .line 398
    iget-object p0, p0, Landroid/net/ip/IpServer;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public interfaceType()I
    .registers 1

    .line 405
    iget p0, p0, Landroid/net/ip/IpServer;->mInterfaceType:I

    return p0
.end method

.method public lastError()I
    .registers 1

    .line 410
    iget p0, p0, Landroid/net/ip/IpServer;->mLastError:I

    return p0
.end method

.method public linkProperties()Landroid/net/LinkProperties;
    .registers 2

    .line 420
    new-instance v0, Landroid/net/LinkProperties;

    iget-object p0, p0, Landroid/net/ip/IpServer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, p0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public servingMode()I
    .registers 1

    .line 415
    iget p0, p0, Landroid/net/ip/IpServer;->mServingMode:I

    return p0
.end method

.method public start()V
    .registers 2

    .line 393
    iget-object v0, p0, Landroid/net/ip/IpServer;->mInitialState:Lcom/android/networkstack/tethering/util/State;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/tethering/util/StateMachineShim;->start(Lcom/android/networkstack/tethering/util/State;)V

    return-void
.end method

.method public stop()V
    .registers 2

    const/16 v0, 0x67

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/networkstack/tethering/util/StateMachineShim;->sendMessage(I)V

    return-void
.end method

.method public unwanted()V
    .registers 2

    const/16 v0, 0x66

    .line 451
    invoke-virtual {p0, v0}, Lcom/android/networkstack/tethering/util/StateMachineShim;->sendMessage(I)V

    return-void
.end method
