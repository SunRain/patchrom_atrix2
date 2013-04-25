.class public Lcom/andrew/apollo/service/ApolloService;
.super Landroid/app/Service;
.source "ApolloService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/service/ApolloService$ServiceStub;,
        Lcom/andrew/apollo/service/ApolloService$MultiPlayer;,
        Lcom/andrew/apollo/service/ApolloService$Shuffler;
    }
.end annotation


# static fields
.field public static final APOLLO_PACKAGE_NAME:Ljava/lang/String; = "com.andrew.apollo"

.field public static final CMDCYCLEREPEAT:Ljava/lang/String; = "cyclerepeat"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDNOTIF:Ljava/lang/String; = "buttonId"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPLAY:Ljava/lang/String; = "play"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEFAVORITE:Ljava/lang/String; = "togglefavorite"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final CMDTOGGLESHUFFLE:Ljava/lang/String; = "toggleshuffle"

.field public static final CYCLEREPEAT_ACTION:Ljava/lang/String; = "com.andrew.apollo.musicservicecommand.cyclerepeat"

.field public static final FAVORITE_CHANGED:Ljava/lang/String; = "com.andrew.apollo.favoritechanged"

.field public static final LAST:I = 0x3

.field public static final META_CHANGED:Ljava/lang/String; = "com.andrew.apollo.metachanged"

.field public static final MUSIC_PACKAGE_NAME:Ljava/lang/String; = "com.android.music"

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.andrew.apollo.musicservicecommand.next"

.field public static final NOW:I = 0x1

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.andrew.apollo.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.andrew.apollo.playstatechanged"

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.andrew.apollo.musicservicecommand.previous"

.field public static final PROGRESSBAR_CHANGED:Ljava/lang/String; = "com.andrew.apollo.progressbarchnaged"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.andrew.apollo.queuechanged"

.field public static final REFRESH_PROGRESSBAR:Ljava/lang/String; = "com.andrew.apollo.refreshprogessbar"

.field public static final REPEATMODE_CHANGED:Ljava/lang/String; = "com.andrew.apollo.repeatmodechanged"

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final SERVICECMD:Ljava/lang/String; = "com.andrew.apollo.musicservicecommand"

.field public static final SHUFFLEMODE_CHANGED:Ljava/lang/String; = "com.andrew.apollo.shufflemodechanged"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.andrew.apollo.musicservicecommand.togglepause"

.field public static final TOGGLESHUFFLE_ACTION:Ljava/lang/String; = "com.andrew.apollo.musicservicecommand.toggleshuffle"


