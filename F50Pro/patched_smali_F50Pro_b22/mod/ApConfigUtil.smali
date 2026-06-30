.class public abstract Lcom/android/server/wifi/util/ApConfigUtil;
.super Ljava/lang/Object;
.source "ApConfigUtil.java"


# static fields
.field private static final sBandToOperatingClass:Landroid/util/SparseArray;

.field private static final sRandom:Ljava/util/Random;

.field private static sVerboseLoggingEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$-iaEzmMVgW-2zUdFZmpl0cUC-O8(Ljava/util/List;Landroid/net/wifi/WifiAvailableChannel;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->lambda$getHalAvailableChannelsForBand$1(Ljava/util/List;Landroid/net/wifi/WifiAvailableChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F19XAVoUSxr9GLcyWv6fUOiMiqQ(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->lambda$chooseApChannel$2(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FwUJriXvo3VjgMSawKCIqkjqIMc(Ljava/util/List;Landroid/net/wifi/WifiAvailableChannel;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->lambda$getHalAvailableChannelsForBand$0(Ljava/util/List;Landroid/net/wifi/WifiAvailableChannel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 90
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    const/4 v0, 0x0

    .line 91
    sput-boolean v0, Lcom/android/server/wifi/util/ApConfigUtil;->sVerboseLoggingEnabled:Z

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sBandToOperatingClass:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const/16 v2, 0x54

    const/16 v3, 0x51

    const/16 v4, 0x52

    .line 107
    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x10

    .line 108
    new-array v1, v1, [I

    fill-array-data v1, :array_38

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x6

    .line 110
    new-array v1, v1, [I

    fill-array-data v1, :array_5c

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void

    nop

    :array_38
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

    :array_5c
    .array-data 4
        0x83
        0x84
        0x85
        0x86
        0x87
        0x88
    .end array-data
.end method

.method private static addDfsChannelsIfNeeded(Ljava/util/List;ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;
    .registers 7

    const v0, 0x7f020050

    .line 404
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-eqz p3, :cond_32

    const/4 p3, 0x2

    if-ne p1, p3, :cond_32

    const/4 p1, 0x4

    .line 406
    invoke-virtual {p2, p1}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object p1

    .line 408
    array-length p2, p1

    const/4 p3, 0x0

    :goto_13
    if-ge p3, p2, :cond_32

    aget v0, p1, p3

    if-eqz p4, :cond_1a

    goto :goto_1e

    .line 410
    :cond_1a
    invoke-static {v0}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v0

    .line 411
    :goto_1e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 412
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

    .line 0
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

    .line 245
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

    .line 259
    invoke-static {v0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandSupported(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    or-int/2addr p0, v0

    :cond_8
    return p0
.end method

.method public static bandToString(I)Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " & "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    const-string v1, "unspecified"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_15

    .line 121
    const-string v1, "2Ghz"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_15
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1e

    .line 126
    const-string v1, "5Ghz"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1e
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_27

    .line 131
    const-string v1, "6Ghz"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_27
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_30

    .line 136
    const-string v1, "60Ghz"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_30
    and-int/lit8 p0, p0, -0x10

    if-eqz p0, :cond_37

    .line 140
    const-string p0, "Invalid band"

    return-object p0

    .line 142
    :cond_37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canHALConvertRestrictedSecurityTypeFor6GHz(Landroid/content/res/Resources;I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    const p1, 0x7f020049

    .line 753
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static checkConfigurationChangeNeedToRestart(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 4

    .line 1306
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1307
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1308
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    if-ne v0, v1, :cond_71

    .line 1309
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1310
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v1

    if-ne v0, v1, :cond_71

    .line 1311
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v1

    if-ne v0, v1, :cond_71

    .line 1312
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v1

    if-ne v0, v1, :cond_71

    .line 1313
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1314
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .registers 11

    const-wide/16 v0, 0x2

    .line 1327
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const-string v1, "ApConfigUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_27

    .line 1328
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1329
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_27

    .line 1330
    :cond_21
    const-string p0, "Error, Client control requires HAL support"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    const-wide/16 v3, 0x4

    .line 1333
    invoke-virtual {p1, v3, v4}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_43

    .line 1334
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    if-eq v0, v3, :cond_3d

    .line 1335
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_43

    .line 1336
    :cond_3d
    const-string p0, "Error, SAE requires HAL support"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_43
    const-wide/16 v4, 0x8

    .line 1340
    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_70

    .line 1341
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 1342
    const-string p0, "Error, MAC address customization requires HAL support"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1345
    :cond_58
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1346
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSetting()I

    move-result v0

    if-eq v0, v4, :cond_6a

    .line 1348
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSetting()I

    move-result v0

    if-ne v0, v3, :cond_70

    .line 1350
    :cond_6a
    const-string p0, "Error, MAC randomization requires HAL support"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1355
    :cond_70
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v0

    array-length v3, v0

    move v5, v2

    move v6, v5

    :goto_77
    if-ge v5, v3, :cond_7f

    aget v7, v0, v5

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    :cond_7f
    const-wide/16 v7, 0x20

    .line 1358
    invoke-virtual {p1, v7, v8}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_91

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_91

    .line 1360
    const-string p0, "Error, 2.4Ghz band requires HAL support"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_91
    const-wide/16 v7, 0x40

    .line 1364
    invoke-virtual {p1, v7, v8}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_a3

    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_a3

    .line 1366
    const-string p0, "Error, 5Ghz band requires HAL support"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a3
    const-wide/16 v7, 0x80

    .line 1370
    invoke-virtual {p1, v7, v8}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_b5

    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_b5

    .line 1372
    const-string p0, "Error, 6Ghz band requires HAL support"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b5
    const-wide/16 v7, 0x100

    .line 1376
    invoke-virtual {p1, v7, v8}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_c7

    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_c7

    .line 1378
    const-string p0, "Error, 60Ghz band requires HAL support"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_c7
    const-wide/16 v5, 0x400

    .line 1382
    invoke-virtual {p1, v5, v6}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 1383
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_dc

    .line 1384
    const-string p0, "Error, OWE transition requires HAL support"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_dc
    const-wide/16 v5, 0x800

    .line 1388
    invoke-virtual {p1, v5, v6}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 1389
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_f1

    .line 1390
    const-string p0, "Error, OWE requires HAL support"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1396
    :cond_f1
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_137

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v0

    array-length v0, v0

    if-le v0, v4, :cond_137

    .line 1397
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v0

    .line 1398
    aget v3, v0, v2

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_131

    aget v0, v0, v4

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_10f

    goto :goto_131

    :cond_10f
    const-wide/16 v5, 0x1

    .line 1403
    invoke-virtual {p1, v5, v6}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result p1

    if-nez p1, :cond_137

    .line 1404
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    if-eqz p1, :cond_12b

    .line 1405
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    if-nez p0, :cond_137

    .line 1406
    :cond_12b
    const-string p0, "Error, dual APs requires HAL ACS support when channel isn\'t specified"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1400
    :cond_131
    :goto_131
    const-string p0, "Error, dual APs doesn\'t support on 60GHz"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_137
    return v4
.end method

.method public static chooseApChannel(ILcom/android/server/wifi/coex/CoexManager;Landroid/content/res/Resources;Landroid/net/wifi/SoftApCapability;)I
    .registers 21

    move/from16 v0, p0

    .line 531
    invoke-static/range {p0 .. p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "ApConfigUtil"

    if-nez v1, :cond_20

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid band: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 536
    :cond_20
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 537
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 538
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/util/ApConfigUtil;->getUnsafeChannelFreqsFromCoex(Lcom/android/server/wifi/coex/CoexManager;)Ljava/util/Set;

    move-result-object v1

    :cond_2f
    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 540
    filled-new-array {v4, v5, v6, v7}, [I

    move-result-object v4

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_3b
    if-ge v9, v5, :cond_d5

    .line 546
    aget v11, v4, v9

    and-int v12, v0, v11

    if-nez v12, :cond_47

    move-object/from16 v12, p3

    goto/16 :goto_d1

    :cond_47
    move-object/from16 v12, p3

    .line 550
    invoke-virtual {v12, v11}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v13

    if-eqz v13, :cond_d1

    .line 551
    array-length v14, v13

    if-nez v14, :cond_54

    goto/16 :goto_d1

    .line 555
    :cond_54
    invoke-static {v13}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v14, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda2;

    invoke-direct {v14, v11}, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda2;-><init>(I)V

    .line 556
    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v11

    .line 557
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 559
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 560
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 561
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 562
    invoke-interface {v1, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_96

    .line 563
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 565
    :cond_96
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 569
    :cond_9a
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b5

    .line 570
    sget-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 571
    :cond_b5
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d1

    if-nez v10, :cond_d1

    .line 573
    sget-object v10, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    .line 574
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 573
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :cond_d1
    :goto_d1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3b

    .line 579
    :cond_d5
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/coex/CoexManager;->getCoexRestrictions()I

    move-result v4

    and-int/2addr v4, v6

    if-eqz v4, :cond_e3

    move v8, v7

    :cond_e3
    if-nez v8, :cond_e8

    if-eqz v10, :cond_e8

    return v10

    .line 588
    :cond_e8
    invoke-static {v0, v7}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v0

    if-eqz v0, :cond_10a

    const/4 v0, 0x6

    .line 589
    invoke-static {v0, v7}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result v0

    .line 591
    const-string v2, "Allowed channel list not specified, selecting default channel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_109

    .line 592
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 593
    const-string v1, "Default channel is hard restricted due to coex"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    return v0

    .line 597
    :cond_10a
    const-string v0, "No available channels"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static collectAllowedAcsChannels(ILjava/lang/String;[I)Ljava/util/List;
    .registers 3

    .line 1472
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->getOemAllowedChannels(ILjava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 1475
    invoke-static {p0, p2}, Lcom/android/server/wifi/util/ApConfigUtil;->getCallerAllowedChannels(I[I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1477
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static containsBand(II)Z
    .registers 2

    .line 0
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

    .line 195
    invoke-static {p1}, Lcom/android/server/wifi/util/ApConfigUtil;->apConfig2wifiScannerBand(I)I

    move-result p1

    .line 194
    invoke-static {p0, p1}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result p0

    return p0
.end method

.method public static convertFrequencyToBand(I)I
    .registers 2

    .line 205
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 207
    :cond_8
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x2

    return p0

    .line 209
    :cond_10
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x4

    return p0

    .line 211
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

    .line 327
    const-string v0, "-"

    const-string v1, "ApConfigUtil"

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 331
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 333
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_a8

    aget-object v6, p0, v5

    .line 335
    :try_start_1a
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 336
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 337
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_40

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized channel range, Length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    :catch_3e
    move-exception v6

    goto :goto_90

    .line 341
    :cond_40
    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    .line 342
    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v7, v6, :cond_74

    .line 344
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

    goto :goto_a4

    :cond_74
    :goto_74
    if-gt v7, v6, :cond_a4

    .line 349
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_74

    .line 352
    :cond_80
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_8f} :catch_3e

    goto :goto_a4

    .line 356
    :goto_90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed channel value detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    :goto_a4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_16

    :cond_a8
    return-object v2
.end method

.method public static convertWifiConfigBandToSoftApConfigBand(I)I
    .registers 2

    .line 0
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

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1567
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1568
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

    .line 1569
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

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1582
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1583
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

    .line 1584
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1585
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

    .line 1586
    new-instance v5, Landroid/net/wifi/WifiClient;

    invoke-virtual {v4}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v6

    .line 1587
    invoke-virtual {v4}, Landroid/net/wifi/WifiClient;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroid/net/wifi/WifiClient;-><init>(Landroid/net/MacAddress;Ljava/lang/String;)V

    .line 1586
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 1589
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

    .line 98
    sput-boolean p0, Lcom/android/server/wifi/util/ApConfigUtil;->sVerboseLoggingEnabled:Z

    return-void
.end method

.method public static fromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/SoftApConfiguration;
    .registers 8

    .line 941
    const-string v0, "Invalid WifiConfiguration"

    const-string v1, "ApConfigUtil"

    new-instance v2, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    const/4 v3, 0x0

    .line 946
    :try_start_a
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 947
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v4, v5, :cond_21

    .line 948
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_21

    :catch_1d
    move-exception p0

    goto :goto_45

    :catch_1f
    move-exception p0

    goto :goto_58

    .line 951
    :cond_21
    :goto_21
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 954
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-eqz v4, :cond_35

    const/4 v5, 0x2

    if-eq v4, v6, :cond_34

    if-eq v4, v5, :cond_31

    const/4 v6, 0x3

    goto :goto_35

    :cond_31
    const/16 v6, 0x8

    goto :goto_35

    :cond_34
    move v6, v5

    .line 969
    :cond_35
    :goto_35
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-nez p0, :cond_3d

    .line 970
    invoke-virtual {v2, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_40

    .line 972
    :cond_3d
    invoke-virtual {v2, p0, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_40} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_40} :catch_1d

    .line 981
    :goto_40
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0

    .line 978
    :goto_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 975
    :goto_58
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
    .registers 8

    .line 470
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_bb

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isMultiband(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_bb

    .line 474
    :cond_f
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->apConfig2wifiScannerBand(I)I

    move-result v0

    .line 479
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiNative;->isHalSupported()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1b

    goto :goto_2a

    .line 483
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v2

    if-nez v2, :cond_22

    return-object v1

    .line 487
    :cond_22
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wifi/util/ApConfigUtil;->getHalAvailableChannelsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    if-eqz v3, :cond_30

    .line 495
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wifi/util/ApConfigUtil;->getWifiCondAvailableChannelsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object v1

    .line 498
    :cond_30
    invoke-static {p2, p0}, Lcom/android/server/wifi/util/ApConfigUtil;->getConfiguredChannelList(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_bb

    .line 499
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_bb

    if-nez v1, :cond_40

    goto/16 :goto_bb

    .line 502
    :cond_40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 504
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_49
    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz p3, :cond_71

    .line 506
    invoke-static {v2, p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result v0

    .line 507
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 508
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 510
    :cond_71
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 511
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 514
    :cond_7b
    sget-boolean p1, Lcom/android/server/wifi/util/ApConfigUtil;->sVerboseLoggingEnabled:Z

    if-eqz p1, :cond_ba

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Filtered channel list for band "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->bandToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
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

    .line 515
    const-string p1, "ApConfigUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    return-object p2

    :cond_bb
    :goto_bb
    return-object v1
.end method

.method public static getBandFromOperatingClass(I)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 153
    :goto_2
    sget-object v2, Lcom/android/server/wifi/util/ApConfigUtil;->sBandToOperatingClass:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_23

    .line 154
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 155
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move v4, v0

    .line 157
    :goto_15
    array-length v5, v2

    if-ge v4, v5, :cond_20

    .line 158
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

    .line 1549
    array-length v0, p1

    if-nez v0, :cond_8

    .line 1551
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->getSetForAllChannelsInBand(I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1555
    :cond_8
    invoke-static {p1}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda3;-><init>()V

    .line 1556
    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private static getConfiguredChannelList(Landroid/content/res/Resources;I)Ljava/util/List;
    .registers 3

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
    const p1, 0x7f07000f

    .line 392
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1b
    const p1, 0x7f070010

    .line 389
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_27
    const p1, 0x7f07000e

    .line 386
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_33
    const p1, 0x7f07000d

    .line 383
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getHalAvailableChannelsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 437
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wifi/WifiNative;->getUsableChannels(III)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 445
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1a

    .line 447
    new-instance v2, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_22

    .line 449
    :cond_1a
    new-instance v2, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/wifi/util/ApConfigUtil$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 453
    :goto_22
    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/server/wifi/util/ApConfigUtil;->addDfsChannelsIfNeeded(Ljava/util/List;ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getOemAllowedChannels(ILjava/lang/String;)Ljava/util/Set;
    .registers 11

    .line 1509
    const-string v0, "-"

    const-string v1, "ApConfigUtil"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1511
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->getSetForAllChannelsInBand(I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1515
    :cond_f
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1517
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v2, :cond_c0

    aget-object v5, p1, v4

    .line 1519
    :try_start_21
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1520
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1521
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_48

    .line 1522
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized channel range, length is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    :catch_46
    move-exception v5

    goto :goto_a8

    .line 1525
    :cond_48
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    .line 1526
    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v6, v5, :cond_7c

    .line 1528
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

    goto :goto_bc

    .line 1532
    :cond_7c
    invoke-static {v6, v5}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v5

    .line 1533
    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 1532
    invoke-interface {p0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_bc

    .line 1534
    :cond_92
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bc

    .line 1535
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1536
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_a7} :catch_46

    goto :goto_bc

    .line 1540
    :goto_a8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed channel value detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    :goto_bc
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    :cond_c0
    return-object p0
.end method

.method private static getSetForAllChannelsInBand(I)Ljava/util/Set;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_54

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_28

    .line 1503
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

    .line 1504
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_28
    const/16 p0, 0xe9

    .line 1497
    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 1500
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    .line 1501
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_3d
    const/16 p0, 0x20

    const/16 v0, 0xb1

    .line 1490
    invoke-static {p0, v0}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 1493
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    .line 1494
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_54
    const/16 p0, 0xe

    .line 1483
    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 1486
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    .line 1487
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static getUnsafeChannelFreqsFromCoex(Lcom/android/server/wifi/coex/CoexManager;)Ljava/util/Set;
    .registers 4

    .line 370
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 371
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 372
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

    .line 374
    invoke-virtual {v1}, Landroid/net/wifi/CoexUnsafeChannel;->getChannel()I

    move-result v2

    invoke-virtual {v1}, Landroid/net/wifi/CoexUnsafeChannel;->getBand()I

    move-result v1

    .line 373
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

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    invoke-virtual {p1, p0}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v1

    .line 425
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_20

    aget v4, v1, v3

    if-eqz p3, :cond_12

    goto :goto_16

    .line 427
    :cond_12
    invoke-static {v4}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v4

    .line 426
    :goto_16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 429
    :cond_20
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/wifi/util/ApConfigUtil;->addDfsChannelsIfNeeded(Ljava/util/List;ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static is11beAllowedForThisConfiguration(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;Z)Z
    .registers 6

    .line 848
    invoke-static {p1}, Lcom/android/server/wifi/util/ApConfigUtil;->isIeee80211beSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p0, :cond_30

    const/16 v0, 0x8

    .line 851
    invoke-virtual {p0, v0}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_30

    :cond_13
    if-eqz p3, :cond_23

    .line 856
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f02004b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_23

    return v1

    .line 860
    :cond_23
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->is11beDisabledForSecurityType(I)Z

    move-result p0

    if-eqz p0, :cond_2e

    return v1

    :cond_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    :goto_30
    return v1
.end method

.method static is11beDisabledForSecurityType(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 v1, 0x4

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public static isAcsSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02007f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isApMacRandomizationSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020071

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isBandSupported(ILandroid/content/Context;)Z
    .registers 9

    .line 302
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result v0

    const-string v1, "ApConfigUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid SoftAp band "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 307
    :cond_1e
    sget-object v0, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v3, v0

    move v4, v2

    :goto_22
    if-ge v4, v3, :cond_53

    aget v5, v0, v4

    .line 308
    invoke-static {p0, v5}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-static {p1, v5}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_50

    .line 309
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

    .line 0
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

.method public static isBridgedModeSupported(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)Z
    .registers 3

    .line 1139
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020015

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_20

    new-instance p0, Lcom/android/server/wifi/util/ApConfigUtil$1;

    invoke-direct {p0}, Lcom/android/server/wifi/util/ApConfigUtil$1;-><init>()V

    .line 1141
    invoke-virtual {p1, p0}, Lcom/android/server/wifi/WifiNative;->canDeviceSupportCreateTypeCombo(Landroid/util/SparseArray;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public static isClientForceDisconnectSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020048

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isIeee80211axSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1092
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020057

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isIeee80211beEnabledInConfig(Lcom/android/server/wifi/WifiSettingsConfigStore;)Z
    .registers 2

    .line 1115
    sget-object v0, Lcom/android/server/wifi/WifiSettingsConfigStore;->WIFI_WIPHY_11BE_SUPPORTED:Lcom/android/server/wifi/WifiSettingsConfigStore$Key;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiSettingsConfigStore;->get(Lcom/android/server/wifi/WifiSettingsConfigStore$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isIeee80211beSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020058

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isMacCustomizationSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020059

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isMultiband(I)Z
    .registers 2

    .line 0
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

    .line 0
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

    .line 1292
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02005a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isOweTransitionSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1281
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02005b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isSecurityTypeRestrictedFor6gBand(I)Z
    .registers 3

    .line 0
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

    .line 1430
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

    .line 1432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/server/wifi/util/ApConfigUtil;->getConfiguredChannelList(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1f

    .line 1433
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f

    return v4

    .line 1437
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

    .line 1242
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020008

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f02004e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2a

    move v0, v1

    :cond_2a
    return v0

    .line 1238
    :cond_2b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020009

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f02004f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_46

    move v0, v1

    :cond_46
    return v0

    .line 1234
    :cond_47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020007

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 1235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f02004d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_62

    move v0, v1

    :cond_62
    return v0

    .line 1230
    :cond_63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f020006

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 1231
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f02004c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_7e

    move v0, v1

    :cond_7e
    return v0
.end method

.method public static isSoftApDynamicCountryCodeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02004a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isSoftApRestartRequiredWhenCountryCodeChanged(Landroid/content/Context;)Z
    .registers 2

    .line 1270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020029

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isStaWithBridgedModeSupported(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)Z
    .registers 3

    .line 1168
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020063

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_20

    new-instance p0, Lcom/android/server/wifi/util/ApConfigUtil$2;

    invoke-direct {p0}, Lcom/android/server/wifi/util/ApConfigUtil$2;-><init>()V

    .line 1170
    invoke-virtual {p1, p0}, Lcom/android/server/wifi/WifiNative;->canDeviceSupportCreateTypeCombo(Landroid/util/SparseArray;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public static isWpa3SaeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 1194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020081

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$chooseApChannel$2(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 556
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getHalAvailableChannelsForBand$0(Ljava/util/List;Landroid/net/wifi/WifiAvailableChannel;)V
    .registers 2

    .line 447
    invoke-virtual {p1}, Landroid/net/wifi/WifiAvailableChannel;->getFrequencyMhz()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getHalAvailableChannelsForBand$1(Ljava/util/List;Landroid/net/wifi/WifiAvailableChannel;)V
    .registers 2

    .line 450
    invoke-virtual {p1}, Landroid/net/wifi/WifiAvailableChannel;->getFrequencyMhz()I

    move-result p1

    invoke-static {p1}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result p1

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static remove6gBandForUnsupportedSecurity(Landroid/content/res/Resources;Landroid/net/wifi/SoftApConfiguration;Z)Landroid/net/wifi/SoftApConfiguration;
    .registers 12

    .line 770
    const-string v0, "ApConfigUtil"

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 773
    :try_start_7
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v2

    .line 774
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v3

    array-length v3, v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_30

    const-string v4, "remove BAND_6G if multiple bands are configured as a mask when security type is restricted"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_32

    .line 775
    :try_start_15
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    and-int/lit8 p2, p0, 0x4

    if-eqz p2, :cond_8e

    .line 777
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/wifi/util/ApConfigUtil;->isSecurityTypeRestrictedFor6gBand(I)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 778
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p0, p0, -0x5

    .line 780
    invoke-virtual {v1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_8e

    :catch_30
    move-exception p0

    goto :goto_93

    .line 782
    :cond_32
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 783
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p1

    .line 784
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    invoke-direct {v3, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 785
    invoke-static {v2}, Lcom/android/server/wifi/util/ApConfigUtil;->isSecurityTypeRestrictedFor6gBand(I)Z

    move-result v5

    if-eqz v5, :cond_8e

    const/4 v5, 0x0

    .line 786
    :goto_4c
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8b

    .line 787
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_7c

    .line 789
    invoke-static {p0, v2}, Lcom/android/server/wifi/util/ApConfigUtil;->canHALConvertRestrictedSecurityTypeFor6GHz(Landroid/content/res/Resources;I)Z

    move-result v7

    if-eqz v7, :cond_7c

    if-eqz p2, :cond_7c

    .line 791
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Do not remove BAND_6G in bridged mode for security type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " as HAL can convert the security type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 795
    :cond_7c
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v6, v6, -0x5

    .line 799
    :goto_81
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 801
    :cond_8b
    invoke-virtual {v1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_8e} :catch_30

    .line 810
    :cond_8e
    :goto_8e
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0

    .line 805
    :goto_93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to update config by removing 6G band for unsupported security type:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeUnavailableBands(Landroid/net/wifi/SoftApCapability;ILcom/android/server/wifi/coex/CoexManager;)I
    .registers 14

    .line 615
    sget-object v0, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v4, p1

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_4b

    aget v5, v0, v3

    .line 616
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    and-int v7, p1, v5

    if-eqz v7, :cond_48

    .line 618
    invoke-virtual {p0, v5}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v7

    array-length v8, v7

    move v9, v2

    :goto_19
    if-ge v9, v8, :cond_2b

    aget v10, v7, v9

    .line 619
    invoke-static {v10, v5}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 622
    :cond_2b
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 623
    invoke-virtual {p2}, Lcom/android/server/wifi/coex/CoexManager;->getCoexRestrictions()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_40

    .line 625
    invoke-static {p2}, Lcom/android/server/wifi/util/ApConfigUtil;->getUnsafeChannelFreqsFromCoex(Lcom/android/server/wifi/coex/CoexManager;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 627
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

.method public static removeUnavailableBandsFromConfig(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;Lcom/android/server/wifi/coex/CoexManager;Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;
    .registers 14

    .line 649
    const-string v0, "ApConfigUtil"

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 652
    :try_start_7
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v2

    array-length v2, v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_42

    const-string v3, " to "

    const/4 v4, 0x1

    if-ne v2, v4, :cond_45

    .line 653
    :try_start_11
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    .line 654
    invoke-static {p1, p0, p2}, Lcom/android/server/wifi/util/ApConfigUtil;->removeUnavailableBands(Landroid/net/wifi/SoftApCapability;ILcom/android/server/wifi/coex/CoexManager;)I

    move-result p1

    if-eq p1, p0, :cond_b2

    .line 658
    invoke-static {p1, p3}, Lcom/android/server/wifi/util/ApConfigUtil;->append24GToBandIf24GSupported(ILandroid/content/Context;)I

    move-result p1

    .line 660
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reset band from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in single AP configuration"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_b2

    :catch_42
    move-exception p0

    goto/16 :goto_b7

    .line 664
    :cond_45
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 665
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object p0

    .line 666
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    .line 667
    :goto_5a
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_a1

    .line 668
    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 669
    invoke-static {p1, v6, p2}, Lcom/android/server/wifi/util/ApConfigUtil;->removeUnavailableBands(Landroid/net/wifi/SoftApCapability;ILcom/android/server/wifi/coex/CoexManager;)I

    move-result v7

    if-eq v7, v6, :cond_91

    .line 673
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reset band in index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in dual AP configuration"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_91
    invoke-static {v7}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 677
    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_9e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 680
    :cond_a1
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-eqz p0, :cond_ab

    .line 681
    invoke-virtual {v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_b2

    .line 684
    :cond_ab
    invoke-static {v4, p3}, Lcom/android/server/wifi/util/ApConfigUtil;->append24GToBandIf24GSupported(ILandroid/content/Context;)I

    move-result p0

    .line 683
    invoke-virtual {v1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_b2} :catch_42

    .line 693
    :cond_b2
    :goto_b2
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0

    .line 688
    :goto_b7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to update config by removing unavailable bands"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeUnsupportedBands(Landroid/content/Context;I)I
    .registers 8

    .line 709
    sget-object v0, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, p1

    :goto_5
    if-ge v2, v1, :cond_18

    aget v4, v0, v2

    and-int v5, p1, v4

    if-eqz v5, :cond_15

    .line 710
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

.method public static updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/coex/CoexManager;Landroid/content/res/Resources;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration$Builder;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)I
    .registers 12

    .line 885
    const-string v1, "ApConfigUtil"

    const-string v3, "kano_patched_wifi:entered updateApChannelConfig"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_13

    const/4 p0, 0x6

    .line 886
    invoke-virtual {p4, p0, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    return v0

    .line 891
    :cond_13
    invoke-virtual {p5}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kano_patched_wifi:band="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " channel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p5}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-ne p0, v2, :cond_46

    if-nez p3, :cond_46

    .line 893
    const-string p0, "5GHz band is not allowed without country code"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_46
    invoke-virtual {p5}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5b

    const-string p0, "kano_patched_wifi:starting readForced5gChannelFromFile()"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wifi/util/ApConfigUtil;->readForced5gChannelFromFile()I

    move-result p0

    const-wide/16 v3, 0x1

    invoke-virtual {p6, v3, v4}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result p1

    if-eqz p1, :cond_5a_force_fixed_channel

    new-array p1, v0, [I

    const/4 p2, 0x0

    aput p0, p1, p2

    invoke-virtual {p4, v2, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :cond_a4

    :cond_5a_force_fixed_channel
    invoke-virtual {p4, p0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result p0

    if-eqz p0, :cond_a4

    sget-boolean p0, Lcom/android/server/wifi/util/ApConfigUtil;->sVerboseLoggingEnabled:Z

    if-eqz p0, :cond_77

    const-string p0, "Ignoring Allowed ACS channels since ACS is not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    const/4 p0, 0x0

    new-array p1, p0, [I

    invoke-virtual {p4, v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    new-array p1, p0, [I

    invoke-virtual {p4, v2, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 p1, 0x4

    new-array p0, p0, [I

    invoke-virtual {p4, p1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :cond_a4

    :cond_5b
    const-wide/16 v3, 0x1

    .line 896
    invoke-virtual {p6, v3, v4}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result p0

    if-nez p0, :cond_a4

    .line 898
    invoke-virtual {p5}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result p0

    if-nez p0, :cond_84

    .line 899
    invoke-virtual {p5}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    invoke-static {p0, p1, p2, p6}, Lcom/android/server/wifi/util/ApConfigUtil;->chooseApChannel(ILcom/android/server/wifi/coex/CoexManager;Landroid/content/res/Resources;Landroid/net/wifi/SoftApCapability;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_79

    .line 903
    const-string p0, "Failed to get available channel."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    .line 907
    :cond_79
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result p1

    .line 908
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result p0

    .line 906
    invoke-virtual {p4, p1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 911
    :cond_84
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result p0

    if-eqz p0, :cond_a4

    .line 913
    sget-boolean p0, Lcom/android/server/wifi/util/ApConfigUtil;->sVerboseLoggingEnabled:Z

    if-eqz p0, :cond_93

    .line 914
    const-string p0, "Ignoring Allowed ACS channels since ACS is not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    const/4 p0, 0x0

    .line 916
    new-array p1, p0, [I

    invoke-virtual {p4, v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 918
    new-array p1, p0, [I

    invoke-virtual {p4, v2, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 p1, 0x4

    .line 920
    new-array p0, p0, [I

    invoke-virtual {p4, p1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_a4
    return v0
.end method

.method public static updateCapabilityFromConfigStore(Landroid/net/wifi/SoftApCapability;Lcom/android/server/wifi/WifiSettingsConfigStore;)Landroid/net/wifi/SoftApCapability;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-wide/16 v0, 0x200

    .line 1078
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1079
    invoke-static {p1}, Lcom/android/server/wifi/util/ApConfigUtil;->isIeee80211beEnabledInConfig(Lcom/android/server/wifi/WifiSettingsConfigStore;)Z

    move-result p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/wifi/SoftApCapability;->setSupportedFeatures(ZJ)V

    :cond_13
    return-object p0
.end method

.method public static updateCapabilityFromResource(Landroid/content/Context;)Landroid/net/wifi/SoftApCapability;
    .registers 7

    .line 993
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isAcsSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ApConfigUtil"

    if-eqz v0, :cond_10

    .line 994
    const-string v0, "Update Softap capability, add acs feature support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    .line 998
    :goto_12
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isClientForceDisconnectSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 999
    const-string v0, "Update Softap capability, add client control feature support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    .line 1003
    :cond_20
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isWpa3SaeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1004
    const-string v0, "Update Softap capability, add SAE feature support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    .line 1008
    :cond_2e
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isMacCustomizationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1009
    const-string v0, "Update Softap capability, add MAC customization support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x8

    or-long/2addr v2, v4

    :cond_3c
    const/4 v0, 0x1

    .line 1013
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1014
    const-string v0, "Update Softap capability, add 2.4G support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    :cond_4b
    const/4 v0, 0x2

    .line 1018
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1019
    const-string v0, "Update Softap capability, add 5G support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    :cond_5a
    const/4 v0, 0x4

    .line 1023
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1024
    const-string v0, "Update Softap capability, add 6G support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    :cond_69
    const/16 v0, 0x8

    .line 1028
    invoke-static {p0, v0}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1029
    const-string v0, "Update Softap capability, add 60G support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    .line 1033
    :cond_79
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isIeee80211axSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1034
    const-string v0, "Update Softap capability, add ax support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    .line 1038
    :cond_87
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isIeee80211beSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1039
    const-string v0, "Update Softap capability, add be support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    .line 1043
    :cond_95
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isOweTransitionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1044
    const-string v0, "Update Softap capability, add OWE Transition feature support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x400

    or-long/2addr v2, v4

    .line 1048
    :cond_a3
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isOweSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1049
    const-string v0, "Update Softap capability, add OWE feature support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x800

    or-long/2addr v2, v4

    .line 1053
    :cond_b1
    new-instance v0, Landroid/net/wifi/SoftApCapability;

    invoke-direct {v0, v2, v3}, Landroid/net/wifi/SoftApCapability;-><init>(J)V

    .line 1054
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f05005b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-lez p0, :cond_da

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update Softap capability, max client = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {v0, p0}, Landroid/net/wifi/SoftApCapability;->setMaxSupportedClients(I)V

    :cond_da
    return-object v0
.end method

.method public static updateSoftApCapabilityWithAvailableChannelList(Landroid/net/wifi/SoftApCapability;Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Landroid/util/SparseArray;)Landroid/net/wifi/SoftApCapability;
    .registers 10

    .line 1607
    new-instance v0, Landroid/net/wifi/SoftApCapability;

    invoke-direct {v0, p0}, Landroid/net/wifi/SoftApCapability;-><init>(Landroid/net/wifi/SoftApCapability;)V

    const/4 p0, 0x0

    if-eqz p3, :cond_24

    .line 1609
    sget-object p2, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v1, p2

    :goto_b
    if-ge p0, v1, :cond_23

    aget v2, p2, p0

    .line 1610
    invoke-static {p1, v2}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1611
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_20

    .line 1613
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    :cond_20
    add-int/lit8 p0, p0, 0x1

    goto :goto_b

    :cond_23
    return-object v0

    .line 1621
    :cond_24
    sget-object p3, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    array-length v1, p3

    move v2, p0

    :goto_28
    if-ge v2, v1, :cond_53

    aget v3, p3, v2

    .line 1622
    invoke-static {p1, v3}, Lcom/android/server/wifi/util/ApConfigUtil;->isSoftApBandSupported(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1624
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1623
    invoke-static {v3, p2, v4, p0}, Lcom/android/server/wifi/util/ApConfigUtil;->getAvailableChannelFreqsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_50

    .line 1628
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/server/wifi/WifiConnectivityManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    .line 1626
    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_53
    return-object v0
.end method
