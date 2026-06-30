.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
.super Lcom/android/wifi/x/com/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation


# instance fields
.field private mSoftApTimeoutMessage:Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .registers 2

    .line 697
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/wifi/x/com/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$1;)V
    .registers 3

    .line 697
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    return-void
.end method

.method private cancelTimeoutMessage()V
    .registers 2

    .line 716
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSoftApTimeoutMessage:Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;->cancel()V

    const-string p0, "SoftApManager"

    const-string v0, "Timeout message canceled"

    .line 717
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onUpChanged(Z)V
    .registers 6

    .line 839
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$400(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-ne p1, v0, :cond_b

    return-void

    .line 843
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/SoftApManager;->access$402(Lcom/android/server/wifi/SoftApManager;Z)Z

    if-eqz p1, :cond_5c

    const-string v0, "SoftApManager"

    const-string v1, "SoftAp is ready for use"

    .line 845
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;III)V

    .line 848
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ActiveModeManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/ActiveModeManager$Listener;->onStarted()V

    .line 849
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 850
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 851
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onConnectedClientsChanged(Ljava/util/List;)V

    goto :goto_63

    .line 855
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->sendMessage(I)V

    .line 857
    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 858
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v2

    .line 857
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZIJ)V

    if-eqz p1, :cond_c6

    .line 860
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 861
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    .line 860
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;I)V

    .line 862
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 863
    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p0

    .line 862
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApCapability(Landroid/net/wifi/SoftApCapability;I)V

    :cond_c6
    return-void
.end method

