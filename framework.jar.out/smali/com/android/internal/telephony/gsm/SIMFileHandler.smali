.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mMotoNewArch:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "card"
    .parameter "aid"
    .parameter "ci"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 36
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mMotoNewArch:Z

    .line 44
    const-string/jumbo v0, "ro.ril.moto.newarch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mMotoNewArch:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .parameter "efid"

    .prologue
    .line 59
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mMotoNewArch:Z

    if-eqz v1, :cond_0

    .line 60
    sparse-switch p1, :sswitch_data_0

    .line 69
    :cond_0
    sparse-switch p1, :sswitch_data_1

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    const-string v0, "3F007F105F3A"

    .line 109
    .end local v0           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 62
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 64
    :sswitch_1
    const-string v0, "3F007F20"

    goto :goto_0

    .line 71
    :sswitch_2
    const-string v0, "3F007F10"

    goto :goto_0

    .line 83
    :sswitch_3
    const-string v0, "3F007F20"

    goto :goto_0

    .line 92
    :sswitch_4
    const-string v0, "3F007F20"

    goto :goto_0

    .line 96
    :sswitch_5
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 107
    .restart local v0       #path:Ljava/lang/String;
    :cond_2
    const-string v1, "GSM"

    const-string v2, "Error: EF Path being returned in null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f74 -> :sswitch_0
        0x6fc6 -> :sswitch_1
    .end sparse-switch

    .line 69
    :sswitch_data_1
    .sparse-switch
        0x4f30 -> :sswitch_5
        0x6f11 -> :sswitch_4
        0x6f13 -> :sswitch_4
        0x6f14 -> :sswitch_4
        0x6f15 -> :sswitch_4
        0x6f16 -> :sswitch_4
        0x6f17 -> :sswitch_4
        0x6f18 -> :sswitch_4
        0x6f38 -> :sswitch_3
        0x6f3c -> :sswitch_2
        0x6f46 -> :sswitch_3
        0x6fad -> :sswitch_3
        0x6fc5 -> :sswitch_3
        0x6fc7 -> :sswitch_3
        0x6fc8 -> :sswitch_3
        0x6fc9 -> :sswitch_3
        0x6fca -> :sswitch_3
        0x6fcb -> :sswitch_3
        0x6fcd -> :sswitch_3
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 56
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 113
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 117
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
