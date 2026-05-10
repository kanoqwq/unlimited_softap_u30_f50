.class public Lcom/android/server/wifi/util/ApConfigUtil;
.super Ljava/lang/Object;
.source "ApConfigUtil.java"


# static fields
.field public static final DEFAULT_AP_BAND:I = 0x1

.field public static final DEFAULT_AP_CHANNEL:I = 0x6

.field public static final ERROR_GENERIC:I = 0x2

.field public static final ERROR_NO_CHANNEL:I = 0x1

.field public static final ERROR_UNSUPPORTED_CONFIGURATION:I = 0x3

.field public static final HIGHEST_2G_AP_CHANNEL:I = 0xe

.field public static final INVALID_VALUE_FOR_BAND_OR_CHANNEL:I = -0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApConfigUtil"

.field private static final sBandToOperatingClass:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final sRandom:Ljava/util/Random;

.field private static sVerboseLoggingEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$OPqqcvMk4XA0l62t4lcUklZhPnI(ZLandroid/net/wifi/WifiAvailableChannel;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->lambda$getHalAvailableChannelsForBand$0(ZLandroid/net/wifi/WifiAvailableChannel;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OsO8JW_s1qausH0ol4yQd9DlqTE(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->lambda$chooseApChannel$1(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 76
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    const/4 v0, 0x0

    .line 77
    sput-boolean v0, Lcom/android/server/wifi/util/ApConfigUtil;->sVerboseLoggingEnabled:Z

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sBandToOperatingClass:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 93
    fill-array-data v2, :array_30

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x10

    new-array v2, v2, [I

    .line 94
    fill-array-data v2, :array_3c

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 96
    fill-array-data v2, :array_60

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void

    :array_30
    .array-data 4
        0x51
        0x52
        0x53
        0x54
    .end array-data

    :array_3c
    .array-data 4
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7c
        0x7d
        0x7e
        0x7f
        0x80
        0x81
        0x82
    .end array-data

    :array_60
    .array-data 4
        0x83
        0x84
        0x85
        0x86
        0x87
        0x88
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDfsChannelsIfNeeded(Ljava/util/List;ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/server/wifi/WifiNative;",
            "Landroid/content/res/Resources;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, 0x7f020036

    .line 390
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-eqz p3, :cond_32

    const/4 p3, 0x2

    if-ne p1, p3, :cond_32

    const/4 p1, 0x4

    .line 392
    invoke-virtual {p2, p1}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object p1

    .line 394
    array-length p2, p1

    const/4 p3, 0x0

    :goto_13
    if-ge p3, p2, :cond_32

    aget v0, p1, p3

    if-eqz p4, :cond_1a

    goto :goto_1e

    .line 396
    :cond_1a
    invoke-static {v0}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v0

    .line 397
    :goto_1e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 p3, p3, 0x1

    goto :goto_13

    :cond_32
    return-object p0
.end method

.method public static apConfig2wifiScannerBand(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-eq p0, v0, :cond_12

    if-eq p0, v1, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    const/16 p0, 0x10

    return p0

    :cond_12
    return v1

    :cond_13
    return v0
.end method

.method public static append24GToBandIf24GSupported(ILandroid/content/Context;)I
    .registers 3

    const/4 v0, 0x1

    .line 231
    invoke-static {v0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandSupported(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    or-int/2addr p0, v0

    :cond_8
    return p0
.end method

.method public static append5GToBandIf5GSupported(ILandroid/content/Context;)I
    .registers 3

    const/4 v0, 0x2

    .line 245
    invoke-static {v0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandSupported(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    or-int/2addr p0, v0

    :cond_8
    return p0
.end method

.method public static bandToString(I)Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " & "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "unspecified"

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_15

    const-string v1, "2Ghz"

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_15
    and-int/lit8 p0, p0, -0x2

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_20

    const-string v1, "5Ghz"

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_20
    and-int/lit8 p0, p0, -0x3

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2b

    const-string v1, "6Ghz"

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2b
    and-int/lit8 p0, p0, -0x5

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_36

    const-string v1, "60Ghz"

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_36
    and-int/lit8 p0, p0, -0x9

    if-eqz p0, :cond_3d

    const-string p0, "Invalid band"

    return-object p0

    .line 128
    :cond_3d
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkConfigurationChangeNeedToRestart(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 4

    .line 1088
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1089
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1090
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    if-ne v0, v1, :cond_71

    .line 1091
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1092
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v1

    if-ne v0, v1, :cond_71

    .line 1093
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v1

    if-ne v0, v1, :cond_71

    .line 1094
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v1

    if-ne v0, v1, :cond_71

    .line 1095
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1096
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto :goto_71

    :cond_6f
    const/4 p0, 0x0

    goto :goto_72

    :cond_71
    :goto_71
    const/4 p0, 0x1

    :goto_72
    return p0
.end method

.method public static checkSupportAllConfiguration(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)Z
    .registers 8

    const-wide/16 v0, 0x2

    .line 1109
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const-string v1, "ApConfigUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_27

    .line 1111
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1112
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_27

    :cond_21
    const-string p0, "Error, Client control requires HAL support"

    .line 1113
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    const-wide/16 v3, 0x4

    .line 1117
    invoke-virtual {p1, v3, v4}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1118
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3d

    .line 1120
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_43

    :cond_3d
    const-string p0, "Error, SAE requires HAL support"

    .line 1121
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1126
    :cond_43
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_8a

    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1127
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v0

    .line 1128
    aget v4, v0, v2

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_84

    aget v0, v0, v3

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_62

    goto :goto_84

    :cond_62
    const-wide/16 v4, 0x1

    .line 1133
    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 1134
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    if-eqz p1, :cond_7e

    .line 1135
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    if-nez p0, :cond_8a

    :cond_7e
    const-string p0, "Error, dual APs requires HAL ACS support when channel isn\'t specified"

    .line 1136
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_84
    :goto_84
    const-string p0, "Error, dual APs doesn\'t support on 60GHz"

    .line 1130
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8a
    return v3
.end method

.method public static chooseApChannel(ILcom/android/server/wifi/coex/CoexManager;Landroid/content/res/Resources;Landroid/net/wifi/SoftApCapability;)I
    .registers 16

    .line 515
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result p2

    const/4 v0, -0x1

    const-string v1, "ApConfigUtil"

    if-nez p2, :cond_1e

    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid band: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 520
    :cond_1e
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 521
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 522
    invoke-static {p1}, Lcom/android/server/wifi/util/ApConfigUtil;->getUnsafeChannelFreqsFromCoex(Lcom/android/server/wifi/coex/CoexManager;)Ljava/util/Set;

    move-result-object p2

    :cond_2d
    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 524
    fill-array-data v3, :array_116

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_36
    if-ge v5, v2, :cond_d9

    .line 530
    aget v7, v3, v5

    and-int v8, p0, v7

    if-nez v8, :cond_40

    goto/16 :goto_d5

    .line 534
    :cond_40
    invoke-virtual {p3, v7}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v8

    if-eqz v8, :cond_d5

    .line 535
    array-length v9, v8

    if-nez v9, :cond_4b

    goto/16 :goto_d5

    .line 539
    :cond_4b
    invoke-static {v8}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda2;

    invoke-direct {v9, v7}, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda2;-><init>(I)V

    .line 540
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 541
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 543
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 544
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 545
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_74
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 546
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {p2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_96

    .line 547
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 549
    :cond_96
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 553
    :cond_9e
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b9

    .line 554
    sget-object p0, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-interface {v8, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 555
    :cond_b9
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d5

    if-nez v6, :cond_d5

    .line 557
    sget-object v6, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    .line 558
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 557
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_d5
    :goto_d5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_36

    .line 563
    :cond_d9
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_e9

    .line 565
    invoke-virtual {p1}, Lcom/android/server/wifi/coex/CoexManager;->getCoexRestrictions()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_e9

    move v4, v2

    :cond_e9
    if-nez v4, :cond_ee

    if-eqz v6, :cond_ee

    return v6

    .line 572
    :cond_ee
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result p0

    if-eqz p0, :cond_110

    const/4 p0, 0x6

    .line 573
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result p0

    const-string p1, "Allowed channel list not specified, selecting default channel"

    .line 575
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_10f

    .line 576
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10f

    const-string p1, "Default channel is hard restricted due to coex"

    .line 577
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10f
    return p0

    :cond_110
    const-string p0, "No available channels"

    .line 581
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :array_116
    .array-data 4
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public static collectAllowedAcsChannels(ILjava/lang/String;[I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1202
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->getOemAllowedChannels(ILjava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 1205
    invoke-static {p0, p2}, Lcom/android/server/wifi/util/ApConfigUtil;->getCallerAllowedChannels(I[I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1207
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static containsBand(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static convertChannelToFrequency(II)I
    .registers 2

    .line 181
    invoke-static {p1}, Lcom/android/server/wifi/util/ApConfigUtil;->apConfig2wifiScannerBand(I)I

    move-result p1

    .line 180
    invoke-static {p0, p1}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result p0

    return p0
.end method

.method public static convertFrequencyToBand(I)I
    .registers 2

    .line 191
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 193
    :cond_8
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x2

    return p0

    .line 195
    :cond_10
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x4

    return p0

    .line 197
    :cond_18
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is60GHz(I)Z

    move-result p0

    if-eqz p0, :cond_21

    const/16 p0, 0x8

    return p0

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method public static convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "-"

    const-string v1, "ApConfigUtil"

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 317
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ","

    .line 319
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_a7

    aget-object v6, p0, v5

    .line 321
    :try_start_1a
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 322
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 323
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3e

    .line 324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized channel range, Length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 327
    :cond_3e
    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    .line 328
    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v7, v6, :cond_72

    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid channel range, from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :cond_72
    :goto_72
    if-gt v7, v6, :cond_a3

    .line 335
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 338
    :cond_7e
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_8d} :catch_8e

    goto :goto_a3

    :catch_8e
    move-exception v6

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed channel value detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    :goto_a3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_16

    :cond_a7
    return-object v2
.end method

.method public static convertWifiConfigBandToSoftApConfigBand(I)I
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x2

    return p0

    :cond_9
    const/4 p0, 0x3

    return p0
.end method

.method public static deepCopyForSoftApInfoMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1297
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1298
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1299
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/net/wifi/SoftApInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v3, v1}, Landroid/net/wifi/SoftApInfo;-><init>(Landroid/net/wifi/SoftApInfo;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_32
    return-object v0
.end method

.method public static deepCopyForWifiClientListMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1312
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1313
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiClient;

    .line 1316
    new-instance v5, Landroid/net/wifi/WifiClient;

    invoke-virtual {v4}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v6

    .line 1317
    invoke-virtual {v4}, Landroid/net/wifi/WifiClient;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroid/net/wifi/WifiClient;-><init>(Landroid/net/MacAddress;Ljava/lang/String;)V

    .line 1316
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 1319
    :cond_49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_53
    return-object v0
.end method

.method public static enableVerboseLogging(Z)V
    .registers 1

    .line 84
    sput-boolean p0, Lcom/android/server/wifi/util/ApConfigUtil;->sVerboseLoggingEnabled:Z

    return-void
.end method

.method public static fromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/SoftApConfiguration;
    .registers 8

    const-string v0, "Invalid WifiConfiguration"

    const-string v1, "ApConfigUtil"

    .line 780
    new-instance v2, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    const/4 v3, 0x0

    .line 785
    :try_start_a
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 786
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1c

    .line 787
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 790
    :cond_1c
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 793
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/4 v5, 0x2

    if-eqz v4, :cond_30

    if-eq v4, v6, :cond_2f

    if-eq v4, v5, :cond_2c

    const/4 v6, 0x3

    goto :goto_30

    :cond_2c
    const/16 v6, 0x8

    goto :goto_30

    :cond_2f
    move v6, v5

    .line 808
    :cond_30
    :goto_30
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-nez v4, :cond_38

    .line 809
    invoke-virtual {v2, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3d

    .line 811
    :cond_38
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v2, p0, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_3d} :catch_56
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_3d} :catch_42

    .line 820
    :goto_3d
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0

    :catch_42
    move-exception p0

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_56
    move-exception p0

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static getAvailableChannelFreqsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wifi/WifiNative;",
            "Landroid/content/res/Resources;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 454
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c4

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isMultiband(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_c4

    .line 458
    :cond_f
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->apConfig2wifiScannerBand(I)I

    move-result v0

    const/4 v2, 0x0

    .line 463
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiNative;->isHalSupported()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1d

    :goto_1b
    move v2, v4

    goto :goto_2b

    .line 467
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v3

    if-nez v3, :cond_24

    return-object v1

    .line 471
    :cond_24
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wifi/util/ApConfigUtil;->getHalAvailableChannelsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2b

    goto :goto_1b

    :cond_2b
    :goto_2b
    if-eqz v2, :cond_31

    .line 479
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wifi/util/ApConfigUtil;->getWifiCondAvailableChannelsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object v1

    .line 482
    :cond_31
    invoke-static {p2, p0}, Lcom/android/server/wifi/util/ApConfigUtil;->getConfiguredChannelList(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c4

    .line 483
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c4

    if-nez v1, :cond_41

    goto/16 :goto_c4

    .line 486
    :cond_41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4a
    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p3, :cond_72

    .line 490
    invoke-static {v0, p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result v0

    .line 491
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 492
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 494
    :cond_72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 495
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 498
    :cond_84
    sget-boolean p1, Lcom/android/server/wifi/util/ApConfigUtil;->sVerboseLoggingEnabled:Z

    if-eqz p1, :cond_c3

    .line 499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Filtered channel list for band "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->bandToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/android/server/wifi/SoftApManager$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/android/server/wifi/SoftApManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string p3, ","

    invoke-static {p3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApConfigUtil"

    .line 499
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    return-object p2

    :cond_c4
    :goto_c4
    return-object v1
.end method

.method public static getBandFromOperatingClass(I)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 139
    :goto_2
    sget-object v2, Lcom/android/server/wifi/util/ApConfigUtil;->sBandToOperatingClass:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_23

    .line 140
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 141
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move v4, v0

    .line 143
    :goto_15
    array-length v5, v2

    if-ge v4, v5, :cond_20

    .line 144
    aget v5, v2, v4

    if-ne v5, p0, :cond_1d

    return v3

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method private static getCallerAllowedChannels(I[I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1279
    array-length v0, p1

    if-nez v0, :cond_8

    .line 1281
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->getSetForAllChannelsInBand(I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1285
    :cond_8
    invoke-static {p1}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 1286
    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private static getConfiguredChannelList(Landroid/content/res/Resources;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_33

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x8

    if-eq p1, v0, :cond_f

    const/4 p0, 0x0

    return-object p0

    :cond_f
    const p1, 0x7f070007

    .line 378
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1b
    const p1, 0x7f070008

    .line 375
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_27
    const p1, 0x7f070006

    .line 372
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_33
    const p1, 0x7f070005

    .line 369
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getHalAvailableChannelsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wifi/WifiNative;",
            "Landroid/content/res/Resources;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 423
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wifi/WifiNative;->getUsableChannels(III)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 431
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 432
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 436
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 437
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/wifi/util/ApConfigUtil;->addDfsChannelsIfNeeded(Ljava/util/List;ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getOemAllowedChannels(ILjava/lang/String;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "-"

    const-string v1, "ApConfigUtil"

    .line 1239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1241
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->getSetForAllChannelsInBand(I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1245
    :cond_f
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v2, ","

    .line 1247
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v2, :cond_bf

    aget-object v5, p1, v4

    .line 1249
    :try_start_21
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 1250
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1251
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_46

    .line 1252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized channel range, length is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 1255
    :cond_46
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    .line 1256
    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v6, v5, :cond_7a

    .line 1258
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid channel range, from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 1262
    :cond_7a
    invoke-static {v6, v5}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v5

    .line 1263
    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 1262
    invoke-interface {p0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_bb

    .line 1264
    :cond_90
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bb

    .line 1265
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1266
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_a5} :catch_a6

    goto :goto_bb

    :catch_a6
    move-exception v5

    .line 1270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed channel value detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    :goto_bb
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    :cond_bf
    return-object p0
.end method

.method private static getSetForAllChannelsInBand(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_54

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_28

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid band: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->bandToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApConfigUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_28
    const/16 p0, 0xe9

    .line 1227
    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 1230
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    .line 1231
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_3d
    const/16 p0, 0x20

    const/16 v0, 0xb1

    .line 1220
    invoke-static {p0, v0}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 1223
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    .line 1224
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_54
    const/16 p0, 0xe

    .line 1213
    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 1216
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    .line 1217
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static getUnsafeChannelFreqsFromCoex(Lcom/android/server/wifi/coex/CoexManager;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/coex/CoexManager;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 357
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 358
    invoke-virtual {p0}, Lcom/android/server/wifi/coex/CoexManager;->getCoexUnsafeChannels()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/CoexUnsafeChannel;

    .line 360
    invoke-virtual {v1}, Landroid/net/wifi/CoexUnsafeChannel;->getChannel()I

    move-result v2

    invoke-virtual {v1}, Landroid/net/wifi/CoexUnsafeChannel;->getBand()I

    move-result v1

    .line 359
    invoke-static {v2, v1}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_33
    return-object v0
.end method

.method private static getWifiCondAvailableChannelsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wifi/WifiNative;",
            "Landroid/content/res/Resources;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-virtual {p1, p0}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v1

    .line 411
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_20

    aget v4, v1, v3

    if-eqz p3, :cond_12

    goto :goto_16

    .line 413
    :cond_12
    invoke-static {v4}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v4

    .line 412
    :goto_16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 415
    :cond_20
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/wifi/util/ApConfigUtil;->addDfsChannelsIfNeeded(Ljava/util/List;ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isAcsSupported(Landroid/content/Context;)Z
    .registers 2

    .line 987
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02005b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isApMacRandomizationSupported(Landroid/content/Context;)Z
    .registers 2

    .line 932
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02004d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isBandSupported(ILandroid/content/Context;)Z
    .registers 9

    .line 288
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result v0

    const-string v1, "ApConfigUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid SoftAp band "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 293
    :cond_1e
    sget-object v0, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v3, v0

    move v4, v2

    :goto_22
    if-ge v4, v3, :cond_53

    aget v5, v0, v4

    .line 294
    invoke-static {p0, v5}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-static {p1, v5}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_50

    .line 295
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can not start softAp with band "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/wifi/util/ApConfigUtil;->bandToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_53
    const/4 p0, 0x1

    return p0
.end method

.method public static isBandValid(I)Z
    .registers 1

    if-eqz p0, :cond_8

    and-int/lit8 p0, p0, -0x10

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isBridgedModeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 943
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02000c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static isClientForceDisconnectSupported(Landroid/content/Context;)Z
    .registers 2

    .line 965
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020030

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isIeee80211axSupported(Landroid/content/Context;)Z
    .registers 2

    .line 910
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02003d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isIeee80211beSupported(Landroid/content/Context;)Z
    .registers 2

    .line 921
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02003e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isMacCustomizationSupported(Landroid/content/Context;)Z
    .registers 2

    .line 998
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02003f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isMultiband(I)Z
    .registers 2

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isNonPasswordAP(I)Z
    .registers 2

    if-eqz p0, :cond_b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isOweSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1074
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020040

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isOweTransitionSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1063
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020041

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isSecurityTypeRestrictedFor6gBand(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    return v0
.end method

.method public static isSendFreqRangesNeeded(ILandroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 10

    .line 1160
    sget-object v0, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    const/4 v4, 0x1

    if-ge v3, v1, :cond_30

    aget v5, v0, v3

    and-int v6, p0, v5

    if-eqz v6, :cond_2d

    .line 1162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/server/wifi/util/ApConfigUtil;->getConfiguredChannelList(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1f

    .line 1163
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f

    return v4

    .line 1167
    :cond_1f
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-virtual {p2, v5}, Landroid/net/wifi/SoftApConfiguration;->getAllowedAcsChannels(I)[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_2d

    return v4

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_30
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_39

    and-int/lit8 p2, p0, 0x4

    if-nez p2, :cond_39

    return v4

    :cond_39
    if-nez p1, :cond_40

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_40

    return v4

    :cond_40
    return v2
.end method

.method public static isSoftApBandSupported(Landroid/content/Context;I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_63

    const/4 v2, 0x2

    if-eq p1, v2, :cond_47

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2b

    const/16 v2, 0x8

    if-eq p1, v2, :cond_f

    return v0

    .line 1024
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020006

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1025
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f020034

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2a

    move v0, v1

    :cond_2a
    return v0

    .line 1020
    :cond_2b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020007

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1021
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f020035

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_46

    move v0, v1

    :cond_46
    return v0

    .line 1016
    :cond_47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020005

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 1017
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f020033

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_62

    move v0, v1

    :cond_62
    return v0

    .line 1012
    :cond_63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020004

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 1013
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f020032

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_7e

    move v0, v1

    :cond_7e
    return v0
.end method

.method public static isSoftApDynamicCountryCodeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1040
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020031

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isSoftApRestartRequiredWhenCountryCodeChanged(Landroid/content/Context;)Z
    .registers 2

    .line 1052
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020018

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isStaWithBridgedModeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 954
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020048

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static isWpa3SaeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 976
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02005d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$chooseApChannel$1(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 540
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getHalAvailableChannelsForBand$0(ZLandroid/net/wifi/WifiAvailableChannel;)Ljava/lang/Integer;
    .registers 2

    if-eqz p0, :cond_7

    .line 433
    invoke-virtual {p1}, Landroid/net/wifi/WifiAvailableChannel;->getFrequencyMhz()I

    move-result p0

    goto :goto_f

    .line 435
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiAvailableChannel;->getFrequencyMhz()I

    move-result p0

    .line 434
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result p0

    .line 432
    :goto_f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static readForced5gChannelFromFile()I
    .registers 8

    const/16 v0, 0x24

    const/4 v1, 0x0

    const-string v2, "ApConfigUtil"

    const-string v3, "kano_patched_wifi:enter readForced5gChannelFromFile()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/kano_ap_channel.cfg"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_58

    move-object v1, v2

    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_50

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2e

    goto :goto_50

    :cond_2e
    invoke-static {v4}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v4

    if-ne v4, v3, :cond_50

    const-string v4, "ApConfigUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kano_patched_wifi:using forced 5GHz channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4c} :catch_5a

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_4f
    return v2

    :cond_50
    :goto_50
    const-string v2, "ApConfigUtil"

    const-string v3, "kano_patched_wifi:Invalid 5GHz channel config, fallback to channel 36"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_57} :catch_5a

    goto :goto_73

    :catch_58
    move-exception v2

    goto :goto_5b

    :catch_5a
    move-exception v2

    :goto_5b
    const-string v3, "ApConfigUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kano_patched_wifi:Failed to read forced 5GHz channel, fallback to channel 36. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    if-eqz v1, :cond_78

    :try_start_75
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_78

    :catch_78
    :cond_78
    return v0
.end method

.method public static remove6gBandForUnsupportedSecurity(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/SoftApConfiguration;
    .registers 7

    .line 675
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v0, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 677
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v1

    array-length v1, v1

    const-string v2, "ApConfigUtil"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2c

    .line 678
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v1

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_6c

    .line 680
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSecurityTypeRestrictedFor6gBand(I)Z

    move-result p0

    if-eqz p0, :cond_6c

    const-string p0, "remove BAND_6G if multiple bands are configured as a mask since security type is restricted"

    .line 681
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p0, v1, -0x5

    .line 683
    invoke-virtual {v0, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_6c

    .line 685
    :cond_2c
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 686
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v1

    .line 687
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 688
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSecurityTypeRestrictedFor6gBand(I)Z

    move-result p0

    if-eqz p0, :cond_6c

    const/4 p0, 0x0

    .line 689
    :goto_4a
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge p0, v4, :cond_69

    .line 690
    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_5f

    const-string v5, "remove BAND_6G if multiple bands are configured as a mask when security type is restricted"

    .line 692
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v4, v4, -0x5

    .line 696
    :cond_5f
    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_4a

    .line 698
    :cond_69
    invoke-virtual {v0, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 702
    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static removeUnavailableBands(Landroid/net/wifi/SoftApCapability;ILcom/android/server/wifi/coex/CoexManager;)I
    .registers 14

    .line 599
    sget-object v0, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v4, p1

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_4b

    aget v5, v0, v3

    .line 600
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    and-int v7, p1, v5

    if-eqz v7, :cond_48

    .line 602
    invoke-virtual {p0, v5}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v7

    array-length v8, v7

    move v9, v2

    :goto_19
    if-ge v9, v8, :cond_2b

    aget v10, v7, v9

    .line 603
    invoke-static {v10, v5}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 606
    :cond_2b
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 607
    invoke-virtual {p2}, Lcom/android/server/wifi/coex/CoexManager;->getCoexRestrictions()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_40

    .line 609
    invoke-static {p2}, Lcom/android/server/wifi/util/ApConfigUtil;->getUnsafeChannelFreqsFromCoex(Lcom/android/server/wifi/coex/CoexManager;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 611
    :cond_40
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_48

    not-int v5, v5

    and-int/2addr v4, v5

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_4b
    return v4
.end method

.method public static removeUnsupportedBands(Landroid/content/Context;I)I
    .registers 8

    .line 632
    sget-object v0, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, p1

    :goto_5
    if-ge v2, v1, :cond_18

    aget v4, v0, v2

    and-int v5, p1, v4

    if-eqz v5, :cond_15

    .line 633
    invoke-static {p0, v4}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_15

    not-int v4, v4

    and-int/2addr v3, v4

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    return v3
.end method

.method public static updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/coex/CoexManager;Landroid/content/res/Resources;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration$Builder;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)I
    .registers 13

    .line 724
    const-string v2, "ApConfigUtil"

    const-string v4, "kano_patched_wifi:entered updateApChannelConfig"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_14

    const/4 p0, 0x6

    .line 725
    invoke-virtual {p4, p0, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    return v1

    .line 730
    :cond_14
    invoke-virtual {p5}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kano_patched_wifi:band="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " channel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p5}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-ne p0, v3, :cond_47

    if-nez p3, :cond_47

    const-string p0, "5GHz band is not allowed without country code"

    .line 732
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_47
    invoke-virtual {p5}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5c

    const-string p0, "kano_patched_wifi:starting readForced5gChannelFromFile()"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wifi/util/ApConfigUtil;->readForced5gChannelFromFile()I

    move-result p0

    const-wide/16 v4, 0x1

    invoke-virtual {p6, v4, v5}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result p1

    if-eqz p1, :cond_5b_force_fixed_channel

    new-array p1, v0, [I

    aput p0, p1, v1

    invoke-virtual {p4, v3, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :cond_a5

    :cond_5b_force_fixed_channel
    invoke-virtual {p4, p0, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result p0

    if-eqz p0, :cond_a5

    sget-boolean p0, Lcom/android/server/wifi/util/ApConfigUtil;->sVerboseLoggingEnabled:Z

    if-eqz p0, :cond_5b_skip_log

    const-string p0, "Ignoring Allowed ACS channels since ACS is not supported."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b_skip_log
    new-array p0, v1, [I

    invoke-virtual {p4, v0, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    new-array p0, v1, [I

    invoke-virtual {p4, v3, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 p0, 0x4

    new-array p1, v1, [I

    invoke-virtual {p4, p0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :cond_a5

    :cond_5c
    const-wide/16 v4, 0x1

    .line 735
    invoke-virtual {p6, v4, v5}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result p0

    if-nez p0, :cond_a5

    .line 737
    invoke-virtual {p5}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result p0

    if-nez p0, :cond_86

    .line 738
    invoke-virtual {p5}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    invoke-static {p0, p1, p2, p6}, Lcom/android/server/wifi/util/ApConfigUtil;->chooseApChannel(ILcom/android/server/wifi/coex/CoexManager;Landroid/content/res/Resources;Landroid/net/wifi/SoftApCapability;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_7b

    const-string p0, "Failed to get available channel."

    .line 742
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 746
    :cond_7b
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result p1

    .line 747
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result p0

    .line 745
    invoke-virtual {p4, p1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 750
    :cond_86
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result p0

    if-eqz p0, :cond_a5

    .line 752
    sget-boolean p0, Lcom/android/server/wifi/util/ApConfigUtil;->sVerboseLoggingEnabled:Z

    if-eqz p0, :cond_95

    const-string p0, "Ignoring Allowed ACS channels since ACS is not supported."

    .line 753
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    new-array p0, v1, [I

    .line 755
    invoke-virtual {p4, v0, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    new-array p0, v1, [I

    .line 757
    invoke-virtual {p4, v3, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 p0, 0x4

    new-array p1, v1, [I

    .line 759
    invoke-virtual {p4, p0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_a5
    return v1
.end method

.method public static updateCapabilityFromResource(Landroid/content/Context;)Landroid/net/wifi/SoftApCapability;
    .registers 7

    .line 832
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isAcsSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ApConfigUtil"

    if-eqz v0, :cond_10

    const-string v0, "Update Softap capability, add acs feature support"

    .line 833
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    .line 837
    :goto_12
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isClientForceDisconnectSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "Update Softap capability, add client control feature support"

    .line 838
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    .line 842
    :cond_20
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isWpa3SaeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "Update Softap capability, add SAE feature support"

    .line 843
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    .line 847
    :cond_2e
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isMacCustomizationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "Update Softap capability, add MAC customization support"

    .line 848
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x8

    or-long/2addr v2, v4

    :cond_3c
    const/4 v0, 0x1

    .line 852
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "Update Softap capability, add 2.4G support"

    .line 853
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    :cond_4b
    const/4 v0, 0x2

    .line 857
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "Update Softap capability, add 5G support"

    .line 858
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    :cond_5a
    const/4 v0, 0x4

    .line 862
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, "Update Softap capability, add 6G support"

    .line 863
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    :cond_69
    const/16 v0, 0x8

    .line 867
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "Update Softap capability, add 60G support"

    .line 868
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    .line 872
    :cond_79
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isIeee80211axSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_87

    const-string v0, "Update Softap capability, add ax support"

    .line 873
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    .line 877
    :cond_87
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isIeee80211beSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_95

    const-string v0, "Update Softap capability, add be support"

    .line 878
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    .line 882
    :cond_95
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isOweTransitionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string v0, "Update Softap capability, add OWE Transition feature support"

    .line 883
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x400

    or-long/2addr v2, v4

    .line 887
    :cond_a3
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isOweSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b1

    const-string v0, "Update Softap capability, add OWE feature support"

    .line 888
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x800

    or-long/2addr v2, v4

    .line 892
    :cond_b1
    new-instance v0, Landroid/net/wifi/SoftApCapability;

    invoke-direct {v0, v2, v3}, Landroid/net/wifi/SoftApCapability;-><init>(J)V

    .line 893
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f05003b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-lez p0, :cond_da

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update Softap capability, max client = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {v0, p0}, Landroid/net/wifi/SoftApCapability;->setMaxSupportedClients(I)V

    :cond_da
    return-object v0
.end method

.method public static updateSoftApCapabilityWithAvailableChannelList(Landroid/net/wifi/SoftApCapability;Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)Landroid/net/wifi/SoftApCapability;
    .registers 10

    .line 1337
    new-instance v0, Landroid/net/wifi/SoftApCapability;

    invoke-direct {v0, p0}, Landroid/net/wifi/SoftApCapability;-><init>(Landroid/net/wifi/SoftApCapability;)V

    .line 1340
    sget-object p0, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_35

    aget v4, p0, v3

    .line 1341
    invoke-static {p1, v4}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1343
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1342
    invoke-static {v4, p2, v5, v2}, Lcom/android/server/wifi/util/ApConfigUtil;->getAvailableChannelFreqsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 1347
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/wifi/WifiConnectivityManager$$ExternalSyntheticLambda7;

    invoke-direct {v6}, Lcom/android/server/wifi/WifiConnectivityManager$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    .line 1345
    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_35
    return-object v0
.end method