.method private scheduleTimeoutMessage()V
    .registers 5

    .line 701
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1800(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_58

    .line 705
    :cond_19
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_37

    .line 707
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v0

    .line 709
    :cond_37
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSoftApTimeoutMessage:Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;->schedule(J)V

    .line 711
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout message scheduled, delay = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SoftApManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 702
    :cond_58
    :goto_58
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage()V

    return-void
.end method

.method private setSoftApChannel(II)V
    .registers 5

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel switched. Frequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Bandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v0

    if-ne p1, v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 822
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApInfo;->getBandwidth()I

    move-result v0

    if-ne p2, v0, :cond_3b

    return-void

    .line 826
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApInfo;->setFrequency(I)V

    .line 827
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/wifi/SoftApInfo;->setBandwidth(I)V

    .line 828
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onInfoChanged(Landroid/net/wifi/SoftApInfo;)V

    if-lez p1, :cond_9a

    if-eqz p2, :cond_9a

    .line 832
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 833
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApInfo;->getBandwidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    .line 832
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->addSoftApChannelSwitchedEvent(III)V

    .line 834
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateUserBandPreferenceViolationMetricsIfNeeded()V

    :cond_9a
    return-void
.end method

.method private updateClientConnection()V
    .registers 8

    .line 725
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 729
    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 730
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApCapability;->getMaxSupportedClients()I

    move-result v0

    .line 731
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 732
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v1

    if-lez v1, :cond_33

    .line 735
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 738
    :cond_33
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 741
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "SoftApManager"

    if-eqz v3, :cond_c9

    .line 742
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiClient;

    .line 743
    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->access$1600(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 744
    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v5

    if-eqz v5, :cond_96

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 745
    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->access$1700(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    goto :goto_9a

    .line 752
    :cond_96
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 746
    :cond_9a
    :goto_9a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force disconnect for not allowed client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 748
    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    const/4 v6, 0x0

    .line 747
    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_51

    :cond_c9
    if-lez v1, :cond_10d

    .line 757
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 758
    :goto_cf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10d

    if-nez v1, :cond_d8

    goto :goto_10d

    .line 760
    :cond_d8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiClient;

    .line 761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force disconnect for client due to no more room: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 764
    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    const/4 v6, 0x1

    .line 763
    invoke-virtual {v3, v5, v2, v6}, Lcom/android/server/wifi/WifiNative;->forceClientDisconnect(Ljava/lang/String;Landroid/net/MacAddress;I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_cf

    :cond_10d
    :goto_10d
    return-void
.end method

.method private updateConnectedClients(Landroid/net/wifi/WifiClient;Z)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 781
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    const-string v2, "SoftApManager"

    if-ne v1, p2, :cond_3b

    .line 783
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Drop client connection event, client "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "isConnected: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , duplicate event or client is blocked"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    if-eqz p2, :cond_5c

    .line 789
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 790
    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 789
    invoke-static {p2, v0, p1}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/WifiClient;)Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 792
    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_5b
    return-void

    .line 797
    :cond_5c
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 800
    :goto_67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The connected wifi stations have changed with count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 801
    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 800
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object p1

    if-eqz p1, :cond_b5

    .line 804
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onConnectedClientsChanged(Ljava/util/List;)V

    goto :goto_ba

    :cond_b5
    const-string p1, "SoftApCallback is null. Dropping ConnectedClientsChanged event."

    .line 806
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :goto_ba
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p2, p2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 812
    invoke-static {p2}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v0

    .line 811
    invoke-virtual {p1, p2, v0}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(II)V

    .line 814
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage()V

    return-void
.end method

.method private updateUserBandPreferenceViolationMetricsIfNeeded()V
    .registers 4

    .line 921
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    .line 922
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 923
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    .line 924
    invoke-static {v0, v2}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_29
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 926
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x2

    .line 927
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_42
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 929
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v1, 0x4

    .line 930
    invoke-static {v0, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->containsBand(II)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v2, 0x0

    :cond_5d
    :goto_5d
    if-eqz v2, :cond_8c

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel does not satisfy user band preference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 935
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftApManager"

    .line 934
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSoftApUserBandPreferenceUnsatisfied()V

    :cond_8c
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .line 869
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$402(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 870
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$502(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 871
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->onUpChanged(Z)V

    .line 873
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 874
    new-instance v2, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$2400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiContext;

    move-result-object v3

    const-string v4, "SoftApManager Soft AP Send Message Timeout"

    const/4 v5, 0x5

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSoftApTimeoutMessage:Lcom/android/wifi/x/com/android/internal/util/WakeupMessage;

    .line 878
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SarManager;->setSapWifiState(I)V

    const-string v0, "SoftApManager"

    const-string v2, "Resetting connected clients on start"

    .line 880
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 882
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$2602(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 883
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage()V

    return-void
.end method

.method public exit()V
    .registers 6

    .line 888
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 889
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1200(Lcom/android/server/wifi/SoftApManager;)V

    :cond_11
    const-string v0, "SoftApManager"

    const-string v1, "Resetting num stations on stop"

    .line 892
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    .line 894
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 895
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 896
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onConnectedClientsChanged(Ljava/util/List;)V

    .line 898
    :cond_4f
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 899
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v2

    .line 898
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(II)V

    .line 901
    :cond_66
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage()V

    .line 905
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 906
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)J

    move-result-wide v3

    .line 905
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZIJ)V

    .line 907
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-static {v0, v3, v2, v1}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;III)V

    .line 910
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SarManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/SarManager;->setSapWifiState(I)V

    .line 911
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 912
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$402(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 913
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$502(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 914
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$2702(Lcom/android/server/wifi/SoftApManager;I)I

    .line 915
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->quitNow()V

    .line 916
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/ActiveModeManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/ActiveModeManager$Listener;->onStopped()V

    .line 917
    invoke-direct {p0, v1, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->setSoftApChannel(II)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 942
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "SoftApManager"

    packed-switch v0, :pswitch_data_26e

    :pswitch_d  #0x1, 0x6
    return v4

    .line 1022
    :pswitch_e  #0xb
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/SoftApConfiguration;

    .line 1023
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2900(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1026
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    const/4 v0, 0x0

    .line 1027
    invoke-virtual {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 1028
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 1030
    :cond_36
    invoke-static {v0, p1}, Lcom/android/server/wifi/util/ApConfigUtil;->checkConfigurationChangeNeedToRestart(Landroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Configuration changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v0

    .line 1034
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v1

    if-eq v0, v1, :cond_72

    const-string v0, "Max Client changed, reset to record the metrics"

    .line 1035
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v4}, Lcom/android/server/wifi/SoftApManager;->access$2602(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 1038
    :cond_72
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1039
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v0

    .line 1040
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1041
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1800(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_99

    :cond_98
    move v4, v3

    .line 1042
    :cond_99
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1602(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/util/Set;

    .line 1043
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1702(Lcom/android/server/wifi/SoftApManager;Ljava/util/Set;)Ljava/util/Set;

    .line 1044
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1802(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 1045
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    new-instance v1, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1046
    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v5

    invoke-direct {v1, v2, p1, v5}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/SoftApConfiguration;Landroid/net/wifi/SoftApCapability;)V

    .line 1045
    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1402(Lcom/android/server/wifi/SoftApManager;Lcom/android/server/wifi/SoftApModeConfiguration;)Lcom/android/server/wifi/SoftApModeConfiguration;

    .line 1047
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateClientConnection()V

    if-eqz v4, :cond_eb

    .line 1049
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage()V

    .line 1050
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage()V

    .line 1052
    :cond_eb
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1053
    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1054
    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result p0

    .line 1052
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;I)V

    goto/16 :goto_26c

    .line 1056
    :cond_110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore the config: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " update since it requires restart"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26c

    .line 1013
    :pswitch_12b  #0xa
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v0

    if-ne v0, v3, :cond_26c

    .line 1014
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/SoftApCapability;

    .line 1015
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    new-instance v1, Landroid/net/wifi/SoftApCapability;

    invoke-direct {v1, p1}, Landroid/net/wifi/SoftApCapability;-><init>(Landroid/net/wifi/SoftApCapability;)V

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1502(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/SoftApCapability;)Landroid/net/wifi/SoftApCapability;

    .line 1016
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 1017
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1400(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v1

    .line 1016
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->updateSoftApCapability(Landroid/net/wifi/SoftApCapability;I)V

    .line 1018
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateClientConnection()V

    goto/16 :goto_26c

    .line 960
    :pswitch_16d  #0x9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-gez v0, :cond_189

    .line 961
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid ap channel frequency: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26c

    .line 964
    :cond_189
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->setSoftApChannel(II)V

    goto/16 :goto_26c

    :pswitch_190  #0x7
    const-string p1, "Interface was cleanly destroyed."

    .line 992
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v1, v2, v4}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;III)V

    .line 995
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v3}, Lcom/android/server/wifi/SoftApManager;->access$502(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 996
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2800(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/wifi/x/com/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->transitionTo(Lcom/android/wifi/x/com/android/internal/util/IState;)V

    goto/16 :goto_26c

    .line 974
    :pswitch_1ae  #0x5
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$1800(Lcom/android/server/wifi/SoftApManager;)Z

    move-result p1

    if-nez p1, :cond_1bf

    const-string p0, "Timeout message received while timeout is disabled. Dropping."

    .line 975
    invoke-static {v5, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26c

    .line 979
    :cond_1bf
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1}, Lcom/android/server/wifi/SoftApManager;->access$1900(Lcom/android/server/wifi/SoftApManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1d4

    const-string p0, "Timeout message received but has clients. Dropping."

    .line 980
    invoke-static {v5, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26c

    .line 984
    :cond_1d4
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager;->mSoftApNotifier:Lcom/android/server/wifi/SoftApNotifier;

    invoke-virtual {p1}, Lcom/android/server/wifi/SoftApNotifier;->showSoftApShutDownTimeoutExpiredNotification()V

    const-string p1, "Timeout message received. Stopping soft AP."

    .line 986
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v1, v2, v4}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;III)V

    .line 989
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2800(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/wifi/x/com/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->transitionTo(Lcom/android/wifi/x/com/android/internal/util/IState;)V

    goto/16 :goto_26c

    .line 944
    :pswitch_1f4  #0x4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/net/wifi/nl80211/NativeWifiClient;

    if-nez v1, :cond_200

    const-string p0, "Invalid type returned for CMD_ASSOCIATED_STATIONS_CHANGED"

    .line 945
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26c

    .line 949
    :cond_200
    check-cast v0, Landroid/net/wifi/nl80211/NativeWifiClient;

    .line 950
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_207

    move v4, v3

    :cond_207
    if-eqz v0, :cond_26c

    .line 951
    invoke-virtual {v0}, Landroid/net/wifi/nl80211/NativeWifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    if-eqz p1, :cond_26c

    .line 952
    new-instance p1, Landroid/net/wifi/WifiClient;

    invoke-virtual {v0}, Landroid/net/wifi/nl80211/NativeWifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/net/wifi/WifiClient;-><init>(Landroid/net/MacAddress;)V

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_ASSOCIATED_STATIONS_CHANGED, Client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {v0}, Landroid/net/wifi/nl80211/NativeWifiClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isConnected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->updateConnectedClients(Landroid/net/wifi/WifiClient;Z)V

    goto :goto_26c

    .line 967
    :pswitch_240  #0x3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_245

    move v4, v3

    .line 968
    :cond_245
    invoke-direct {p0, v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->onUpChanged(Z)V

    goto :goto_26c

    :pswitch_249  #0x2
    const-string p1, "hostapd failure, stop and report failure"

    .line 999
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_24e  #0x8
    const-string p1, "interface error, stop and report failure"

    .line 1002
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v0, 0xe

    invoke-static {p1, v0, v2, v4}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1006
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object p1, p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {p1, v1, v0, v4}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1008
    iget-object p0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2800(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/wifi/x/com/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->transitionTo(Lcom/android/wifi/x/com/android/internal/util/IState;)V

    :cond_26c
    :goto_26c
    :pswitch_26c  #0x0
    return v3

    nop

    :pswitch_data_26e
    .packed-switch 0x0
        :pswitch_26c  #00000000
        :pswitch_d  #00000001
        :pswitch_249  #00000002
        :pswitch_240  #00000003
        :pswitch_1f4  #00000004
        :pswitch_1ae  #00000005
        :pswitch_d  #00000006
        :pswitch_190  #00000007
        :pswitch_24e  #00000008
        :pswitch_16d  #00000009
        :pswitch_12b  #0000000a
        :pswitch_e  #0000000b
    .end packed-switch
.end method