# instance fields
.field private final hexdigits:[C

.field private final mAppWidgetProvider1x1:Lcom/andrew/apollo/app/widgets/AppWidget11;

.field private final mAppWidgetProvider4x1:Lcom/andrew/apollo/app/widgets/AppWidget41;

.field private final mAppWidgetProvider4x2:Lcom/andrew/apollo/app/widgets/AppWidget42;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[J

.field private final mBinder:Landroid/os/IBinder;

.field private mCardId:I

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private final mDelayedStopHandler:Landroid/os/Handler;

.field private mFileToPlay:Ljava/lang/String;

.field private final mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupposedToBePlaying:Z

.field private mMediaMountedCount:I

.field private final mMediaplayerHandler:Landroid/os/Handler;

.field private mNextPlayPos:I

.field private mOpenFailedCounter:I

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[J

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQueueIsSaveable:Z

.field private mQuietMode:Z

.field private final mRand:Lcom/andrew/apollo/service/ApolloService$Shuffler;

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRepeatMode:I

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private status:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 424
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 185
    iput v3, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    .line 187
    iput v3, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    .line 189
    iput v3, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaMountedCount:I

    .line 191
    iput-object v4, p0, Lcom/andrew/apollo/service/ApolloService;->mAutoShuffleList:[J

    .line 193
    iput-object v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    .line 195
    iput v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 197
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    .line 201
    iput v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 203
    iput v5, p0, Lcom/andrew/apollo/service/ApolloService;->mNextPlayPos:I

    .line 207
    new-instance v0, Lcom/andrew/apollo/service/ApolloService$Shuffler;

    invoke-direct {v0, v4}, Lcom/andrew/apollo/service/ApolloService$Shuffler;-><init>(Lcom/andrew/apollo/service/ApolloService$1;)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mRand:Lcom/andrew/apollo/service/ApolloService$Shuffler;

    .line 209
    iput v3, p0, Lcom/andrew/apollo/service/ApolloService;->mOpenFailedCounter:I

    .line 211
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursorCols:[Ljava/lang/String;

    .line 225
    iput-object v4, p0, Lcom/andrew/apollo/service/ApolloService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    iput v5, p0, Lcom/andrew/apollo/service/ApolloService;->mServiceStartId:I

    .line 231
    iput-boolean v3, p0, Lcom/andrew/apollo/service/ApolloService;->mServiceInUse:Z

    .line 233
    iput-boolean v3, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    .line 235
    iput-boolean v3, p0, Lcom/andrew/apollo/service/ApolloService;->mQuietMode:Z

    .line 239
    iput-boolean v6, p0, Lcom/andrew/apollo/service/ApolloService;->mQueueIsSaveable:Z

    .line 242
    iput-boolean v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z

    .line 252
    invoke-static {}, Lcom/andrew/apollo/app/widgets/AppWidget11;->getInstance()Lcom/andrew/apollo/app/widgets/AppWidget11;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider1x1:Lcom/andrew/apollo/app/widgets/AppWidget11;

    .line 254
    invoke-static {}, Lcom/andrew/apollo/app/widgets/AppWidget42;->getInstance()Lcom/andrew/apollo/app/widgets/AppWidget42;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider4x2:Lcom/andrew/apollo/app/widgets/AppWidget42;

    .line 256
    invoke-static {}, Lcom/andrew/apollo/app/widgets/AppWidget41;->getInstance()Lcom/andrew/apollo/app/widgets/AppWidget41;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider4x1:Lcom/andrew/apollo/app/widgets/AppWidget41;

    .line 263
    new-instance v0, Lcom/andrew/apollo/service/ApolloService$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/service/ApolloService$1;-><init>(Lcom/andrew/apollo/service/ApolloService;)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 369
    new-instance v0, Lcom/andrew/apollo/service/ApolloService$2;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/service/ApolloService$2;-><init>(Lcom/andrew/apollo/service/ApolloService;)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    new-instance v0, Lcom/andrew/apollo/service/ApolloService$3;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/service/ApolloService$3;-><init>(Lcom/andrew/apollo/service/ApolloService;)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 522
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->hexdigits:[C

    .line 842
    new-instance v0, Lcom/andrew/apollo/service/ApolloService$4;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/service/ApolloService$4;-><init>(Lcom/andrew/apollo/service/ApolloService;)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 2447
    new-instance v0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/service/ApolloService$ServiceStub;-><init>(Lcom/andrew/apollo/service/ApolloService;)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mBinder:Landroid/os/IBinder;

    .line 425
    return-void

    .line 522
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/andrew/apollo/service/ApolloService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/andrew/apollo/service/ApolloService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->updateNotification()V

    return-void
.end method

.method static synthetic access$1200(Lcom/andrew/apollo/service/ApolloService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->setNextTrack()V

    return-void
.end method

.method static synthetic access$1300(Lcom/andrew/apollo/service/ApolloService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/andrew/apollo/service/ApolloService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/andrew/apollo/service/ApolloService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/andrew/apollo/service/ApolloService;)Lcom/andrew/apollo/app/widgets/AppWidget42;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider4x2:Lcom/andrew/apollo/app/widgets/AppWidget42;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/andrew/apollo/service/ApolloService;)Lcom/andrew/apollo/app/widgets/AppWidget41;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider4x1:Lcom/andrew/apollo/app/widgets/AppWidget41;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/andrew/apollo/service/ApolloService;)Lcom/andrew/apollo/app/widgets/AppWidget11;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider1x1:Lcom/andrew/apollo/app/widgets/AppWidget11;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/andrew/apollo/service/ApolloService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/service/ApolloService;)Lcom/andrew/apollo/service/ApolloService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/andrew/apollo/service/ApolloService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/andrew/apollo/service/ApolloService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/andrew/apollo/service/ApolloService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$2202(Lcom/andrew/apollo/service/ApolloService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/andrew/apollo/service/ApolloService;->mQueueIsSaveable:Z

    return p1
.end method

.method static synthetic access$2308(Lcom/andrew/apollo/service/ApolloService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$2402(Lcom/andrew/apollo/service/ApolloService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/andrew/apollo/service/ApolloService;->mCardId:I

    return p1
.end method

.method static synthetic access$2500(Lcom/andrew/apollo/service/ApolloService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->reloadQueue()V

    return-void
.end method

.method static synthetic access$300(Lcom/andrew/apollo/service/ApolloService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$400(Lcom/andrew/apollo/service/ApolloService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V

    return-void
.end method

.method static synthetic access$500(Lcom/andrew/apollo/service/ApolloService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mNextPlayPos:I

    return v0
.end method

.method static synthetic access$600(Lcom/andrew/apollo/service/ApolloService;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    return-object v0
.end method

.method static synthetic access$700(Lcom/andrew/apollo/service/ApolloService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$702(Lcom/andrew/apollo/service/ApolloService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$800(Lcom/andrew/apollo/service/ApolloService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/andrew/apollo/service/ApolloService;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/andrew/apollo/service/ApolloService;J)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/service/ApolloService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private addToPlayList([JI)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 981
    array-length v0, p1

    .line 982
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 983
    const/4 v3, 0x0

    iput v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 984
    const/4 p2, 0x0

    .line 986
    :cond_0
    iget v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/andrew/apollo/service/ApolloService;->ensurePlayListCapacity(I)V

    .line 987
    iget v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-le p2, v3, :cond_1

    .line 988
    iget p2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 992
    :cond_1
    iget v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 993
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 994
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 993
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 998
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 999
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    add-int v4, p2, v1

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    .line 998
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1001
    :cond_3
    iget v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 1002
    iget v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-nez v3, :cond_4

    .line 1003
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1004
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    .line 1005
    const-string v3, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v3}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1007
    :cond_4
    return-void
.end method

.method private doAutoShuffleUpdate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1641
    const/4 v3, 0x0

    .line 1644
    .local v3, notify:Z
    iget v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 1645
    iget v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    add-int/lit8 v5, v5, -0x9

    invoke-virtual {p0, v9, v5}, Lcom/andrew/apollo/service/ApolloService;->removeTracks(II)I

    .line 1646
    const/4 v3, 0x1

    .line 1649
    :cond_0
    iget v6, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    iget v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    if-gez v5, :cond_2

    const/4 v5, -0x1

    :goto_0
    sub-int v5, v6, v5

    rsub-int/lit8 v4, v5, 0x7

    .line 1650
    .local v4, to_add:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 1653
    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1654
    .local v2, lookback:I
    const/4 v1, -0x1

    .line 1656
    .local v1, idx:I
    :goto_2
    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mRand:Lcom/andrew/apollo/service/ApolloService$Shuffler;

    iget-object v6, p0, Lcom/andrew/apollo/service/ApolloService;->mAutoShuffleList:[J

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/service/ApolloService$Shuffler;->nextInt(I)I

    move-result v1

    .line 1657
    invoke-direct {p0, v1, v2}, Lcom/andrew/apollo/service/ApolloService;->wasRecentlyUsed(II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1662
    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1663
    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_1

    .line 1664
    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5, v9}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1666
    :cond_1
    iget v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/andrew/apollo/service/ApolloService;->ensurePlayListCapacity(I)V

    .line 1667
    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    iget v6, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    iget-object v7, p0, Lcom/andrew/apollo/service/ApolloService;->mAutoShuffleList:[J

    aget-wide v7, v7, v1

    aput-wide v7, v5, v6

    .line 1668
    const/4 v3, 0x1

    .line 1650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1649
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v2           #lookback:I
    .end local v4           #to_add:I
    :cond_2
    iget v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    goto :goto_0

    .line 1660
    .restart local v0       #i:I
    .restart local v1       #idx:I
    .restart local v2       #lookback:I
    .restart local v4       #to_add:I
    :cond_3
    div-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 1670
    .end local v1           #idx:I
    .end local v2           #lookback:I
    :cond_4
    if-eqz v3, :cond_5

    .line 1671
    const-string v5, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v5}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1673
    :cond_5
    return-void
.end method

.method private ensurePlayListCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 964
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    array-length v3, v3

    if-le p1, v3, :cond_3

    .line 968
    :cond_0
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [J

    .line 969
    .local v2, newlist:[J
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    array-length v1, v3

    .line 970
    .local v1, len:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 971
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 970
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 969
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    iget v1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    goto :goto_0

    .line 973
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_2
    iput-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    .line 977
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[J
    :cond_3
    return-void
.end method

.method private getBookmark()J
    .locals 2

    .prologue
    .line 1980
    monitor-enter p0

    .line 1981
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1982
    const-wide/16 v0, 0x0

    monitor-exit p0

    .line 1984
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1985
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCursorForId(J)Landroid/database/Cursor;
    .locals 8
    .parameter "lid"

    .prologue
    const/4 v4, 0x0

    .line 1106
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1108
    .local v7, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1111
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1112
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1114
    :cond_0
    return-object v6
.end method

.method private getNextPosition(Z)I
    .locals 12
    .parameter "force"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v0, 0x0

    const/4 v9, -0x1

    .line 1468
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    if-ne v8, v10, :cond_2

    .line 1469
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    if-gez v8, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return v0

    .line 1470
    :cond_1
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    goto :goto_0

    .line 1471
    :cond_2
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    if-ne v8, v10, :cond_c

    .line 1477
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    if-ltz v8, :cond_3

    .line 1478
    iget-object v8, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    iget v10, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1480
    :cond_3
    iget-object v8, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/16 v10, 0x64

    if-le v8, v10, :cond_4

    .line 1481
    iget-object v8, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1484
    :cond_4
    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 1485
    .local v4, numTracks:I
    new-array v7, v4, [I

    .line 1486
    .local v7, tracks:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 1487
    aput v1, v7, v1

    .line 1486
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1490
    :cond_5
    iget-object v8, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1491
    .local v3, numHistory:I
    move v5, v4

    .line 1492
    .local v5, numUnplayed:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_7

    .line 1493
    iget-object v8, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1494
    .local v2, idx:I
    if-ge v2, v4, :cond_6

    aget v8, v7, v2

    if-ltz v8, :cond_6

    .line 1495
    add-int/lit8 v5, v5, -0x1

    .line 1496
    aput v9, v7, v2

    .line 1492
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1503
    .end local v2           #idx:I
    :cond_7
    if-gtz v5, :cond_a

    .line 1505
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    if-eq v8, v11, :cond_8

    if-eqz p1, :cond_9

    .line 1507
    :cond_8
    move v5, v4

    .line 1508
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_a

    .line 1509
    aput v1, v7, v1

    .line 1508
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    move v0, v9

    .line 1513
    goto :goto_0

    .line 1516
    :cond_a
    iget-object v8, p0, Lcom/andrew/apollo/service/ApolloService;->mRand:Lcom/andrew/apollo/service/ApolloService$Shuffler;

    invoke-virtual {v8, v5}, Lcom/andrew/apollo/service/ApolloService$Shuffler;->nextInt(I)I

    move-result v6

    .line 1517
    .local v6, skip:I
    const/4 v0, -0x1

    .line 1519
    .local v0, cnt:I
    :cond_b
    add-int/lit8 v0, v0, 0x1

    aget v8, v7, v0

    if-ltz v8, :cond_b

    .line 1521
    add-int/lit8 v6, v6, -0x1

    .line 1522
    if-gez v6, :cond_b

    goto :goto_0

    .line 1527
    .end local v0           #cnt:I
    .end local v1           #i:I
    .end local v3           #numHistory:I
    .end local v4           #numTracks:I
    .end local v5           #numUnplayed:I
    .end local v6           #skip:I
    .end local v7           #tracks:[I
    :cond_c
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    if-ne v8, v11, :cond_d

    .line 1528
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->doAutoShuffleUpdate()V

    .line 1529
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    add-int/lit8 v0, v8, 0x1

    goto/16 :goto_0

    .line 1531
    :cond_d
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    iget v10, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    add-int/lit8 v10, v10, -0x1

    if-lt v8, v10, :cond_f

    .line 1533
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    if-nez v8, :cond_e

    if-nez p1, :cond_e

    move v0, v9

    .line 1535
    goto/16 :goto_0

    .line 1536
    :cond_e
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    if-eq v8, v11, :cond_0

    if-nez p1, :cond_0

    move v0, v9

    .line 1539
    goto/16 :goto_0

    .line 1541
    :cond_f
    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    add-int/lit8 v0, v8, 0x1

    goto/16 :goto_0
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1598
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1599
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->stopForeground(Z)V

    .line 1601
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->status:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->status:Landroid/app/Notification;

    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0e005a

    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020004

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1605
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1606
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->status:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1608
    :cond_0
    return-void

    .line 1602
    :cond_1
    const v0, 0x7f020003

    goto :goto_0
.end method

.method private isPodcast()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1971
    monitor-enter p0

    .line 1972
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 1973
    monitor-exit p0

    .line 1975
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1976
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private makeAutoShuffleList()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1717
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1720
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1723
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_2

    .line 1736
    :cond_0
    if-eqz v0, :cond_1

    .line 1737
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 1740
    :goto_0
    return v0

    .line 1726
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1727
    new-array v3, v2, [J

    move v1, v7

    .line 1728
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1729
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1730
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1728
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1732
    :cond_3
    iput-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mAutoShuffleList:[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1736
    if-eqz v0, :cond_4

    .line 1737
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v6

    goto :goto_0

    .line 1734
    :catch_0
    move-exception v0

    move-object v0, v8

    .line 1736
    :goto_2
    if-eqz v0, :cond_5

    .line 1737
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v7

    .line 1740
    goto :goto_0

    .line 1736
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_6

    .line 1737
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 1736
    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    .line 1734
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v5, 0x1

    .line 919
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAudioId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 921
    const-string v2, "artist"

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    const-string v2, "album"

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-string v2, "track"

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    const-string v2, "playing"

    iget-boolean v3, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 925
    const-string v2, "isfavorite"

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->isFavorite()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 926
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 928
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 929
    const-string v1, "com.andrew.apollo"

    const-string v3, "com.android.music"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    invoke-virtual {p0, v2}, Lcom/andrew/apollo/service/ApolloService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 932
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    iget-boolean v2, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    :cond_0
    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 951
    :cond_1
    :goto_0
    const-string v0, "com.andrew.apollo.queuechanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 952
    invoke-direct {p0, v5}, Lcom/andrew/apollo/service/ApolloService;->saveQueue(Z)V

    .line 957
    :goto_1
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider1x1:Lcom/andrew/apollo/app/widgets/AppWidget11;

    invoke-virtual {v0, p0, p1}, Lcom/andrew/apollo/app/widgets/AppWidget11;->notifyChange(Lcom/andrew/apollo/service/ApolloService;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider4x1:Lcom/andrew/apollo/app/widgets/AppWidget41;

    invoke-virtual {v0, p0, p1}, Lcom/andrew/apollo/app/widgets/AppWidget41;->notifyChange(Lcom/andrew/apollo/service/ApolloService;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider4x2:Lcom/andrew/apollo/app/widgets/AppWidget42;

    invoke-virtual {v0, p0, p1}, Lcom/andrew/apollo/app/widgets/AppWidget42;->notifyChange(Lcom/andrew/apollo/service/ApolloService;Ljava/lang/String;)V

    .line 961
    return-void

    .line 936
    :cond_2
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 937
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v5}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v1

    .line 938
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 939
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 940
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 941
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->duration()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 942
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p0}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 943
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "albumimage"

    invoke-static {v2, v3, p0}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androidquery/AQuery;->getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 945
    if-eqz v0, :cond_3

    .line 946
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 948
    :cond_3
    invoke-virtual {v1}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_0

    .line 954
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->saveQueue(Z)V

    goto :goto_1
.end method

.method private openCurrentAndNext()V
    .locals 4

    .prologue
    .line 1118
    monitor-enter p0

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    .line 1124
    :cond_0
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-nez v0, :cond_1

    .line 1125
    monitor-exit p0

    .line 1164
    :goto_0
    return-void

    .line 1127
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->stop(Z)V

    .line 1128
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    iget v1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/service/ApolloService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    .line 1129
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    .line 1130
    monitor-exit p0

    goto :goto_0

    .line 1163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1143
    :cond_2
    :try_start_1
    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1144
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->stop(Z)V

    .line 1145
    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1146
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    iget v1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/service/ApolloService;->getCursorForId(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    .line 1132
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->open(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1133
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/andrew/apollo/service/ApolloService;->mOpenFailedCounter:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 1134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->getNextPosition(Z)I

    move-result v0

    .line 1135
    if-gez v0, :cond_2

    .line 1136
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->gotoIdleState()V

    .line 1137
    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_4

    .line 1138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    .line 1139
    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1141
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1148
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mOpenFailedCounter:I

    .line 1149
    const-string v0, "MediaPlaybackService"

    const-string v1, "Failed to open file for playback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    monitor-exit p0

    goto/16 :goto_0

    .line 1155
    :cond_6
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1156
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->getBookmark()J

    move-result-wide v0

    .line 1159
    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/service/ApolloService;->seek(J)J

    .line 1161
    :cond_7
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->setNextTrack()V

    .line 1163
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private reloadQueue()V
    .locals 22

    .prologue
    .line 595
    const/4 v15, 0x0

    .line 597
    .local v15, q:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/andrew/apollo/service/ApolloService;->mCardId:I

    .line 598
    .local v11, id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/andrew/apollo/service/ApolloService;->mCardId:I

    xor-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 601
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/andrew/apollo/service/ApolloService;->mCardId:I

    if-ne v11, v2, :cond_1

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queue"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 606
    :cond_1
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 607
    .local v16, qlen:I
    :goto_0
    const/4 v2, 0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_8

    .line 609
    const/4 v13, 0x0

    .line 610
    .local v13, plen:I
    const/4 v12, 0x0

    .line 611
    .local v12, n:I
    const/16 v20, 0x0

    .line 612
    .local v20, shift:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_6

    .line 613
    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 614
    .local v8, c:C
    const/16 v2, 0x3b

    if-ne v8, v2, :cond_3

    .line 615
    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/andrew/apollo/service/ApolloService;->ensurePlayListCapacity(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    int-to-long v3, v12

    aput-wide v3, v2, v13

    .line 617
    add-int/lit8 v13, v13, 0x1

    .line 618
    const/4 v12, 0x0

    .line 619
    const/16 v20, 0x0

    .line 612
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 606
    .end local v8           #c:C
    .end local v10           #i:I
    .end local v12           #n:I
    .end local v13           #plen:I
    .end local v16           #qlen:I
    .end local v20           #shift:I
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 621
    .restart local v8       #c:C
    .restart local v10       #i:I
    .restart local v12       #n:I
    .restart local v13       #plen:I
    .restart local v16       #qlen:I
    .restart local v20       #shift:I
    :cond_3
    const/16 v2, 0x30

    if-lt v8, v2, :cond_4

    const/16 v2, 0x39

    if-gt v8, v2, :cond_4

    .line 622
    add-int/lit8 v2, v8, -0x30

    shl-int v2, v2, v20

    add-int/2addr v12, v2

    .line 630
    :goto_3
    add-int/lit8 v20, v20, 0x4

    goto :goto_2

    .line 623
    :cond_4
    const/16 v2, 0x61

    if-lt v8, v2, :cond_5

    const/16 v2, 0x66

    if-gt v8, v2, :cond_5

    .line 624
    add-int/lit8 v2, v8, 0xa

    add-int/lit8 v2, v2, -0x61

    shl-int v2, v2, v20

    add-int/2addr v12, v2

    goto :goto_3

    .line 627
    :cond_5
    const/4 v13, 0x0

    .line 633
    .end local v8           #c:C
    :cond_6
    move-object/from16 v0, p0

    iput v13, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "curpos"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 636
    .local v14, pos:I
    if-ltz v14, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-lt v14, v2, :cond_9

    .line 638
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 740
    .end local v10           #i:I
    .end local v12           #n:I
    .end local v13           #plen:I
    .end local v14           #pos:I
    .end local v20           #shift:I
    :cond_8
    :goto_4
    return-void

    .line 641
    .restart local v10       #i:I
    .restart local v12       #n:I
    .restart local v13       #plen:I
    .restart local v14       #pos:I
    .restart local v20       #shift:I
    :cond_9
    move-object/from16 v0, p0

    iput v14, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 648
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    aget-wide v5, v5, v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 651
    .local v9, crsr:Landroid/database/Cursor;
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_b

    .line 653
    :cond_a
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/service/ApolloService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/andrew/apollo/service/ApolloService;->mCursorCols:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 657
    :cond_b
    if-eqz v9, :cond_c

    .line 658
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 673
    :cond_c
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/andrew/apollo/service/ApolloService;->mOpenFailedCounter:I

    .line 674
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/andrew/apollo/service/ApolloService;->mQuietMode:Z

    .line 675
    invoke-direct/range {p0 .. p0}, Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V

    .line 676
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/andrew/apollo/service/ApolloService;->mQuietMode:Z

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v2}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_d

    .line 679
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    goto/16 :goto_4

    .line 683
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "seekpos"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 684
    .local v18, seekpos:J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-ltz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/service/ApolloService;->duration()J

    move-result-wide v2

    cmp-long v2, v18, v2

    if-gez v2, :cond_12

    move-wide/from16 v2, v18

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/andrew/apollo/service/ApolloService;->seek(J)J

    .line 685
    const-string v2, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restored queue, currently at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/service/ApolloService;->position()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/service/ApolloService;->duration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "repeatmode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 689
    .local v17, repmode:I
    const/4 v2, 0x2

    move/from16 v0, v17

    if-eq v0, v2, :cond_e

    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_e

    .line 690
    const/16 v17, 0x0

    .line 692
    :cond_e
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 695
    .local v21, shufmode:I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_f

    const/4 v2, 0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_f

    .line 696
    const/16 v21, 0x0

    .line 698
    :cond_f
    if-eqz v21, :cond_10

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "history"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 701
    if-eqz v15, :cond_13

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 702
    :goto_6
    const/4 v2, 0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_10

    .line 703
    const/4 v13, 0x0

    .line 704
    const/4 v12, 0x0

    .line 705
    const/16 v20, 0x0

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 707
    const/4 v10, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v10, v0, :cond_10

    .line 708
    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 709
    .restart local v8       #c:C
    const/16 v2, 0x3b

    if-ne v8, v2, :cond_15

    .line 710
    move-object/from16 v0, p0

    iget v2, v0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-lt v12, v2, :cond_14

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 733
    .end local v8           #c:C
    :cond_10
    :goto_8
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_11

    .line 734
    invoke-direct/range {p0 .. p0}, Lcom/andrew/apollo/service/ApolloService;->makeAutoShuffleList()Z

    move-result v2

    if-nez v2, :cond_11

    .line 735
    const/16 v21, 0x0

    .line 738
    :cond_11
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    goto/16 :goto_4

    .line 684
    .end local v17           #repmode:I
    .end local v21           #shufmode:I
    :cond_12
    const-wide/16 v2, 0x0

    goto/16 :goto_5

    .line 701
    .restart local v17       #repmode:I
    .restart local v21       #shufmode:I
    :cond_13
    const/16 v16, 0x0

    goto :goto_6

    .line 715
    .restart local v8       #c:C
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 716
    const/4 v12, 0x0

    .line 717
    const/16 v20, 0x0

    .line 707
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 719
    :cond_15
    const/16 v2, 0x30

    if-lt v8, v2, :cond_16

    const/16 v2, 0x39

    if-gt v8, v2, :cond_16

    .line 720
    add-int/lit8 v2, v8, -0x30

    shl-int v2, v2, v20

    add-int/2addr v12, v2

    .line 728
    :goto_a
    add-int/lit8 v20, v20, 0x4

    goto :goto_9

    .line 721
    :cond_16
    const/16 v2, 0x61

    if-lt v8, v2, :cond_17

    const/16 v2, 0x66

    if-gt v8, v2, :cond_17

    .line 722
    add-int/lit8 v2, v8, 0xa

    add-int/lit8 v2, v2, -0x61

    shl-int v2, v2, v20

    add-int/2addr v12, v2

    goto :goto_a

    .line 725
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    goto :goto_8
.end method

.method private removeTracksInternal(II)I
    .locals 8
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v4, 0x0

    .line 1761
    monitor-enter p0

    .line 1762
    if-ge p2, p1, :cond_0

    .line 1763
    :try_start_0
    monitor-exit p0

    .line 1803
    :goto_0
    return v4

    .line 1764
    :cond_0
    if-gez p1, :cond_1

    .line 1765
    const/4 p1, 0x0

    .line 1766
    :cond_1
    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-lt p2, v4, :cond_2

    .line 1767
    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    add-int/lit8 p2, v4, -0x1

    .line 1769
    :cond_2
    const/4 v0, 0x0

    .line 1770
    .local v0, gotonext:Z
    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    if-gt p1, v4, :cond_4

    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    if-gt v4, p2, :cond_4

    .line 1771
    iput p1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1772
    const/4 v0, 0x1

    .line 1776
    :cond_3
    :goto_1
    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    sub-int/2addr v4, p2

    add-int/lit8 v2, v4, -0x1

    .line 1777
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 1778
    iget-object v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    add-int v5, p1, v1

    iget-object v6, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 1777
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1773
    .end local v1           #i:I
    .end local v2           #num:I
    :cond_4
    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    if-le v4, p2, :cond_3

    .line 1774
    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    goto :goto_1

    .line 1804
    .end local v0           #gotonext:Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1780
    .restart local v0       #gotonext:Z
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_5
    :try_start_1
    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 1782
    if-eqz v0, :cond_7

    .line 1783
    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-nez v4, :cond_8

    .line 1784
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/andrew/apollo/service/ApolloService;->stop(Z)V

    .line 1785
    const/4 v4, -0x1

    iput v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1786
    iget-object v4, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_6

    .line 1787
    iget-object v4, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1788
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    .line 1801
    :cond_6
    :goto_3
    const-string v4, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v4}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1803
    :cond_7
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1791
    :cond_8
    iget v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    iget v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-lt v4, v5, :cond_9

    .line 1792
    const/4 v4, 0x0

    iput v4, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1794
    :cond_9
    iget-boolean v3, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    .line 1795
    .local v3, wasPlaying:Z
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/andrew/apollo/service/ApolloService;->stop(Z)V

    .line 1796
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V

    .line 1797
    if-eqz v3, :cond_6

    .line 1798
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private saveBookmarkIfNeeded()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    .line 1612
    :try_start_0
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1613
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->position()J

    move-result-wide v4

    .line 1614
    .local v4, pos:J
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->getBookmark()J

    move-result-wide v0

    .line 1615
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->duration()J

    move-result-wide v2

    .line 1616
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_0

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_1

    :cond_0
    cmp-long v8, v4, v0

    if-lez v8, :cond_2

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_2

    .line 1636
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_1
    :goto_0
    return-void

    .line 1622
    .restart local v0       #bookmark:J
    .restart local v2       #duration:J
    .restart local v4       #pos:J
    :cond_2
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_4

    .line 1624
    :cond_3
    const-wide/16 v4, 0x0

    .line 1628
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1629
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1630
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1632
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1634
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private saveQueue(Z)V
    .locals 11
    .parameter "full"

    .prologue
    const-wide/16 v9, 0x0

    .line 527
    iget-boolean v7, p0, Lcom/andrew/apollo/service/ApolloService;->mQueueIsSaveable:Z

    if-nez v7, :cond_0

    .line 592
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v7, p0, Lcom/andrew/apollo/service/ApolloService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 533
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_8

    .line 534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .local v6, q:Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 543
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 544
    iget-object v7, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    aget-wide v4, v7, v2

    .line 545
    .local v4, n:J
    cmp-long v7, v4, v9

    if-gez v7, :cond_1

    .line 543
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 547
    :cond_1
    cmp-long v7, v4, v9

    if-nez v7, :cond_2

    .line 548
    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 550
    :cond_2
    :goto_3
    cmp-long v7, v4, v9

    if-eqz v7, :cond_3

    .line 551
    const-wide/16 v7, 0xf

    and-long/2addr v7, v4

    long-to-int v0, v7

    .line 552
    .local v0, digit:I
    const/4 v7, 0x4

    ushr-long/2addr v4, v7

    .line 553
    iget-object v7, p0, Lcom/andrew/apollo/service/ApolloService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 555
    .end local v0           #digit:I
    :cond_3
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 560
    .end local v4           #n:J
    :cond_4
    const-string v7, "queue"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 561
    const-string v7, "cardid"

    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mCardId:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 562
    iget v7, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    if-eqz v7, :cond_8

    .line 564
    iget-object v7, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    .line 565
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 566
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_7

    .line 567
    iget-object v7, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 568
    .local v4, n:I
    if-nez v4, :cond_5

    .line 569
    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 571
    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    .line 572
    and-int/lit8 v0, v4, 0xf

    .line 573
    .restart local v0       #digit:I
    ushr-int/lit8 v4, v4, 0x4

    .line 574
    iget-object v7, p0, Lcom/andrew/apollo/service/ApolloService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 576
    .end local v0           #digit:I
    :cond_6
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 579
    .end local v4           #n:I
    :cond_7
    const-string v7, "history"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 582
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v6           #q:Ljava/lang/StringBuilder;
    :cond_8
    const-string v7, "curpos"

    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 583
    iget-object v7, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v7}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 584
    const-string v7, "seekpos"

    iget-object v8, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v8}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->position()J

    move-result-wide v8

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 586
    :cond_9
    const-string v7, "repeatmode"

    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 587
    const-string v7, "shufflemode"

    iget v8, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-static {v1}, Lcom/andrew/apollo/utils/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0
.end method

.method private setNextTrack()V
    .locals 5

    .prologue
    .line 1167
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/andrew/apollo/service/ApolloService;->getNextPosition(Z)I

    move-result v2

    iput v2, p0, Lcom/andrew/apollo/service/ApolloService;->mNextPlayPos:I

    .line 1168
    iget v2, p0, Lcom/andrew/apollo/service/ApolloService;->mNextPlayPos:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    if-eqz v2, :cond_0

    .line 1169
    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    iget v3, p0, Lcom/andrew/apollo/service/ApolloService;->mNextPlayPos:I

    aget-wide v0, v2, v3

    .line 1170
    .local v0, id:J
    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 1172
    .end local v0           #id:J
    :cond_0
    return-void
.end method

.method private stop(Z)V
    .locals 3
    .parameter "remove_status_icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1363
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->stop()V

    .line 1366
    :cond_0
    iput-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mFileToPlay:Ljava/lang/String;

    .line 1367
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1369
    iput-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    .line 1371
    :cond_1
    if-eqz p1, :cond_3

    .line 1372
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->gotoIdleState()V

    .line 1376
    :goto_0
    if-eqz p1, :cond_2

    .line 1377
    iput-boolean v1, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    .line 1379
    :cond_2
    return-void

    .line 1374
    :cond_3
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->stopForeground(Z)V

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 9

    .prologue
    const v8, 0x7f0e0056

    const/high16 v7, 0x800

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1313
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p0}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 1314
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "albumimage"

    invoke-static {v1, v2, p0}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1316
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030017

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1317
    if-eqz v0, :cond_0

    .line 1318
    const v2, 0x7f0e0057

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1319
    invoke-virtual {v1, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1320
    invoke-virtual {v1, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1325
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1328
    const-string v3, "buttonId"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1329
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1330
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v3, 0x55

    invoke-direct {v0, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1332
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1333
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1335
    const v3, 0x7f0e005a

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1336
    const-string v0, "buttonId"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1337
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v3, 0x57

    invoke-direct {v0, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1338
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1339
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1341
    const v3, 0x7f0e005b

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1342
    const-string v0, "buttonId"

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1343
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v3, 0x56

    invoke-direct {v0, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1344
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1345
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1347
    const v2, 0x7f0e005c

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1348
    const v0, 0x7f0e005a

    const v2, 0x7f020003

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1350
    const v0, 0x7f0e0058

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1351
    const v0, 0x7f0e0059

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1353
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->status:Landroid/app/Notification;

    .line 1354
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->status:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1355
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->status:Landroid/app/Notification;

    iput v6, v0, Landroid/app/Notification;->flags:I

    .line 1356
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->status:Landroid/app/Notification;

    const v1, 0x7f020023

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 1357
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->status:Landroid/app/Notification;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.PLAYBACK_VIEWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1360
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->status:Landroid/app/Notification;

    invoke-virtual {p0, v5, v0}, Lcom/andrew/apollo/service/ApolloService;->startForeground(ILandroid/app/Notification;)V

    .line 1361
    return-void

    .line 1322
    :cond_0
    const v0, 0x7f0e0057

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1323
    const/16 v0, 0x8

    invoke-virtual {v1, v8, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0
.end method

.method private wasRecentlyUsed(II)Z
    .locals 9
    .parameter "idx"
    .parameter "lookbacksize"

    .prologue
    const/4 v6, 0x0

    .line 1680
    if-nez p2, :cond_0

    move v5, v6

    .line 1695
    :goto_0
    return v5

    .line 1684
    :cond_0
    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1685
    .local v2, histsize:I
    if-ge v2, p2, :cond_1

    .line 1686
    move p2, v2

    .line 1688
    :cond_1
    add-int/lit8 v4, v2, -0x1

    .line 1689
    .local v4, maxidx:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p2, :cond_3

    .line 1690
    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    sub-int v7, v4, v3

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v0, v5

    .line 1691
    .local v0, entry:J
    int-to-long v7, p1

    cmp-long v5, v0, v7

    if-nez v5, :cond_2

    .line 1692
    const/4 v5, 0x1

    goto :goto_0

    .line 1689
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #entry:J
    :cond_3
    move v5, v6

    .line 1695
    goto :goto_0
.end method


# virtual methods
.method public addToFavorites()V
    .locals 4

    .prologue
    .line 2075
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAudioId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2076
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAudioId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/service/ApolloService;->addToFavorites(J)V

    .line 2078
    :cond_0
    return-void
.end method

.method public addToFavorites(J)V
    .locals 1
    .parameter

    .prologue
    .line 2081
    invoke-static {p0, p1, p2}, Lcom/andrew/apollo/utils/MusicUtils;->addToFavorites(Landroid/content/Context;J)V

    .line 2082
    const-string v0, "com.andrew.apollo.favoritechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 2083
    return-void
.end method

.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1
    .parameter "storagePath"

    .prologue
    .line 865
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->stop(Z)V

    .line 866
    const-string v0, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 867
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public cycleRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1573
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    if-nez v0, :cond_1

    .line 1574
    invoke-virtual {p0, v2}, Lcom/andrew/apollo/service/ApolloService;->setRepeatMode(I)V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    if-ne v0, v2, :cond_2

    .line 1576
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->setRepeatMode(I)V

    .line 1577
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    if-eqz v0, :cond_0

    .line 1578
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->setShuffleMode(I)V

    goto :goto_0

    .line 1581
    :cond_2
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->setRepeatMode(I)V

    goto :goto_0
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 1996
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public enqueue([JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1018
    monitor-enter p0

    .line 1019
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-ge v0, v1, :cond_2

    .line 1020
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/andrew/apollo/service/ApolloService;->addToPlayList([JI)V

    .line 1021
    const-string v0, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1035
    :cond_0
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 1036
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1037
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V

    .line 1038
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    .line 1039
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1041
    :cond_1
    monitor-exit p0

    .line 1042
    :goto_0
    return-void

    .line 1025
    :cond_2
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/andrew/apollo/service/ApolloService;->addToPlayList([JI)V

    .line 1026
    const-string v0, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1027
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1028
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1029
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V

    .line 1030
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    .line 1031
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1032
    monitor-exit p0

    goto :goto_0

    .line 1041
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumId()J
    .locals 3

    .prologue
    .line 1953
    monitor-enter p0

    .line 1954
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1955
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 1957
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1958
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1944
    monitor-enter p0

    .line 1945
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1946
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 1948
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1949
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()J
    .locals 3

    .prologue
    .line 1935
    monitor-enter p0

    .line 1936
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1937
    const-wide/16 v0, -0x1

    monitor-exit p0

    .line 1939
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1940
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1926
    monitor-enter p0

    .line 1927
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1928
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 1930
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1931
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 1888
    monitor-enter p0

    .line 1889
    :try_start_0
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    iget v1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    aget-wide v0, v0, v1

    monitor-exit p0

    .line 1893
    :goto_0
    return-wide v0

    .line 1892
    :cond_0
    monitor-exit p0

    .line 1893
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1892
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2040
    monitor-enter p0

    .line 2041
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2042
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIdFromPath(Ljava/lang/String;)J
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    .line 1249
    .line 1250
    :try_start_0
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1253
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1254
    const-string v3, "_data=?"

    .line 1255
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 1258
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1263
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 1270
    :cond_1
    if-eqz v2, :cond_2

    .line 1271
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    move-wide v0, v6

    .line 1277
    :cond_3
    :goto_1
    return-wide v0

    .line 1266
    :cond_4
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1267
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    .line 1270
    if-eqz v2, :cond_3

    .line 1271
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1272
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1269
    :catchall_0
    move-exception v0

    .line 1270
    if-eqz v2, :cond_5

    .line 1271
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1273
    :cond_5
    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1275
    :catch_1
    move-exception v0

    move-wide v0, v6

    .line 1277
    goto :goto_1

    .line 1272
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 1872
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaMountedCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getQueue()[J
    .locals 5

    .prologue
    .line 1095
    monitor-enter p0

    .line 1096
    :try_start_0
    iget v1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 1097
    .local v1, len:I
    new-array v2, v1, [J

    .line 1098
    .local v2, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1099
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1101
    :cond_0
    monitor-exit p0

    return-object v2

    .line 1102
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 1902
    monitor-enter p0

    .line 1903
    :try_start_0
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 1904
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 1868
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 1855
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1962
    monitor-enter p0

    .line 1963
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1964
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 1966
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1967
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gotoNext(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1547
    monitor-enter p0

    .line 1548
    :try_start_0
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 1549
    const-string v0, "MediaPlaybackService"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    monitor-exit p0

    .line 1570
    :goto_0
    return-void

    .line 1553
    :cond_0
    invoke-direct {p0, p1}, Lcom/andrew/apollo/service/ApolloService;->getNextPosition(Z)I

    move-result v0

    .line 1554
    if-gez v0, :cond_2

    .line 1555
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->gotoIdleState()V

    .line 1556
    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_1

    .line 1557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    .line 1558
    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1560
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1569
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1562
    :cond_2
    :try_start_1
    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1563
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->saveBookmarkIfNeeded()V

    .line 1564
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->stop(Z)V

    .line 1565
    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1566
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V

    .line 1567
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    .line 1568
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1569
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 4

    .prologue
    .line 2054
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAudioId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2055
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAudioId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/service/ApolloService;->isFavorite(J)Z

    move-result v0

    .line 2056
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite(J)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 2060
    invoke-static {p0, p1, p2}, Lcom/andrew/apollo/utils/MusicUtils;->isFavorite(Landroid/content/Context;J)Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1411
    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mServiceInUse:Z

    .line 746
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 429
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 431
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAudioManager:Landroid/media/AudioManager;

    .line 432
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 435
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x800

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 439
    new-instance v1, Landroid/media/RemoteControlClient;

    invoke-direct {v1, v0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 440
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 442
    const/16 v0, 0xbd

    .line 447
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 449
    const-string v0, "apollopreferences"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/service/ApolloService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPreferences:Landroid/content/SharedPreferences;

    .line 451
    invoke-static {p0}, Lcom/andrew/apollo/utils/MusicUtils;->getCardId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCardId:I

    .line 453
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->registerExternalStorageListener()V

    .line 457
    new-instance v0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;-><init>(Lcom/andrew/apollo/service/ApolloService;)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    .line 458
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 460
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->reloadQueue()V

    .line 461
    const-string v0, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 462
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 464
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 465
    const-string v1, "com.andrew.apollo.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v1, "com.andrew.apollo.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v1, "com.andrew.apollo.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string v1, "com.andrew.apollo.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    const-string v1, "com.andrew.apollo.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    const-string v1, "com.andrew.apollo.musicservicecommand.cyclerepeat"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string v1, "com.andrew.apollo.musicservicecommand.toggleshuffle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/andrew/apollo/service/ApolloService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 474
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 475
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 476
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 481
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 483
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 489
    iget-boolean v1, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    if-eqz v1, :cond_0

    .line 490
    const-string v1, "MediaPlaybackService"

    const-string v2, "Service being destroyed while still playing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->sendBroadcast(Landroid/content/Intent;)V

    .line 498
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->release()V

    .line 499
    iput-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    .line 501
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 502
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 505
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 506
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 508
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 510
    iput-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 514
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 515
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 516
    iput-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 518
    :cond_2
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 519
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 520
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mServiceInUse:Z

    .line 753
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 757
    iput p3, p0, Lcom/andrew/apollo/service/ApolloService;->mServiceStartId:I

    .line 758
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 760
    if-eqz p1, :cond_1

    .line 761
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, cmd:Ljava/lang/String;
    const-string v3, "next"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.andrew.apollo.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 765
    :cond_0
    invoke-virtual {p0, v7}, Lcom/andrew/apollo/service/ApolloService;->gotoNext(Z)V

    .line 807
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #cmd:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 808
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 809
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 810
    return v7

    .line 766
    .end local v2           #msg:Landroid/os/Message;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #cmd:Ljava/lang/String;
    :cond_2
    const-string v3, "previous"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.andrew.apollo.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 767
    :cond_3
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->position()J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    .line 768
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->prev()V

    goto :goto_0

    .line 770
    :cond_4
    invoke-virtual {p0, v9, v10}, Lcom/andrew/apollo/service/ApolloService;->seek(J)J

    .line 771
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    goto :goto_0

    .line 773
    :cond_5
    const-string v3, "togglepause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "com.andrew.apollo.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 774
    :cond_6
    iget-boolean v3, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    if-eqz v3, :cond_7

    .line 775
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->pause()V

    .line 776
    iput-boolean v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 778
    :cond_7
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    goto :goto_0

    .line 780
    :cond_8
    const-string v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.andrew.apollo.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 781
    :cond_9
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->pause()V

    .line 782
    iput-boolean v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z

    goto :goto_0

    .line 783
    :cond_a
    const-string v3, "play"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 784
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    goto :goto_0

    .line 785
    :cond_b
    const-string v3, "stop"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 786
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->pause()V

    .line 787
    const-string v3, "buttonId"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 788
    invoke-virtual {p0, v7}, Lcom/andrew/apollo/service/ApolloService;->stopForeground(Z)V

    .line 790
    :cond_c
    iput-boolean v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z

    .line 791
    invoke-virtual {p0, v9, v10}, Lcom/andrew/apollo/service/ApolloService;->seek(J)J

    goto/16 :goto_0

    .line 792
    :cond_d
    const-string v3, "togglefavorite"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 793
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->isFavorite()Z

    move-result v3

    if-nez v3, :cond_e

    .line 794
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->addToFavorites()V

    goto/16 :goto_0

    .line 796
    :cond_e
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->removeFromFavorites()V

    goto/16 :goto_0

    .line 798
    :cond_f
    const-string v3, "cyclerepeat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "com.andrew.apollo.musicservicecommand.cyclerepeat"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 799
    :cond_10
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->cycleRepeat()V

    goto/16 :goto_0

    .line 800
    :cond_11
    const-string v3, "toggleshuffle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "com.andrew.apollo.musicservicecommand.toggleshuffle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 801
    :cond_12
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->toggleShuffle()V

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 815
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/andrew/apollo/service/ApolloService;->mServiceInUse:Z

    .line 818
    invoke-direct {p0, v4}, Lcom/andrew/apollo/service/ApolloService;->saveQueue(Z)V

    .line 820
    iget-boolean v1, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z

    if-eqz v1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v4

    .line 831
    :cond_1
    iget v1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 832
    :cond_2
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 833
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 838
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/andrew/apollo/service/ApolloService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->stopSelf(I)V

    goto :goto_0
.end method

.method public open([JI)V
    .locals 9
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1052
    monitor-enter p0

    .line 1053
    :try_start_0
    iget v5, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1054
    const/4 v5, 0x1

    iput v5, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAudioId()J

    move-result-wide v3

    .line 1057
    .local v3, oldId:J
    array-length v1, p1

    .line 1058
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 1059
    .local v2, newlist:Z
    iget v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-ne v5, v1, :cond_1

    .line 1061
    const/4 v2, 0x0

    .line 1062
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1063
    aget-wide v5, p1, v0

    iget-object v7, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    aget-wide v7, v7, v0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 1064
    const/4 v2, 0x1

    .line 1069
    .end local v0           #i:I
    :cond_1
    if-eqz v2, :cond_2

    .line 1070
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/andrew/apollo/service/ApolloService;->addToPlayList([JI)V

    .line 1071
    const-string v5, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v5}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1073
    :cond_2
    if-ltz p2, :cond_5

    .line 1074
    iput p2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1078
    :goto_1
    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 1080
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->saveBookmarkIfNeeded()V

    .line 1081
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V

    .line 1082
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAudioId()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    .line 1083
    const-string v5, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v5}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1085
    :cond_3
    monitor-exit p0

    .line 1086
    return-void

    .line 1062
    .restart local v0       #i:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1076
    .end local v0           #i:I
    :cond_5
    iget-object v5, p0, Lcom/andrew/apollo/service/ApolloService;->mRand:Lcom/andrew/apollo/service/ApolloService$Shuffler;

    iget v6, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/service/ApolloService$Shuffler;->nextInt(I)I

    move-result v5

    iput v5, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    goto :goto_1

    .line 1085
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public open(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1180
    monitor-enter p0

    .line 1181
    if-nez p1, :cond_0

    .line 1182
    :try_start_0
    monitor-exit p0

    move v0, v6

    .line 1234
    :goto_0
    return v0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 1188
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1192
    const-string v1, "content://media/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1193
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v3, v4

    .line 1211
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    .line 1212
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1214
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1227
    :cond_1
    :goto_2
    :try_start_2
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService;->mFileToPlay:Ljava/lang/String;

    .line 1228
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1229
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1230
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mOpenFailedCounter:I

    .line 1231
    monitor-exit p0

    move v0, v7

    goto :goto_0

    .line 1200
    :cond_2
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1201
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1203
    :goto_3
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1204
    const-string v3, "_data=?"

    .line 1205
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    goto :goto_1

    .line 1235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1217
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1218
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->ensurePlayListCapacity(I)V

    .line 1219
    const/4 v0, 0x1

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 1220
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1221
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1224
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1233
    :cond_4
    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->stop(Z)V

    .line 1234
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v6

    goto/16 :goto_0

    :cond_5
    move-object v2, p1

    goto :goto_3
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1392
    monitor-enter p0

    .line 1393
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1394
    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->pause()V

    .line 1396
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->gotoIdleState()V

    .line 1397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    .line 1398
    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1399
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->saveBookmarkIfNeeded()V

    .line 1401
    :cond_0
    monitor-exit p0

    .line 1402
    return-void

    .line 1401
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1284
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1286
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/andrew/apollo/service/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1289
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->start()V

    .line 1296
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1297
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1299
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->updateNotification()V

    .line 1300
    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_0

    .line 1301
    iput-boolean v4, p0, Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z

    .line 1302
    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 1308
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->setShuffleMode(I)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->position()J

    move-result-wide v0

    .line 2006
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 4

    .prologue
    .line 1435
    monitor-enter p0

    .line 1436
    :try_start_0
    iget v2, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1438
    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1439
    .local v0, histsize:I
    if-nez v0, :cond_0

    .line 1441
    monitor-exit p0

    .line 1459
    .end local v0           #histsize:I
    :goto_0
    return-void

    .line 1443
    .restart local v0       #histsize:I
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mHistory:Ljava/util/Vector;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1444
    .local v1, pos:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1452
    .end local v0           #histsize:I
    .end local v1           #pos:Ljava/lang/Integer;
    :goto_1
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->saveBookmarkIfNeeded()V

    .line 1453
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/andrew/apollo/service/ApolloService;->stop(Z)V

    .line 1454
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V

    .line 1455
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    .line 1457
    const-string v2, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v2}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1458
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1446
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    if-lez v2, :cond_2

    .line 1447
    iget v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    goto :goto_1

    .line 1449
    :cond_2
    iget v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 877
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 878
    new-instance v1, Lcom/andrew/apollo/service/ApolloService$5;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/service/ApolloService$5;-><init>(Lcom/andrew/apollo/service/ApolloService;)V

    iput-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 896
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 897
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 898
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 899
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 900
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/andrew/apollo/service/ApolloService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 902
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public removeFromFavorites()V
    .locals 4

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAudioId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2065
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->getAudioId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/service/ApolloService;->removeFromFavorites(J)V

    .line 2067
    :cond_0
    return-void
.end method

.method public removeFromFavorites(J)V
    .locals 1
    .parameter

    .prologue
    .line 2070
    invoke-static {p0, p1, p2}, Lcom/andrew/apollo/utils/MusicUtils;->removeFromFavorites(Landroid/content/Context;J)V

    .line 2071
    const-string v0, "com.andrew.apollo.favoritechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 2072
    return-void
.end method

.method public removeTrack(J)I
    .locals 4
    .parameter "id"

    .prologue
    .line 1814
    const/4 v1, 0x0

    .line 1815
    .local v1, numremoved:I
    monitor-enter p0

    .line 1816
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 1817
    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1818
    invoke-direct {p0, v0, v0}, Lcom/andrew/apollo/service/ApolloService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1819
    add-int/lit8 v0, v0, -0x1

    .line 1816
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1822
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1823
    if-lez v1, :cond_2

    .line 1824
    const-string v2, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v2}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1826
    :cond_2
    return v1

    .line 1822
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTracks(II)I
    .locals 2
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1753
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/service/ApolloService;->removeTracksInternal(II)I

    move-result v0

    .line 1754
    .local v0, numremoved:I
    if-lez v0, :cond_0

    .line 1755
    const-string v1, "com.andrew.apollo.queuechanged"

    invoke-direct {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1757
    :cond_0
    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2016
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2017
    const-wide/16 p1, 0x0

    .line 2018
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 2019
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 2020
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 2022
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 2031
    monitor-enter p0

    .line 2032
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->setAudioSessionId(I)V

    .line 2033
    monitor-exit p0

    .line 2034
    return-void

    .line 2033
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1913
    monitor-enter p0

    .line 1914
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->stop(Z)V

    .line 1915
    iput p1, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1916
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V

    .line 1917
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    .line 1918
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1919
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1920
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->doAutoShuffleUpdate()V

    .line 1922
    :cond_0
    monitor-exit p0

    .line 1923
    return-void

    .line 1922
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 1859
    monitor-enter p0

    .line 1860
    :try_start_0
    iput p1, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    .line 1861
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->setNextTrack()V

    .line 1862
    const-string v0, "com.andrew.apollo.repeatmodechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->saveQueue(Z)V

    .line 1864
    monitor-exit p0

    .line 1865
    return-void

    .line 1864
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 1830
    monitor-enter p0

    .line 1831
    :try_start_0
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 1832
    monitor-exit p0

    .line 1852
    :goto_0
    return-void

    .line 1834
    :cond_0
    iput p1, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    .line 1835
    const-string v0, "com.andrew.apollo.shufflemodechanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1836
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1837
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->makeAutoShuffleList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1838
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayListLen:I

    .line 1839
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->doAutoShuffleUpdate()V

    .line 1840
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I

    .line 1841
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V

    .line 1842
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    .line 1843
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V

    .line 1844
    monitor-exit p0

    goto :goto_0

    .line 1851
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1847
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    .line 1850
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->saveQueue(Z)V

    .line 1851
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->stop(Z)V

    .line 1386
    return-void
.end method

.method public toggleFavorite()V
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->isFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2047
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->addToFavorites()V

    .line 2051
    :goto_0
    return-void

    .line 2049
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService;->removeFromFavorites()V

    goto :goto_0
.end method

.method public toggleShuffle()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1586
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    if-nez v0, :cond_1

    .line 1587
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/service/ApolloService;->setShuffleMode(I)V

    .line 1588
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I

    if-ne v0, v1, :cond_0

    .line 1589
    invoke-virtual {p0, v2}, Lcom/andrew/apollo/service/ApolloService;->setRepeatMode(I)V

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/andrew/apollo/service/ApolloService;->mShuffleMode:I

    if-ne v0, v2, :cond_0

    .line 1592
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService;->setShuffleMode(I)V

    goto :goto_0
.end method
