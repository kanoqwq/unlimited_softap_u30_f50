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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sBandToOperatingClass:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 65
    fill-array-data v2, :array_32

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sBandToOperatingClass:Landroid/util/SparseArray;

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_3e

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sBandToOperatingClass:Landroid/util/SparseArray;

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void

    nop

    :array_32
    .array-data 4
        0x51
        0x52
        0x53
        0x54
    .end array-data

    :array_3e
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

    :array_62
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apConfig2wifiScannerBand(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/16 p0, 0x8

    return p0

    :cond_e
    return v0
.end method

.method public static checkConfigurationChangeNeedToRestart(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 4

    .line 512
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 513
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 514
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    if-ne v0, v1, :cond_55

    .line 515
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 516
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v1

    if-ne v0, v1, :cond_55

    .line 517
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v1

    if-ne v0, v1, :cond_55

    .line 518
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result p0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result p1

    if-eq p0, p1, :cond_53

    goto :goto_55

    :cond_53
    const/4 p0, 0x0

    goto :goto_56

    :cond_55
    :goto_55
    const/4 p0, 0x1

    :goto_56
    return p0
.end method

.method public static checkSupportAllConfiguration(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)Z
    .registers 7

    const-wide/16 v0, 0x2

    .line 531
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ApConfigUtil"

    if-nez v0, :cond_27

    .line 533
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    .line 534
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_27

    :cond_21
    const-string p0, "Error, Client control requires HAL support"

    .line 535
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_27
    const-wide/16 v3, 0x4

    .line 539
    invoke-virtual {p1, v3, v4}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result p1

    if-nez p1, :cond_43

    .line 540
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3d

    .line 542
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_43

    :cond_3d
    const-string p0, "Error, SAE requires HAL support"

    .line 543
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_43
    const/4 p0, 0x1

    return p0
.end method

.method public static chooseApChannel(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;)I
    .registers 7

    .line 299
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ApConfigUtil"

    if-nez v0, :cond_1e

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid band: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1e
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_44

    const/4 v0, 0x4

    .line 307
    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/util/ApConfigUtil;->getAvailableChannelFreqsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_44

    .line 310
    sget-object p0, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_44
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6a

    const/4 v0, 0x2

    .line 315
    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/util/ApConfigUtil;->getAvailableChannelFreqsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 317
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6a

    .line 318
    sget-object p0, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_6a
    and-int/lit8 v0, p0, 0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_90

    .line 323
    invoke-static {v3, p1, p2}, Lcom/android/server/wifi/util/ApConfigUtil;->getAvailableChannelFreqsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_90

    .line 326
    sget-object p0, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 331
    :cond_90
    invoke-static {p0, v3}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result p0

    if-eqz p0, :cond_a1

    const-string p0, "Allowed channel list not specified, selecting default channel"

    .line 332
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x6

    .line 334
    invoke-static {p0, v3}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result p0

    return p0

    :cond_a1
    const-string p0, "No available channels"

    .line 338
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
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

    .line 120
    invoke-static {p1}, Lcom/android/server/wifi/util/ApConfigUtil;->apConfig2wifiScannerBand(I)I

    move-result p1

    .line 119
    invoke-static {p0, p1}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhz(II)I

    move-result p0

    return p0
.end method

.method public static convertFrequencyToBand(I)I
    .registers 2

    .line 130
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 132
    :cond_8
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x2

    return p0

    .line 134
    :cond_10
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x4

    return p0

    :cond_18
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

    .line 200
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ","

    .line 202
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_a7

    aget-object v6, p0, v5

    .line 204
    :try_start_1a
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 205
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 206
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3e

    .line 207
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

    .line 210
    :cond_3e
    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    .line 211
    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v7, v6, :cond_72

    .line 213
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

    .line 218
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 221
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

    .line 225
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

.method public static fromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/SoftApConfiguration;
    .registers 8

    const-string v0, "Invalid WifiConfiguration"

    const-string v1, "ApConfigUtil"

    .line 398
    new-instance v2, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    const/4 v3, 0x0

    .line 400
    :try_start_a
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 401
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1c

    .line 402
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 405
    :cond_1c
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 408
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-eqz v4, :cond_2a

    if-eq v4, v6, :cond_29

    const/4 v6, 0x3

    goto :goto_2a

    :cond_29
    const/4 v6, 0x2

    .line 420
    :cond_2a
    :goto_2a
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-nez v4, :cond_32

    .line 421
    invoke-virtual {v2, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_37

    .line 423
    :cond_32
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v2, p0, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_37} :catch_50
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_37} :catch_3c

    .line 432
    :goto_37
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0

    :catch_3c
    move-exception p0

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_50
    move-exception p0

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static getAvailableChannelFreqsForBand(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wifi/WifiNative;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isBandValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_92

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isMultiband(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_92

    :cond_f
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_33

    if-eq p0, v0, :cond_27

    const/4 v0, 0x4

    if-eq p0, v0, :cond_19

    return-object v1

    :cond_19
    const v0, 0x7f070003

    .line 260
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    const/16 v0, 0x8

    goto :goto_3f

    :cond_27
    const v1, 0x7f070002

    .line 255
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    goto :goto_3f

    :cond_33
    const v0, 0x7f070001

    .line 250
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wifi/util/ApConfigUtil;->convertStringToChannelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    move v0, v2

    .line 269
    :goto_3f
    invoke-virtual {p1, v0}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object p1

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    array-length v1, p1

    const/4 v2, 0x0

    :goto_4a
    if-ge v2, v1, :cond_58

    aget v3, p1, v2

    .line 272
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_58
    if-eqz p2, :cond_91

    .line 275
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_61

    goto :goto_91

    .line 279
    :cond_61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6a
    :goto_6a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    invoke-static {v1, p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertChannelToFrequency(II)I

    move-result v1

    .line 284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    :cond_90
    return-object p1

    :cond_91
    :goto_91
    return-object v0

    :cond_92
    :goto_92
    return-object v1
.end method

.method public static getBandFromOperatingClass(I)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_2
    sget-object v2, Lcom/android/server/wifi/util/ApConfigUtil;->sBandToOperatingClass:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 81
    sget-object v2, Lcom/android/server/wifi/util/ApConfigUtil;->sBandToOperatingClass:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 82
    sget-object v3, Lcom/android/server/wifi/util/ApConfigUtil;->sBandToOperatingClass:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move v4, v0

    .line 84
    :goto_19
    array-length v5, v3

    if-ge v4, v5, :cond_24

    .line 85
    aget v5, v3, v4

    if-ne v5, p0, :cond_21

    return v2

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public static isAcsSupported(Landroid/content/Context;)Z
    .registers 2

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02002c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isBandValid(I)Z
    .registers 1

    if-eqz p0, :cond_8

    and-int/lit8 p0, p0, -0x8

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isClientForceDisconnectSupported(Landroid/content/Context;)Z
    .registers 2

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020010

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

.method public static isWpa3SaeSupported(Landroid/content/Context;)Z
    .registers 2

    .line 487
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02002e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration$Builder;Landroid/net/wifi/SoftApConfiguration;Z)I
    .registers 11

    .line 358
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    const/4 p0, 0x6

    .line 359
    invoke-virtual {p3, p0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    return v1

    .line 364
    :cond_d
    invoke-virtual {p4}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    const-string v3, "ApConfigUtil"

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1e

    if-nez p2, :cond_1e

    const-string p0, "5GHz band is not allowed without country code"

    .line 366
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 371
    :cond_1e
    invoke-virtual {p4}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_33

    invoke-static {}, Lcom/android/server/wifi/util/ApConfigUtil;->readForced5gChannelFromFile()I

    move-result p0

    new-array p1, v2, [I

    aput p0, p1, v1

    invoke-virtual {p3, v4, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {p3, p0, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    return v1

    :cond_33
    invoke-virtual {p4}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result p2

    if-nez p2, :cond_42

    if-nez p5, :cond_42

    .line 372
    invoke-virtual {p4}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p2

    invoke-static {p2, p0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->chooseApChannel(ILcom/android/server/wifi/WifiNative;Landroid/content/res/Resources;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_37

    const-string p0, "Failed to get available channel."

    .line 375
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 379
    :cond_37
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannel(I)I

    move-result p1

    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result p0

    .line 378
    invoke-virtual {p3, p1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_42
    return v1
.end method

.method private static readForced5gChannelFromFile()I
    .registers 8

    const/16 v0, 0x24

    const/4 v1, 0x0

    const-string v2, "ApConfigUtil"

    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/kano_ap_channel.cfg"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_58

    move-object v1, v3

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_31

    goto :goto_50

    :cond_31
    invoke-static {v5}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToBand(I)I

    move-result v5

    if-ne v5, v4, :cond_50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kano_patched_wifi:using forced 5GHz channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4c} :catch_5a

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_4f

    :catch_4f
    return v3

    :cond_50
    :goto_50
    const-string v3, "kano_patched_wifi:invalid 5GHz channel config, fallback to channel 36"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_5a

    goto :goto_73

    :catch_58
    move-exception v3

    goto :goto_5b

    :catch_5a
    move-exception v3

    :goto_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kano_patched_wifi:failed to read forced 5GHz channel, fallback to channel 36. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

.method public static updateCapabilityFromResource(Landroid/content/Context;)Landroid/net/wifi/SoftApCapability;
    .registers 7

    .line 444
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isAcsSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ApConfigUtil"

    if-eqz v0, :cond_10

    const-string v0, "Update Softap capability, add acs feature support"

    .line 445
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    .line 449
    :goto_12
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isClientForceDisconnectSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "Update Softap capability, add client control feature support"

    .line 450
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    .line 454
    :cond_20
    invoke-static {p0}, Lcom/android/server/wifi/util/ApConfigUtil;->isWpa3SaeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "Update Softap capability, add SAE feature support"

    .line 455
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    .line 458
    :cond_2e
    new-instance v0, Landroid/net/wifi/SoftApCapability;

    invoke-direct {v0, v2, v3}, Landroid/net/wifi/SoftApCapability;-><init>(J)V

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f050025

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-lez p0, :cond_57

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update Softap capability, max client = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v0, p0}, Landroid/net/wifi/SoftApCapability;->setMaxSupportedClients(I)V

    :cond_57
    return-object v0
.end method
