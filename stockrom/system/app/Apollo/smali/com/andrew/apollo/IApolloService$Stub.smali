.class public abstract Lcom/andrew/apollo/IApolloService$Stub;
.super Landroid/os/Binder;
.source "IApolloService.java"

# interfaces
.implements Lcom/andrew/apollo/IApolloService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/IApolloService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/IApolloService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.andrew.apollo.IApolloService"

    invoke-virtual {p0, p0, v0}, Lcom/andrew/apollo/IApolloService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/andrew/apollo/IApolloService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.andrew.apollo.IApolloService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/andrew/apollo/IApolloService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/andrew/apollo/IApolloService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/andrew/apollo/IApolloService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/andrew/apollo/IApolloService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/IApolloService$Stub;->openFile(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 60
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/andrew/apollo/IApolloService$Stub;->open([JI)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_3
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/IApolloService$Stub;->getIdFromPath(Ljava/lang/String;)J

    move-result-wide v3

    .line 71
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 77
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_4
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getQueuePosition()I

    move-result v3

    .line 79
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v3           #_result:I
    :sswitch_5
    const-string v7, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->isPlaying()Z

    move-result v3

    .line 87
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v3           #_result:Z
    :sswitch_6
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->stop()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    :sswitch_7
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->pause()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    :sswitch_8
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->play()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    :sswitch_9
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->prev()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    :sswitch_a
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->next()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 128
    :sswitch_b
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->duration()J

    move-result-wide v3

    .line 130
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 136
    .end local v3           #_result:J
    :sswitch_c
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->position()J

    move-result-wide v3

    .line 138
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 144
    .end local v3           #_result:J
    :sswitch_d
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 147
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/IApolloService$Stub;->seek(J)J

    move-result-wide v3

    .line 148
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 154
    .end local v0           #_arg0:J
    .end local v3           #_result:J
    :sswitch_e
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 164
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getAlbumId()J

    move-result-wide v3

    .line 172
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 178
    .end local v3           #_result:J
    :sswitch_11
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getArtistId()J

    move-result-wide v3

    .line 188
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 194
    .end local v3           #_result:J
    :sswitch_13
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 198
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/andrew/apollo/IApolloService$Stub;->enqueue([JI)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 205
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_14
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getQueue()[J

    move-result-object v3

    .line 207
    .local v3, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 213
    .end local v3           #_result:[J
    :sswitch_15
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/IApolloService$Stub;->setQueuePosition(I)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 222
    .end local v0           #_arg0:I
    :sswitch_16
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_17
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getAudioId()J

    move-result-wide v3

    .line 232
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 238
    .end local v3           #_result:J
    :sswitch_18
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/IApolloService$Stub;->setShuffleMode(I)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 247
    .end local v0           #_arg0:I
    :sswitch_19
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getShuffleMode()I

    move-result v3

    .line 249
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 255
    .end local v3           #_result:I
    :sswitch_1a
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/andrew/apollo/IApolloService$Stub;->removeTracks(II)I

    move-result v3

    .line 261
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 267
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_result:I
    :sswitch_1b
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 270
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/IApolloService$Stub;->removeTrack(J)I

    move-result v3

    .line 271
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v0           #_arg0:J
    .end local v3           #_result:I
    :sswitch_1c
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/IApolloService$Stub;->setRepeatMode(I)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 286
    .end local v0           #_arg0:I
    :sswitch_1d
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getRepeatMode()I

    move-result v3

    .line 288
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 294
    .end local v3           #_result:I
    :sswitch_1e
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getMediaMountedCount()I

    move-result v3

    .line 296
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 302
    .end local v3           #_result:I
    :sswitch_1f
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->getAudioSessionId()I

    move-result v3

    .line 304
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 310
    .end local v3           #_result:I
    :sswitch_20
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 313
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/IApolloService$Stub;->addToFavorites(J)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 319
    .end local v0           #_arg0:J
    :sswitch_21
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 322
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/IApolloService$Stub;->removeFromFavorites(J)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 328
    .end local v0           #_arg0:J
    :sswitch_22
    const-string v7, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 331
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/IApolloService$Stub;->isFavorite(J)Z

    move-result v3

    .line 332
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 338
    .end local v0           #_arg0:J
    .end local v3           #_result:Z
    :sswitch_23
    const-string v5, "com.andrew.apollo.IApolloService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/andrew/apollo/IApolloService$Stub;->toggleFavorite()V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
