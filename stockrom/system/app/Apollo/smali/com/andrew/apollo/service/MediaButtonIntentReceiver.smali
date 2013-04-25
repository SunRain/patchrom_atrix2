.class public Lcom/andrew/apollo/service/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static mDown:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mLastClickTime:J

.field private static mLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 37
    sput-boolean v2, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mDown:Z

    .line 39
    sput-boolean v2, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mLaunched:Z

    .line 41
    new-instance v0, Lcom/andrew/apollo/service/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/andrew/apollo/service/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mLaunched:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    sput-boolean p0, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mLaunched:Z

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v1, "com.andrew.apollo.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 71
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 76
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 77
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 78
    const-string v1, "buttonId"

    invoke-virtual {p2, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 84
    const/4 v1, 0x0

    .line 85
    sparse-switch v2, :sswitch_data_0

    .line 107
    :goto_1
    if-eqz v1, :cond_0

    .line 108
    if-nez v3, :cond_6

    .line 109
    sget-boolean v3, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mDown:Z

    if-eqz v3, :cond_4

    if-nez v6, :cond_4

    .line 110
    const-string v0, "togglepause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-wide v0, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mLastClickTime:J

    cmp-long v0, v0, v11

    if-eqz v0, :cond_3

    sget-wide v0, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 114
    sget-object v0, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_0

    .line 87
    :sswitch_0
    const-string v1, "stop"

    goto :goto_1

    .line 91
    :sswitch_1
    const-string v1, "togglepause"

    goto :goto_1

    .line 94
    :sswitch_2
    const-string v1, "next"

    goto :goto_1

    .line 97
    :sswitch_3
    const-string v1, "previous"

    goto :goto_1

    .line 100
    :sswitch_4
    const-string v1, "pause"

    goto :goto_1

    .line 103
    :sswitch_5
    const-string v1, "play"

    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const-string v3, "com.andrew.apollo.musicservicecommand"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v3, "buttonId"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const/16 v3, 0x4f

    if-ne v2, v3, :cond_5

    sget-wide v2, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v2, v4, v2

    const-wide/16 v7, 0x12c

    cmp-long v2, v2, v7

    if-gez v2, :cond_5

    .line 134
    const-string v1, "command"

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    sput-wide v11, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 143
    :goto_3
    sput-boolean v9, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mLaunched:Z

    .line 144
    if-nez v6, :cond_3

    .line 145
    sput-boolean v10, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_2

    .line 138
    :cond_5
    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 140
    sput-wide v4, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_3

    .line 149
    :cond_6
    sget-object v0, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    sput-boolean v9, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_2

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x7e -> :sswitch_5
        0x7f -> :sswitch_4
    .end sparse-switch
.end method
