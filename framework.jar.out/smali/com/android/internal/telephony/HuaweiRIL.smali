.class Lcom/android/internal/telephony/HuaweiRIL;
.super Lcom/android/internal/telephony/RIL;
.source "HuaweiRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HuaweiRIL$1;,
        Lcom/android/internal/telephony/HuaweiRIL$IccHandler;
    }
.end annotation


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z

.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_ON_HTC:I

.field private final RIL_INT_RADIO_ON_NG:I

.field private final RIL_INT_RADIO_UNAVALIABLE:I

.field protected mAid:Ljava/lang/String;

.field protected mIccHandler:Lcom/android/internal/telephony/HuaweiRIL$IccHandler;

.field protected mIccThread:Landroid/os/HandlerThread;

.field protected mLastDataIface:[Ljava/lang/String;

.field protected mUSIM:Z

.field skipCdmaSubcription:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 43
    iput-boolean v1, p0, Lcom/android/internal/telephony/HuaweiRIL;->RILJ_LOGD:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/internal/telephony/HuaweiRIL;->RILJ_LOGV:Z

    .line 45
    iput v2, p0, Lcom/android/internal/telephony/HuaweiRIL;->RIL_INT_RADIO_OFF:I

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->RIL_INT_RADIO_ON:I

    .line 47
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->RIL_INT_RADIO_ON_HTC:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->RIL_INT_RADIO_ON_NG:I

    .line 49
    iput v1, p0, Lcom/android/internal/telephony/HuaweiRIL;->RIL_INT_RADIO_UNAVALIABLE:I

    .line 53
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mLastDataIface:[Ljava/lang/String;

    .line 54
    iput-boolean v2, p0, Lcom/android/internal/telephony/HuaweiRIL;->mUSIM:Z

    .line 55
    const-string/jumbo v0, "skipCdmaSubcription"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HuaweiRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->skipCdmaSubcription:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mSetPreferredNetworkType:I

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mQANElements:I

    .line 61
    return-void
.end method

.method private notifyRegistrantsRilConnectionChanged(I)V
    .locals 4
    .parameter "rilVer"

    .prologue
    const/4 v3, 0x0

    .line 70
    iput p1, p0, Lcom/android/internal/telephony/HuaweiRIL;->mRilVersion:I

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 75
    :cond_0
    return-void
.end method

.method private setRadioStateFromRILInt(I)V
    .locals 6
    .parameter "stateCode"

    .prologue
    const/4 v4, 0x0

    .line 83
    sparse-switch p1, :sswitch_data_0

    .line 110
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized RIL_RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 86
    .local v2, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiRIL;->mIccHandler:Lcom/android/internal/telephony/HuaweiRIL$IccHandler;

    if-eqz v3, :cond_0

    .line 87
    iput-object v4, p0, Lcom/android/internal/telephony/HuaweiRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 88
    iput-object v4, p0, Lcom/android/internal/telephony/HuaweiRIL;->mIccHandler:Lcom/android/internal/telephony/HuaweiRIL$IccHandler;

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HuaweiRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 114
    return-void

    .line 92
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 93
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 97
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiRIL;->mIccHandler:Lcom/android/internal/telephony/HuaweiRIL$IccHandler;

    if-nez v3, :cond_1

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 101
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 103
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 104
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/HuaweiRIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/HuaweiRIL$IccHandler;-><init>(Lcom/android/internal/telephony/HuaweiRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/HuaweiRIL;->mIccHandler:Lcom/android/internal/telephony/HuaweiRIL$IccHandler;

    .line 105
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiRIL;->mIccHandler:Lcom/android/internal/telephony/HuaweiRIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/HuaweiRIL$IccHandler;->run()V

    .line 107
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 108
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_2
        0xd -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/HuaweiRIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 234
    return-void
.end method

.method protected getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;
    .locals 9
    .parameter "p"
    .parameter "version"

    .prologue
    const/4 v8, 0x0

    .line 239
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 241
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    const-string v5, "datacall"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/HuaweiRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    .line 243
    .local v4, oldRil:Z
    if-nez v4, :cond_1

    const/4 v5, 0x5

    if-ge p2, v5, :cond_1

    .line 244
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;

    move-result-object v1

    .line 297
    .end local v1           #dataCall:Lcom/android/internal/telephony/DataCallState;
    :cond_0
    :goto_0
    return-object v1

    .line 245
    .restart local v1       #dataCall:Lcom/android/internal/telephony/DataCallState;
    :cond_1
    if-nez v4, :cond_5

    .line 246
    iput p2, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 253
    iget v5, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v5, :cond_2

    .line 257
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "getDataCallState, no ifname"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 260
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 262
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 264
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, dnses:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 266
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 268
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, gateways:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    goto :goto_0

    .line 273
    .end local v0           #addresses:Ljava/lang/String;
    .end local v2           #dnses:Ljava/lang/String;
    .end local v3           #gateways:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x4

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 277
    iget-object v5, p0, Lcom/android/internal/telephony/HuaweiRIL;->mLastDataIface:[Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    aget-object v5, v5, v6

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 280
    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 281
    iget-object v5, p0, Lcom/android/internal/telephony/HuaweiRIL;->mLastDataIface:[Ljava/lang/String;

    aget-object v5, v5, v8

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 284
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .restart local v0       #addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 286
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 288
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 291
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 292
    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dns1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 294
    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "net."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dns2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto/16 :goto_0
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    const/16 v3, 0xb

    .line 302
    invoke-static {v3, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 304
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-boolean v1, p0, Lcom/android/internal/telephony/HuaweiRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI:RIL_REQUEST_GET_IMSI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/HuaweiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HuaweiRIL;->riljLog(Ljava/lang/String;)V

    .line 312
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HuaweiRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 313
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/HuaweiRIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 320
    :cond_0
    const/16 v1, 0x4b

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 323
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/HuaweiRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_1

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/HuaweiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HuaweiRIL;->riljLog(Ljava/lang/String;)V

    .line 326
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HuaweiRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 335
    const/16 v1, 0x1c

    invoke-static {v1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 337
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/HuaweiRIL;->mUSIM:Z

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "7F20$"

    const-string v2, "7FFF"

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 340
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-boolean v1, p0, Lcom/android/internal/telephony/HuaweiRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_1

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/HuaweiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HuaweiRIL;->riljLog(Ljava/lang/String;)V

    .line 357
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HuaweiRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 359
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 364
    const/4 v1, 0x0

    .line 366
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 367
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 371
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HuaweiRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 373
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    .line 374
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v2, 0x0

    .line 381
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_4

    .line 384
    :cond_1
    const-string/jumbo v6, "ro.cm.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "e73"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v7, 0xdc

    if-ne v6, v7, :cond_2

    .line 386
    const/16 v6, 0x33

    iput v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 391
    :cond_2
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_0

    .line 723
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :catch_0
    move-exception v5

    .line 730
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/HuaweiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_3

    .line 735
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 736
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 738
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 398
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 743
    .end local v2           #ret:Ljava/lang/Object;
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 744
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 745
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 401
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 402
    goto :goto_1

    .line 404
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 405
    goto :goto_1

    .line 407
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 408
    goto :goto_1

    .line 410
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 411
    goto :goto_1

    .line 413
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 414
    goto :goto_1

    .line 416
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 417
    goto :goto_1

    .line 419
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 420
    goto :goto_1

    .line 422
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 423
    goto :goto_1

    .line 425
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 426
    goto :goto_1

    .line 428
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 429
    goto :goto_1

    .line 431
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 432
    goto :goto_1

    .line 434
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 435
    goto :goto_1

    .line 437
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 438
    goto :goto_1

    .line 440
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 441
    goto :goto_1

    .line 443
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 444
    goto :goto_1

    .line 446
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 447
    goto :goto_1

    .line 449
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 450
    goto :goto_1

    .line 452
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 453
    goto :goto_1

    .line 455
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 456
    goto :goto_1

    .line 458
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 459
    goto :goto_1

    .line 461
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 462
    goto :goto_1

    .line 464
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 465
    goto :goto_1

    .line 467
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 468
    goto :goto_1

    .line 470
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 471
    goto/16 :goto_1

    .line 473
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 474
    goto/16 :goto_1

    .line 476
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 477
    goto/16 :goto_1

    .line 479
    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 480
    goto/16 :goto_1

    .line 482
    :pswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 483
    goto/16 :goto_1

    .line 485
    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 486
    goto/16 :goto_1

    .line 488
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 489
    goto/16 :goto_1

    .line 491
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 492
    goto/16 :goto_1

    .line 494
    :pswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 495
    goto/16 :goto_1

    .line 497
    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 498
    goto/16 :goto_1

    .line 500
    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 501
    goto/16 :goto_1

    .line 503
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 504
    goto/16 :goto_1

    .line 506
    :pswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 507
    goto/16 :goto_1

    .line 509
    :pswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 510
    goto/16 :goto_1

    .line 512
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 513
    goto/16 :goto_1

    .line 515
    :pswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 516
    goto/16 :goto_1

    .line 518
    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 519
    goto/16 :goto_1

    .line 521
    :pswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 522
    goto/16 :goto_1

    .line 524
    :pswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 525
    goto/16 :goto_1

    .line 527
    :pswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 528
    goto/16 :goto_1

    .line 530
    :pswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 531
    goto/16 :goto_1

    .line 533
    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 534
    goto/16 :goto_1

    .line 536
    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 537
    goto/16 :goto_1

    .line 539
    :pswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 540
    goto/16 :goto_1

    .line 542
    :pswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 543
    goto/16 :goto_1

    .line 545
    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 546
    goto/16 :goto_1

    .line 548
    :pswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 549
    goto/16 :goto_1

    .line 551
    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 552
    goto/16 :goto_1

    .line 554
    :pswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 555
    goto/16 :goto_1

    .line 557
    :pswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 558
    goto/16 :goto_1

    .line 560
    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 561
    goto/16 :goto_1

    .line 563
    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 564
    goto/16 :goto_1

    .line 566
    :pswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 567
    goto/16 :goto_1

    .line 569
    :pswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 570
    goto/16 :goto_1

    .line 572
    :pswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 573
    goto/16 :goto_1

    .line 575
    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 576
    goto/16 :goto_1

    .line 578
    :pswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 579
    goto/16 :goto_1

    .line 581
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 582
    goto/16 :goto_1

    .line 584
    :pswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 585
    goto/16 :goto_1

    .line 587
    :pswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 588
    goto/16 :goto_1

    .line 590
    :pswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 591
    goto/16 :goto_1

    .line 593
    :pswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 594
    goto/16 :goto_1

    .line 596
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 597
    goto/16 :goto_1

    .line 599
    :pswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 600
    goto/16 :goto_1

    .line 602
    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 603
    goto/16 :goto_1

    .line 605
    :pswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 606
    goto/16 :goto_1

    .line 608
    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 609
    goto/16 :goto_1

    .line 611
    :pswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 612
    goto/16 :goto_1

    .line 614
    :pswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 615
    goto/16 :goto_1

    .line 617
    :pswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 618
    goto/16 :goto_1

    .line 620
    :pswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 621
    goto/16 :goto_1

    .line 623
    :pswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 624
    goto/16 :goto_1

    .line 626
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 627
    goto/16 :goto_1

    .line 629
    :pswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 630
    goto/16 :goto_1

    .line 632
    :pswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 633
    goto/16 :goto_1

    .line 635
    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 636
    goto/16 :goto_1

    .line 638
    :pswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 639
    goto/16 :goto_1

    .line 641
    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 642
    goto/16 :goto_1

    .line 644
    :pswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 645
    goto/16 :goto_1

    .line 647
    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 648
    goto/16 :goto_1

    .line 650
    :pswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 651
    goto/16 :goto_1

    .line 653
    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 654
    goto/16 :goto_1

    .line 656
    :pswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 657
    goto/16 :goto_1

    .line 659
    :pswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 660
    goto/16 :goto_1

    .line 662
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 663
    goto/16 :goto_1

    .line 665
    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 666
    goto/16 :goto_1

    .line 668
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 669
    goto/16 :goto_1

    .line 671
    :pswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 672
    goto/16 :goto_1

    .line 674
    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 675
    goto/16 :goto_1

    .line 677
    :pswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 678
    goto/16 :goto_1

    .line 680
    :pswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 681
    goto/16 :goto_1

    .line 683
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 684
    goto/16 :goto_1

    .line 686
    :pswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 687
    goto/16 :goto_1

    .line 689
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 690
    goto/16 :goto_1

    .line 692
    :pswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 693
    goto/16 :goto_1

    .line 695
    :pswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 696
    goto/16 :goto_1

    .line 698
    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 699
    goto/16 :goto_1

    .line 701
    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 702
    goto/16 :goto_1

    .line 704
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 705
    goto/16 :goto_1

    .line 707
    :pswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 708
    goto/16 :goto_1

    .line 710
    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 711
    goto/16 :goto_1

    .line 713
    :pswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 714
    goto/16 :goto_1

    .line 716
    :pswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 717
    goto/16 :goto_1

    .line 719
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 720
    goto/16 :goto_1

    .line 749
    .end local v2           #ret:Ljava/lang/Object;
    :cond_5
    iget-boolean v6, p0, Lcom/android/internal/telephony/HuaweiRIL;->RILJ_LOGD:Z

    if-eqz v6, :cond_6

    .line 750
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/HuaweiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/HuaweiRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/HuaweiRIL;->riljLog(Ljava/lang/String;)V

    .line 753
    :cond_6
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_7

    .line 754
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 755
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 758
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_5d
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_64
        :pswitch_62
        :pswitch_63
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 766
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 772
    .local v1, response:I
    const-string v4, "datacall"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HuaweiRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 773
    packed-switch v1, :pswitch_data_0

    .line 783
    :cond_0
    packed-switch v1, :pswitch_data_1

    .line 804
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 807
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 837
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 778
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 779
    .local v2, ret:Ljava/lang/Object;
    goto :goto_0

    .line 787
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 811
    .restart local v2       #ret:Ljava/lang/Object;
    :goto_1
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 813
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 814
    .local v3, state:I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HuaweiRIL;->setRadioStateFromRILInt(I)V

    goto :goto_0

    .line 790
    .end local v2           #ret:Ljava/lang/Object;
    .end local v3           #state:I
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 791
    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 793
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 794
    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 796
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 797
    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 799
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HuaweiRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 800
    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 817
    :sswitch_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/HuaweiRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_2

    .line 818
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HuaweiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 820
    :cond_2
    check-cast v2, [I

    .end local v2           #ret:Ljava/lang/Object;
    check-cast v2, [I

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HuaweiRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    .line 826
    .restart local v2       #ret:Ljava/lang/Object;
    :sswitch_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/HuaweiRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_3

    .line 827
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HuaweiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 829
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/HuaweiRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 830
    iget-object v4, p0, Lcom/android/internal/telephony/HuaweiRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 773
    nop

    :pswitch_data_0
    .packed-switch 0x407
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 783
    :pswitch_data_1
    .packed-switch 0x40a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 811
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x40a -> :sswitch_2
        0x40b -> :sswitch_0
        0x40c -> :sswitch_0
        0x40d -> :sswitch_3
    .end sparse-switch
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 842
    iget-object v4, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HuaweiRIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 844
    return-void
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    .line 850
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 851
    .local v5, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCdmaSubscriptionAppIndex(I)V

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setImsSubscriptionAppIndex(I)V

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 861
    .local v4, numApplications:I
    const/16 v6, 0x8

    if-le v4, v6, :cond_0

    .line 862
    const/16 v4, 0x8

    .line 865
    :cond_0
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/IccCardStatus;->setNumApplications(I)V

    .line 867
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 868
    new-instance v2, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v2}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 869
    .local v2, ca:Lcom/android/internal/telephony/IccCardApplication;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 881
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 867
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 883
    .end local v2           #ca:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    const/4 v0, -0x1

    .line 884
    .local v0, appIndex:I
    iget v6, p0, Lcom/android/internal/telephony/HuaweiRIL;->mPhoneType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/HuaweiRIL;->skipCdmaSubcription:Z

    if-nez v6, :cond_4

    .line 885
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    .line 886
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a CDMA PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :goto_1
    if-lez v4, :cond_3

    .line 893
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .line 894
    .local v1, application:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    .line 895
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v7, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/HuaweiRIL;->mUSIM:Z

    .line 896
    iget v6, p0, Lcom/android/internal/telephony/HuaweiRIL;->mPreferredNetworkType:I

    iput v6, p0, Lcom/android/internal/telephony/HuaweiRIL;->mSetPreferredNetworkType:I

    .line 898
    iget-object v6, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 899
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    .line 900
    :cond_2
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .end local v1           #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    return-object v5

    .line 888
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 889
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a GSM PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 895
    .restart local v1       #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 910
    const-string v3, "datacall"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HuaweiRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v2

    .line 912
    .local v2, oldRil:Z
    if-nez v2, :cond_0

    .line 913
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 947
    :goto_0
    return-object v1

    .line 915
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 916
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    const/4 v3, 0x4

    iput v3, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 918
    iput v6, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 921
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v3, :cond_1

    .line 923
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "RIL_REQUEST_SETUP_DATA_CALL response, no ifname"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 927
    :cond_1
    const-string/jumbo v3, "singlepdp"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HuaweiRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 928
    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 932
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/HuaweiRIL;->mLastDataIface:[Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 936
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 939
    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 940
    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 942
    iget-object v3, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 944
    iput v7, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 945
    iput v6, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    goto/16 :goto_0
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .parameter "p"

    .prologue
    const/4 v7, -0x1

    .line 952
    const/16 v2, 0xc

    .line 955
    .local v2, numInts:I
    const-string/jumbo v5, "signalstrength"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/HuaweiRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    .line 956
    .local v3, oldRil:Z
    const/4 v1, 0x0

    .line 959
    .local v1, noLte:Z
    new-array v4, v2, [I

    .line 960
    .local v4, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 961
    if-nez v3, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    const/4 v5, 0x6

    if-le v0, v5, :cond_3

    const/16 v5, 0xc

    if-ge v0, v5, :cond_3

    .line 962
    aput v7, v4, v0

    .line 966
    :goto_1
    const/4 v5, 0x7

    if-ne v0, v5, :cond_1

    aget v5, v4, v0

    const/16 v6, 0x63

    if-ne v5, v6, :cond_1

    .line 967
    aput v7, v4, v0

    .line 968
    const/4 v1, 0x1

    .line 970
    :cond_1
    const/16 v5, 0x8

    if-ne v0, v5, :cond_2

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    .line 971
    aget v5, v4, v0

    mul-int/lit8 v5, v5, -0x1

    aput v5, v4, v0

    .line 960
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 964
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v0

    goto :goto_1

    .line 975
    :cond_4
    return-object v4
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 2

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->RILJ_LOGD:Z

    if-eqz v0, :cond_0

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentPreferredNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/HuaweiRIL;->mSetPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HuaweiRIL;->riljLog(Ljava/lang/String;)V

    .line 983
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mSetPreferredNetworkType:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/HuaweiRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 984
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 989
    iget-object v5, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/HuaweiRIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 991
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 998
    iget-boolean v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mUSIM:Z

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mSetPreferredNetworkType:I

    if-ltz v0, :cond_0

    .line 1001
    const/4 p1, 0x0

    .line 1003
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/HuaweiRIL;->mSetPreferredNetworkType:I

    .line 1005
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1006
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/HuaweiRIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1011
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/HuaweiRIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1016
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/internal/telephony/HuaweiRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/HuaweiRIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1021
    return-void
.end method
