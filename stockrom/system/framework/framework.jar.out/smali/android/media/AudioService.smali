.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$RcDisplayDeathHandler;,
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$RemotePlaybackState;,
        Landroid/media/AudioService$RcClientDeathHandler;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;
    }
.end annotation


# static fields
.field private static final ACTION_FMRx_PLUG:Ljava/lang/String; = "ti.android.intent.action.FMRx_PLUG"

.field private static final ACTION_FMTx_PLUG:Ljava/lang/String; = "ti.android.intent.action.FMTx_PLUG"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final HEADSET_VOLUME_RESTORE_CAP:I = 0xa

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x7

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0xb

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x8

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x5

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xf

.field private static final MSG_PERSIST_MEDIABUTTONRECEIVER:I = 0xa

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x6

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x12

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x13

.field private static final MSG_RCDISPLAY_CLEAR:I = 0xc

.field private static final MSG_RCDISPLAY_UPDATE:I = 0xd

.field private static final MSG_REEVALUATE_REMOTE:I = 0x11

.field private static final MSG_REPORT_NEW_ROUTES:I = 0x10

.field private static final MSG_SET_A2DP_CONNECTION_STATE:I = 0x15

.field private static final MSG_SET_ALL_VOLUMES:I = 0xe

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_USE:I = 0x9

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x14

.field private static final NOTIFICATION_VOLUME_DELAY_MS:I = 0x1388

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_CURRENT:I = 0x1

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final PERSIST_LAST_AUDIBLE:I = 0x2

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static SOUND_EFFECT_VOLUME_DB:I = 0x0

.field public static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;

.field private static sLastRccId:I


# instance fields
.field private final MAX_STREAM_VOLUME:[I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_NAMES:[Ljava/lang/String;

.field private final STREAM_VOLUME_ALIAS:[I

.field private final STREAM_VOLUME_ALIAS_NON_VOICE:[I

.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompleted:Z

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private mDeviceOrientation:I

.field private mDockAddress:Ljava/lang/String;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mHandler:Landroid/os/Handler;

.field private mHasRemotePlayback:Z

.field private final mHasVibrator:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLinkNotificationWithVolume:Z

.field private mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMasterVolumeRamp:[I

.field private mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private mMediaServerOk:Z

.field private mMode:I

.field private mMuteAffectedStreams:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrevVolDirection:I

.field private final mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private mUiContext:Landroid/content/Context;

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private mVoiceCapable:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private mVolumeControlStream:I

.field private mVolumePanel:Landroid/view/VolumePanel;

.field private noDelayInATwoDP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Effect_Tick.ogg"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "KeypressStandard.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KeypressSpacebar.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeypressDelete.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeypressReturn.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 3753
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 3755
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    .line 4383
    sput v3, Landroid/media/AudioService;->sLastRccId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v11, 0x0

    .line 440
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 175
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->noDelayInATwoDP:Z

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 210
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v11

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v12

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    aput-object v3, v0, v1

    iput-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 223
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 243
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 255
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    .line 270
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "STREAM_VOICE_CALL"

    aput-object v1, v0, v11

    const-string v1, "STREAM_SYSTEM"

    aput-object v1, v0, v12

    const-string v1, "STREAM_RING"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v3, "STREAM_MUSIC"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "STREAM_ALARM"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "STREAM_NOTIFICATION"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "STREAM_BLUETOOTH_SCO"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "STREAM_SYSTEM_ENFORCED"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "STREAM_DTMF"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "STREAM_TTS"

    aput-object v3, v0, v1

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    .line 289
    new-instance v0, Landroid/media/AudioService$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 340
    new-instance v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    iput-boolean v11, p0, Landroid/media/AudioService;->mIsRinging:Z

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 398
    iput-object v5, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 405
    iput v11, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 410
    iput v2, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 411
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 415
    iput-object v5, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 419
    iput v11, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 423
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 426
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 427
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 2060
    new-instance v0, Landroid/media/AudioService$3;

    invoke-direct {v0, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3376
    const/16 v0, 0x38c

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 3757
    new-instance v0, Landroid/media/AudioService$5;

    invoke-direct {v0, p0}, Landroid/media/AudioService$5;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3833
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 4155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mVoiceEventLock:Ljava/lang/Object;

    .line 4316
    new-instance v0, Landroid/media/AudioService$6;

    invoke-direct {v0, p0}, Landroid/media/AudioService$6;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 4331
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    .line 4337
    iput-object v5, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 4351
    iput v11, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 4496
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 4502
    iput-object v5, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 5024
    iput v2, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5025
    iput v2, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 441
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 443
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mHandler:Landroid/os/Handler;

    .line 444
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    .line 447
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 448
    .local v8, pm:Landroid/os/PowerManager;
    const-string v0, "handleMediaEvent"

    invoke-virtual {v8, v12, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 450
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    .line 451
    .local v10, vibrator:Landroid/os/Vibrator;
    if-nez v10, :cond_3

    move v0, v11

    :goto_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 454
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string/jumbo v1, "ro.config.vc_call_vol_steps"

    iget-object v3, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v11

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v11

    .line 458
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/AudioService;->SOUND_EFFECT_VOLUME_DB:I

    .line 461
    iput v11, p0, Landroid/media/AudioService;->mMode:I

    .line 462
    iput v11, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 463
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 464
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 465
    new-instance v0, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 466
    invoke-direct {p0, v11}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 467
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 469
    iput-boolean v12, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 473
    iput v11, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 474
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    invoke-direct {p0, v0, v11}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 476
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 479
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 481
    .local v6, intentFilter:Landroid/content/IntentFilter;
    iget-boolean v0, p0, Landroid/media/AudioService;->noDelayInATwoDP:Z

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    :cond_0
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v0, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const-string v0, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    sget-boolean v0, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v0, :cond_1

    .line 489
    const-string/jumbo v0, "ti.android.intent.action.FMRx_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string/jumbo v0, "ti.android.intent.action.FMTx_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    const-string v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 505
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 508
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 509
    .local v7, pkgFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string/jumbo v0, "package"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 513
    new-instance v0, Landroid/media/AudioService$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    invoke-static {p1, v0}, Lcom/android/internal/app/ThemeUtils;->registerThemeChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 521
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 523
    .local v9, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v0, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v9, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 525
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    .line 527
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    .line 532
    new-instance v0, Landroid/media/AudioService$RemotePlaybackState;

    iget-object v1, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v3, 0x3

    aget v3, v1, v3

    iget-object v1, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v4, 0x3

    aget v4, v1, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$RemotePlaybackState;-><init>(Landroid/media/AudioService;IIILandroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    .line 534
    iput-boolean v11, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    .line 535
    iput-boolean v11, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 536
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    .line 537
    return-void

    .line 451
    .end local v6           #intentFilter:Landroid/content/IntentFilter;
    .end local v7           #pkgFilter:Landroid/content/IntentFilter;
    .end local v9           #tmgr:Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-virtual {v10}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_0

    .line 210
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_8
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 223
    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 243
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 255
    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$1102(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1300(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1502(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 101
    invoke-static/range {p0 .. p6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2502(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/media/AudioService;->noDelayInATwoDP:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3300(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$3400(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$3800(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$400(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Landroid/media/AudioService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mUiContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$4100(Landroid/media/AudioService;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$4700()I
    .locals 1

    .prologue
    .line 101
    sget v0, Landroid/media/AudioService;->SOUND_EFFECT_VOLUME_DB:I

    return v0
.end method

.method static synthetic access$4800(Landroid/media/AudioService;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$4900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/media/AudioService;)Landroid/media/AudioSystem$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$5300(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$5500(Landroid/media/AudioService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    return-void
.end method

.method static synthetic access$5700(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    return-void
.end method

.method static synthetic access$5800(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    return v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic access$6100(Landroid/media/AudioService;Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V

    return-void
.end method

.method static synthetic access$6200(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$6300(Landroid/media/AudioService;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$6600(Landroid/media/AudioService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onNewPlaybackInfoForRcc(III)V

    return-void
.end method

.method static synthetic access$6700(Landroid/media/AudioService;ILandroid/media/IRemoteVolumeObserver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$6902(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$7000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/media/AudioService;->mLinkNotificationWithVolume:Z

    return v0
.end method

.method static synthetic access$7002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/media/AudioService;->mLinkNotificationWithVolume:Z

    return p1
.end method

.method static synthetic access$7100(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7302(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$7402(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$7502(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    return p1
.end method

.method static synthetic access$7600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/media/AudioService;)Landroid/view/VolumePanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    return-object v0
.end method

.method static synthetic access$7902(Landroid/media/AudioService;Landroid/view/VolumePanel;)Landroid/view/VolumePanel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    return-object p1
.end method

.method static synthetic access$8000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8102(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$8200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8300(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    return-void
.end method

.method static synthetic access$8504()I
    .locals 1

    .prologue
    .line 101
    sget v0, Landroid/media/AudioService;->sLastRccId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/AudioService;->sLastRccId:I

    return v0
.end method

.method static synthetic access$8700(Landroid/media/AudioService;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$8802(Landroid/media/AudioService;Landroid/media/IRemoteControlDisplay;)Landroid/media/IRemoteControlDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object p1
.end method

.method static synthetic access$900(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method private adjustRemoteVolume(III)V
    .locals 4
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 5305
    const/4 v0, -0x1

    .line 5306
    .local v0, rccId:I
    const/4 v1, 0x0

    .line 5307
    .local v1, volFixed:Z
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3

    .line 5308
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    if-nez v2, :cond_0

    .line 5310
    monitor-exit v3

    .line 5325
    :goto_0
    return-void

    .line 5312
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5313
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 5315
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5319
    if-nez v1, :cond_1

    .line 5320
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->sendVolumeUpdateToRemote(II)V

    .line 5324
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2, p1, p3}, Landroid/view/VolumePanel;->postRemoteVolumeChanged(II)V

    goto :goto_0

    .line 5313
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 5315
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 4
    .parameter "muted"

    .prologue
    .line 1005
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1007
    const/high16 v3, 0x2800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1009
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1010
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1011
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    return-void
.end method

.method private broadcastRingerMode(I)V
    .locals 4
    .parameter "ringerMode"

    .prologue
    .line 2350
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2351
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2352
    const/high16 v3, 0x2800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2355
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2356
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2357
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2050
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 2051
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2052
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2053
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2055
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2056
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 2058
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .parameter "vibrateType"

    .prologue
    .line 2361
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2363
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2364
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2365
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2367
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 2

    .prologue
    .line 3928
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3929
    const/4 v0, 0x0

    .line 3931
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 3285
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 3286
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 5

    .prologue
    .line 560
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 561
    .local v0, numStreamTypes:I
    const/4 v1, 0x0

    .local v1, streamType:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 562
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    .line 563
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 566
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 571
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-nez v2, :cond_1

    .line 572
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 561
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    :cond_2
    return-void
.end method

.method private checkForRingerModeChange(III)Z
    .locals 5
    .parameter "oldIndex"
    .parameter "direction"
    .parameter "step"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 2169
    const/4 v0, 0x1

    .line 2170
    .local v0, adjustVolumeIndex:Z
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 2172
    .local v1, ringerMode:I
    packed-switch v1, :pswitch_data_0

    .line 2222
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 2228
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 2230
    return v0

    .line 2174
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 2175
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_1

    .line 2181
    if-gt p3, p1, :cond_0

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_0

    .line 2182
    const/4 v1, 0x1

    .line 2183
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v2, :cond_0

    .line 2184
    const/4 v0, 0x0

    goto :goto_0

    .line 2188
    :cond_1
    if-ge p1, p3, :cond_0

    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_0

    .line 2189
    const/4 v1, 0x0

    .line 2190
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v2, :cond_0

    .line 2191
    const/4 v0, 0x0

    goto :goto_0

    .line 2197
    :pswitch_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_2

    .line 2198
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2202
    :cond_2
    if-ne p2, v3, :cond_4

    .line 2203
    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_3

    .line 2204
    const/4 v1, 0x0

    .line 2209
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 2210
    goto :goto_0

    .line 2206
    :cond_4
    if-ne p2, v4, :cond_3

    .line 2207
    const/4 v1, 0x2

    goto :goto_1

    .line 2212
    :pswitch_2
    if-ne p2, v4, :cond_5

    .line 2213
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_6

    .line 2214
    const/4 v1, 0x1

    .line 2219
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 2220
    goto :goto_0

    .line 2216
    :cond_6
    const/4 v1, 0x2

    goto :goto_2

    .line 2172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 1958
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 1962
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 1964
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 6
    .parameter "device"
    .parameter "state"

    .prologue
    .line 3382
    const/4 v0, 0x0

    .line 3383
    .local v0, delay:I
    if-nez p2, :cond_2

    iget v4, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 3384
    const/4 v2, 0x0

    .line 3385
    .local v2, devices:I
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3386
    .local v1, dev:I
    iget v4, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 3387
    or-int/2addr v2, v1

    goto :goto_0

    .line 3390
    .end local v1           #dev:I
    :cond_1
    if-ne v2, p1, :cond_2

    .line 3391
    const/16 v0, 0x3e8

    .line 3392
    invoke-direct {p0}, Landroid/media/AudioService;->sendBecomingNoisyIntent()V

    .line 3396
    .end local v2           #devices:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3398
    :cond_3
    const/16 v0, 0x3e8

    .line 3400
    :cond_4
    return v0
.end method

.method private checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    .locals 2
    .parameter "infoChangedFlags"

    .prologue
    .line 4835
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4836
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 4856
    :goto_0
    return-void

    .line 4840
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 4844
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    .line 4849
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget v0, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    if-eq v1, v0, :cond_3

    .line 4850
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    .line 4855
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateRemoteControlDisplay_syncAfRcs(I)V

    goto :goto_0
.end method

.method private checkUpdateRemoteStateIfActive(I)Z
    .locals 7
    .parameter "streamType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5258
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5259
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5260
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5261
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5262
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    if-ne v5, v2, :cond_0

    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-static {v5}, Landroid/media/AudioService;->isPlaystateActive(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackStream:I

    if-ne v5, p1, :cond_0

    .line 5267
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5268
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5269
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    .line 5270
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    .line 5271
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    .line 5272
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 5273
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5274
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5281
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :goto_0
    return v2

    .line 5273
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 5277
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5278
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4

    .line 5279
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 5280
    monitor-exit v4

    move v2, v3

    .line 5281
    goto :goto_0

    .line 5280
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method

.method private clearRemoteControlDisplay_syncAfRcs()V
    .locals 3

    .prologue
    .line 4787
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4788
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 4789
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4791
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4792
    return-void

    .line 4789
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 540
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 541
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 542
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 543
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .prologue
    .line 578
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 579
    .local v1, numStreamTypes:I
    new-array v2, v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 581
    .local v2, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 582
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v2, v0

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 586
    return-void
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .parameter "exceptPid"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 2019
    iget-object v7, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2020
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 2021
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 2023
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 2024
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 2025
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2027
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2038
    :cond_1
    :goto_0
    monitor-exit v7

    .line 2039
    return-void

    .line 2030
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2032
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 2038
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2036
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 12
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/16 v2, 0x7bc

    const/4 v1, 0x0

    .line 4120
    if-eqz p2, :cond_0

    .line 4121
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4123
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4124
    .local v3, keyIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4125
    iget-object v11, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v11

    .line 4126
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 4129
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    :goto_0
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4145
    :goto_1
    :try_start_2
    monitor-exit v11

    .line 4146
    return-void

    .line 4129
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4132
    :catch_0
    move-exception v10

    .line 4133
    .local v10, e:Landroid/app/PendingIntent$CanceledException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending pending intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4134
    invoke-virtual {v10}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 4145
    .end local v10           #e:Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4139
    :cond_2
    if-eqz p2, :cond_3

    .line 4140
    :try_start_3
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v1, 0x7bc

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4142
    :cond_3
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .locals 8
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/4 v2, 0x0

    .line 4101
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4102
    .local v1, keyIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4103
    iget-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4104
    if-eqz p2, :cond_0

    .line 4105
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4106
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4108
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, -0x1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 4110
    return-void
.end method

.method private doSetMasterVolume(FI)V
    .locals 9
    .parameter "volume"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 1146
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1147
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v8

    .line 1148
    .local v8, oldVolume:I
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1150
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v7

    .line 1151
    .local v7, newVolume:I
    if-eq v7, v8, :cond_0

    .line 1153
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x2

    const/high16 v3, 0x447a

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1157
    :cond_0
    invoke-direct {p0, p2, v8, v7}, Landroid/media/AudioService;->sendMasterVolumeUpdate(III)V

    .line 1159
    .end local v7           #newVolume:I
    .end local v8           #oldVolume:I
    :cond_1
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 3840
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3841
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3842
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3843
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3844
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3845
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3849
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3850
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 4530
    const-string v2, "\nRemote Control Client stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4531
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4532
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4533
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4534
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4535
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volMax: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volObs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4545
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4546
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3

    .line 4547
    :try_start_2
    const-string v2, "\nRemote Volume State:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  has remote: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  is remote active: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  rccId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_1

    const-string v2, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume steps: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4556
    monitor-exit v3

    .line 4557
    return-void

    .line 4551
    :cond_1
    const-string v2, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_1

    .line 4556
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 4509
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4510
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4511
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4512
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4513
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4514
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- ercvr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4521
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4522
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 589
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 591
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 594
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_0
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 2246
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 2247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2249
    :cond_1
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .parameter "ringerMode"

    .prologue
    .line 1200
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1203
    :cond_0
    return-void
.end method

.method private ensureValidSteps(I)V
    .locals 3
    .parameter "steps"

    .prologue
    .line 2252
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 2253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2255
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 2258
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2261
    :cond_1
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    .line 4071
    invoke-static {p1}, Landroid/media/AudioService;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4072
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    :goto_0
    return-void

    .line 4076
    :cond_0
    sget-object v1, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4077
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4078
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 4080
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 4081
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 4084
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4083
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4084
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4086
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioService;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4087
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 4083
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4089
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/4 v2, 0x1

    .line 4171
    const/4 v1, 0x1

    .line 4172
    .local v1, voiceButtonAction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4173
    .local v0, keyAction:I
    iget-object v3, p0, Landroid/media/AudioService;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4174
    if-nez v0, :cond_2

    .line 4175
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 4177
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    .line 4178
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    .line 4194
    :cond_0
    :goto_0
    monitor-exit v3

    .line 4197
    packed-switch v1, :pswitch_data_0

    .line 4211
    :goto_1
    :pswitch_0
    return-void

    .line 4179
    :cond_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 4182
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    .line 4183
    const/4 v1, 0x2

    goto :goto_0

    .line 4185
    :cond_2
    if-ne v0, v2, :cond_0

    .line 4186
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    .line 4188
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    .line 4189
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4190
    const/4 v1, 0x3

    goto :goto_0

    .line 4194
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4204
    :pswitch_1
    invoke-direct {p0, p2}, Landroid/media/AudioService;->startVoiceBasedInteractions(Z)V

    goto :goto_1

    .line 4208
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 4197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private findVolumeDelta(II)I
    .locals 6
    .parameter "direction"
    .parameter "volume"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 938
    const/4 v0, 0x0

    .line 939
    .local v0, delta:I
    if-ne p1, v5, :cond_4

    .line 940
    const/16 v4, 0x64

    if-ne p2, v4, :cond_1

    .line 969
    :cond_0
    :goto_0
    return v3

    .line 944
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v5

    .line 947
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-le v1, v5, :cond_2

    .line 948
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-lt p2, v3, :cond_3

    .line 949
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v1

    .end local v1           #i:I
    :cond_2
    :goto_2
    move v3, v0

    .line 969
    goto :goto_0

    .line 947
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 953
    .end local v1           #i:I
    :cond_4
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 954
    if-eqz p2, :cond_0

    .line 957
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v2, v3

    .line 959
    .local v2, length:I
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 962
    const/4 v1, 0x2

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 963
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_5

    .line 964
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 965
    goto :goto_2

    .line 962
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method private getActiveStreamType(I)I
    .locals 6
    .parameter "suggestedStreamType"

    .prologue
    const/4 v3, 0x2

    const/16 v1, -0xc8

    const/high16 v5, -0x8000

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 2278
    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_6

    .line 2279
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2280
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2283
    const/4 p1, 0x6

    .line 2343
    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    move p1, v0

    .line 2286
    goto :goto_0

    .line 2288
    :cond_2
    if-ne p1, v5, :cond_5

    .line 2291
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move p1, v1

    .line 2294
    goto :goto_0

    .line 2295
    :cond_3
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_4

    move p1, v2

    .line 2298
    goto :goto_0

    :cond_4
    move p1, v3

    .line 2302
    goto :goto_0

    .line 2304
    :cond_5
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v2

    .line 2307
    goto :goto_0

    .line 2314
    :cond_6
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2315
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 2318
    const/4 p1, 0x6

    goto :goto_0

    :cond_7
    move p1, v0

    .line 2321
    goto :goto_0

    .line 2323
    :cond_8
    const/4 v0, 0x5

    const/16 v4, 0x1388

    invoke-static {v0, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x1388

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2328
    :cond_9
    const/4 p1, 0x5

    goto :goto_0

    .line 2329
    :cond_a
    if-ne p1, v5, :cond_0

    .line 2330
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move p1, v1

    .line 2334
    goto :goto_0

    :cond_b
    move p1, v2

    .line 2338
    goto :goto_0
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2003
    const/4 v8, 0x0

    .line 2004
    .local v8, result:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 2005
    .local v7, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 2006
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 2013
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    const/4 v5, 0x0

    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2015
    return v8

    :cond_1
    move v6, v2

    .line 2013
    goto :goto_0
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .parameter "stream"

    .prologue
    .line 2405
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 2406
    .local v0, device:I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 2412
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2413
    xor-int/lit8 v0, v0, 0x2

    .line 2418
    :cond_0
    :goto_0
    return v0

    .line 2415
    :cond_1
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .locals 6
    .parameter "cb"
    .parameter "create"

    .prologue
    .line 1967
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1968
    const/4 v0, 0x0

    .line 1969
    .local v0, client:Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1970
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Landroid/media/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1971
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1972
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 1973
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 1979
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 1970
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_0

    .line 1975
    :cond_1
    if-eqz p2, :cond_2

    .line 1976
    :try_start_3
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1977
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1979
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_1

    .line 1980
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .end local v2           #i:I
    .end local v3           #size:I
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    .restart local v2       #i:I
    .restart local v3       #size:I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_3

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_2
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1322
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 1325
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 1327
    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 5445
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 5446
    .local v1, newOrientation:I
    iget v2, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eq v1, v2, :cond_0

    .line 5447
    iput v1, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 5448
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5453
    .end local v1           #newOrientation:I
    :cond_0
    :goto_0
    return-void

    .line 5450
    :catch_0
    move-exception v0

    .line 5451
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error retrieving device orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .locals 6
    .parameter "connected"
    .parameter "device"
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3353
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v4

    .line 3354
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    .line 3357
    .local v0, isConnected:Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 3358
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v3, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3361
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3362
    monitor-exit v4

    move v1, v2

    .line 3371
    :goto_1
    return v1

    .end local v0           #isConnected:Z
    :cond_1
    move v0, v3

    .line 3354
    goto :goto_0

    .line 3363
    .restart local v0       #isConnected:Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 3364
    const/4 v1, 0x1

    invoke-static {p2, v1, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3367
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    monitor-exit v4

    move v1, v2

    goto :goto_1

    .line 3370
    :cond_3
    monitor-exit v4

    move v1, v3

    .line 3371
    goto :goto_1

    .line 3370
    .end local v0           #isConnected:Z
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 3290
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .parameter "pi"

    .prologue
    .line 4669
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4670
    const/4 v0, 0x1

    .line 4672
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCommunication()Z
    .locals 5

    .prologue
    .line 2264
    const/4 v1, 0x0

    .line 2266
    .local v1, isOffhook:Z
    iget-boolean v3, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v3, :cond_0

    .line 2268
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2269
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2274
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 2270
    :catch_0
    move-exception v0

    .line 2271
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    const-string v4, "Couldn\'t connect to phone service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2274
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static isPlaystateActive(I)Z
    .locals 1
    .parameter "playState"

    .prologue
    .line 5291
    packed-switch p0, :pswitch_data_0

    .line 5300
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5298
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5291
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2238
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x0

    .line 4225
    if-nez p0, :cond_0

    .line 4247
    :goto_0
    return v1

    .line 4228
    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4229
    .local v0, keyCode:I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 4247
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 4229
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 4257
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    .line 4258
    const/4 v0, 0x1

    .line 4260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    const/4 v0, 0x1

    .line 3246
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 3247
    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3251
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3252
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3254
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 3274
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3276
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3278
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3279
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3281
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    const/16 v1, 0x80

    .line 3262
    iget-boolean v0, p0, Landroid/media/AudioService;->noDelayInATwoDP:Z

    if-eqz v0, :cond_0

    .line 3263
    invoke-direct {p0}, Landroid/media/AudioService;->sendBecomingNoisyIntent()V

    .line 3264
    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3267
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3268
    return-void
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 4

    .prologue
    .line 3776
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_0

    .line 3777
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3779
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3787
    :cond_0
    :goto_0
    return-void

    .line 3781
    :catch_0
    move-exception v0

    .line 3782
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onNewPlaybackInfoForRcc(III)V
    .locals 6
    .parameter "rccId"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 5173
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5174
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5175
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5177
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v2, p1, :cond_0

    .line 5178
    sparse-switch p2, :sswitch_data_0

    .line 5223
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unhandled key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for RCC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    :goto_0
    monitor-exit v3

    .line 5230
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :goto_1
    return-void

    .line 5180
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :sswitch_0
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    .line 5181
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    goto :goto_0

    .line 5229
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5184
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :sswitch_1
    :try_start_1
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    .line 5185
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5186
    :try_start_2
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_1

    .line 5187
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    .line 5188
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5190
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v2

    .line 5193
    :sswitch_2
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    .line 5194
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5195
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_2

    .line 5196
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    .line 5197
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5199
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v2

    .line 5202
    :sswitch_3
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    .line 5203
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5204
    :try_start_6
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_3

    .line 5205
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    .line 5206
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5208
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v2

    .line 5211
    :sswitch_4
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackStream:I

    goto :goto_0

    .line 5214
    :sswitch_5
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    .line 5215
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5216
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_4

    .line 5217
    invoke-static {p3}, Landroid/media/AudioService;->isPlaystateActive(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 5218
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    .line 5220
    :cond_4
    monitor-exit v4

    goto :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v2

    .line 5229
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_5
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 5178
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch
.end method

.method private onRcDisplayClear()V
    .locals 5

    .prologue
    .line 4738
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 4739
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4740
    :try_start_1
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 4742
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 4744
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4745
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4746
    return-void

    .line 4744
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 4745
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .locals 7
    .parameter "rcse"
    .parameter "flags"

    .prologue
    .line 4752
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 4753
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4754
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4757
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 4760
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4766
    :try_start_2
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget v5, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    iget v6, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    invoke-interface {v1, v4, p2, v5, v6}, Landroid/media/IRemoteControlClient;->onInformationRequested(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4777
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4778
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4779
    return-void

    .line 4768
    :catch_0
    move-exception v0

    .line 4769
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 4777
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 4778
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onReevaluateRemote()V
    .locals 6

    .prologue
    .line 5414
    const/4 v0, 0x0

    .line 5415
    .local v0, hasRemotePlayback:Z
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5416
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5417
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5418
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5419
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 5420
    const/4 v0, 0x1

    .line 5424
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5425
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4

    .line 5426
    :try_start_1
    iget-boolean v3, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    if-eq v3, v0, :cond_2

    .line 5427
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    .line 5428
    iget-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v3, v0}, Landroid/view/VolumePanel;->postRemoteSliderVisibility(Z)V

    .line 5430
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5431
    return-void

    .line 5424
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 5430
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 4
    .parameter "rccId"
    .parameter "rvo"

    .prologue
    .line 5239
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5240
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5241
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5243
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v2, p1, :cond_0

    .line 5244
    iput-object p2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 5248
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    monitor-exit v3

    .line 5249
    return-void

    .line 5248
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 12
    .parameter "btDevice"
    .parameter "state"

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 3295
    if-nez p1, :cond_0

    .line 3350
    :goto_0
    return-void

    .line 3298
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 3299
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3300
    const-string v7, ""

    .line 3302
    :cond_1
    iget-object v10, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v10

    .line 3303
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3307
    .local v8, isConnected:Z
    :goto_1
    if-eqz v8, :cond_7

    if-eq p2, v3, :cond_7

    .line 3308
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3309
    if-nez p2, :cond_2

    .line 3313
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 3319
    :cond_2
    :goto_2
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3320
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 3321
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 3322
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3325
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3349
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .end local v8           #isConnected:Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move v8, v1

    .line 3303
    goto :goto_1

    .line 3317
    .restart local v8       #isConnected:Z
    :cond_6
    :try_start_3
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3325
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 3326
    :cond_7
    if-nez v8, :cond_4

    if-ne p2, v3, :cond_4

    .line 3327
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3329
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 3330
    iput-object v7, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 3339
    :cond_8
    :goto_4
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 3340
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3341
    :try_start_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 3342
    .local v9, name:Ljava/lang/String;
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3343
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v9, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 3344
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3347
    :cond_9
    monitor-exit v11

    goto :goto_3

    .end local v9           #name:Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 3334
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3335
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 3336
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 6
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3453
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v2

    .line 3454
    if-nez p2, :cond_1

    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    .line 3456
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 3458
    :cond_1
    if-ne p2, v0, :cond_4

    :goto_0
    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    .line 3459
    if-eqz p2, :cond_3

    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    .line 3461
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 3463
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 3464
    monitor-exit v2

    .line 3465
    return-void

    :cond_4
    move v0, v1

    .line 3458
    goto :goto_0

    .line 3464
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postReevaluateRemote()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 5408
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x11

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5409
    return-void
.end method

.method private pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 7
    .parameter "mediaIntent"
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    .line 4623
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4645
    :goto_0
    return-void

    .line 4626
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4627
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    const/4 v0, 0x0

    .line 4628
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    const/4 v2, 0x0

    .line 4629
    .local v2, wasInsideStack:Z
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4630
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4631
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4632
    const/4 v2, 0x1

    .line 4633
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4637
    :cond_2
    if-nez v2, :cond_3

    .line 4638
    new-instance v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    invoke-direct {v0, p1, p2}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4640
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4643
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v6, v6, p2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 7
    .parameter "handler"
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2376
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2377
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2378
    return-void
.end method

.method private rcDisplay_startDeathMonitor_syncRcStack()V
    .locals 5

    .prologue
    .line 5066
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v2, :cond_0

    .line 5068
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5069
    .local v0, b:Landroid/os/IBinder;
    new-instance v2, Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioService$RcDisplayDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    .line 5071
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5078
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 5072
    .restart local v0       #b:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 5074
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_0
.end method

.method private rcDisplay_stopDeathMonitor_syncRcStack()V
    .locals 1

    .prologue
    .line 5059
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v0, :cond_0

    .line 5061
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-virtual {v0}, Landroid/media/AudioService$RcDisplayDeathHandler;->unlinkToRcDisplayDeath()V

    .line 5063
    :cond_0
    return-void
.end method

.method private readPersistedSettings()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 634
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 636
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v4, "mode_ringer"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 638
    .local v3, ringerModeFromSettings:I
    move v2, v3

    .line 641
    .local v2, ringerMode:I
    invoke-static {v2}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 642
    const/4 v2, 0x2

    .line 644
    :cond_0
    if-ne v2, v7, :cond_1

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v4, :cond_1

    .line 645
    const/4 v2, 0x0

    .line 647
    :cond_1
    if-eq v2, v3, :cond_2

    .line 648
    const-string/jumbo v4, "mode_ringer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    :cond_2
    iget-object v8, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 651
    :try_start_0
    iput v2, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 652
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 660
    iget v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    iget-boolean v8, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_4

    :goto_1
    invoke-static {v4, v6, v5}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 667
    const-string/jumbo v4, "mode_ringer_streams_affected"

    const/16 v5, 0xa6

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 671
    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_5

    .line 672
    iget v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 676
    :goto_2
    const-string/jumbo v4, "mode_ringer_streams_affected"

    iget v5, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 679
    const-string/jumbo v4, "volume_link_notification"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_6

    move v4, v7

    :goto_3
    iput-boolean v4, p0, Landroid/media/AudioService;->mLinkNotificationWithVolume:Z

    .line 682
    const-string/jumbo v4, "mute_streams_affected"

    const/16 v5, 0xe

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 686
    const-string/jumbo v4, "volume_master_mute"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_7

    move v1, v7

    .line 687
    .local v1, masterMute:Z
    :goto_4
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 688
    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 693
    invoke-direct {p0, v2}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 696
    invoke-direct {p0, v6}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 697
    invoke-direct {p0, v7}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 700
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMediaButtonReceiver()V

    .line 701
    return-void

    .line 652
    .end local v1           #masterMute:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    move v4, v6

    .line 656
    goto :goto_0

    :cond_4
    move v5, v6

    .line 660
    goto :goto_1

    .line 674
    :cond_5
    iget v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_2

    :cond_6
    move v4, v6

    .line 679
    goto :goto_3

    :cond_7
    move v1, v6

    .line 686
    goto :goto_4
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .locals 5
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 3862
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3865
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3866
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 3867
    if-eqz p2, :cond_0

    .line 3869
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 3871
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 3872
    const/16 v2, 0xf

    :try_start_0
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 3873
    monitor-exit v3

    .line 3889
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_0
    return-void

    .line 3873
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3878
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3879
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3880
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3881
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3882
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3885
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .parameter "cb"

    .prologue
    .line 3898
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 3900
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3901
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3902
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3903
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3904
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3898
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3910
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 3913
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 3915
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 3916
    const/16 v3, 0xf

    :try_start_0
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 3917
    monitor-exit v4

    .line 3919
    :cond_3
    return-void

    .line 3917
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pi"

    .prologue
    .line 4653
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4654
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4655
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4656
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4657
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4658
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 4662
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    .locals 10
    .parameter "packageName"

    .prologue
    .line 4565
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 4566
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4567
    monitor-exit v4

    .line 4594
    :goto_0
    return-void

    .line 4569
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4570
    .local v0, oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4572
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4573
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4574
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4576
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4577
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_1

    .line 4593
    .end local v0           #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4580
    .restart local v0       #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4582
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4593
    :cond_3
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 4585
    :cond_4
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 4588
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private rescaleIndex(III)I
    .locals 2
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 704
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .prologue
    .line 2042
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2043
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 2044
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2045
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 2046
    monitor-exit v1

    .line 2047
    return-void

    .line 2046
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private restoreMasterVolume()V
    .locals 4

    .prologue
    .line 1266
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    if-eqz v1, :cond_0

    .line 1267
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_master"

    const/high16 v3, -0x4080

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 1269
    .local v0, volume:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 1270
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1273
    .end local v0           #volume:F
    :cond_0
    return-void
.end method

.method private restoreMediaButtonReceiver()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4601
    iget-object v4, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "media_button_receiver"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4603
    .local v3, receiverName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4604
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4607
    .local v0, eventReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4609
    .local v1, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4610
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4612
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v2, v0}, Landroid/media/AudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4614
    .end local v0           #eventReceiver:Landroid/content/ComponentName;
    .end local v1           #mediaButtonIntent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private sendBecomingNoisyIntent()V
    .locals 3

    .prologue
    .line 3257
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3258
    return-void
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;)V
    .locals 12
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3405
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3407
    .local v8, intent:Landroid/content/Intent;
    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3408
    const-string/jumbo v0, "name"

    invoke-virtual {v8, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3409
    const/high16 v0, 0x4000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3411
    const/4 v7, 0x0

    .line 3413
    .local v7, connType:I
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 3414
    const/4 v7, 0x1

    .line 3415
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3416
    const-string/jumbo v0, "microphone"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3432
    :cond_0
    :goto_0
    iget-object v10, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v10

    .line 3433
    if-eqz v7, :cond_1

    .line 3434
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v9, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 3435
    .local v9, newConn:I
    if-eqz p2, :cond_6

    .line 3436
    or-int/2addr v9, v7

    .line 3440
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v9, v0, :cond_1

    .line 3441
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v9, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 3442
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3446
    .end local v9           #newConn:I
    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3448
    invoke-static {v8, v11}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3449
    return-void

    .line 3417
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 3418
    const/4 v7, 0x2

    .line 3419
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3420
    const-string/jumbo v0, "microphone"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 3421
    :cond_3
    const/16 v0, 0x800

    if-ne p1, v0, :cond_4

    .line 3422
    const/4 v7, 0x4

    .line 3423
    const-string v0, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3424
    :cond_4
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_5

    .line 3425
    const/4 v7, 0x4

    .line 3426
    const-string v0, "android.intent.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3427
    :cond_5
    const/16 v0, 0x400

    if-ne p1, v0, :cond_0

    .line 3428
    const/16 v7, 0x8

    .line 3429
    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3438
    .restart local v9       #newConn:I
    :cond_6
    xor-int/lit8 v0, v7, -0x1

    and-int/2addr v9, v0

    goto :goto_1

    .line 3446
    .end local v9           #newConn:I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 1
    .parameter "muted"
    .parameter "flags"

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p2}, Landroid/view/VolumePanel;->postMasterMuteChanged(I)V

    .line 1001
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1002
    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .locals 2
    .parameter "flags"
    .parameter "oldVolume"
    .parameter "newVolume"

    .prologue
    .line 990
    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v1, p1}, Landroid/view/VolumePanel;->postMasterVolumeChanged(I)V

    .line 992
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 995
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 996
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 3
    .parameter "handler"
    .parameter "msg"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2383
    if-nez p2, :cond_1

    .line 2384
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2389
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2390
    :goto_0
    return-void

    .line 2385
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .parameter "originalKeyEvent"
    .parameter "needWakeLock"

    .prologue
    .line 4215
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4216
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4218
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4219
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4221
    return-void
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 2
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 974
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 975
    const/4 p1, 0x5

    .line 978
    :cond_0
    invoke-direct {p0, p1, p4}, Landroid/media/AudioService;->showVolumeChangeUi(II)V

    .line 979
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 980
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 981
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 984
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 986
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .locals 6
    .parameter "rccId"
    .parameter "direction"

    .prologue
    .line 5329
    if-nez p2, :cond_1

    .line 5352
    :cond_0
    :goto_0
    return-void

    .line 5333
    :cond_1
    const/4 v2, 0x0

    .line 5334
    .local v2, rvo:Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5

    .line 5335
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5336
    .local v3, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5337
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5339
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v4, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_2

    .line 5340
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 5344
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5345
    if-eqz v2, :cond_0

    .line 5347
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {v2, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5348
    :catch_0
    move-exception v0

    .line 5349
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AudioService"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5344
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 6
    .parameter "newClientGeneration"

    .prologue
    .line 4701
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4702
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4703
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4704
    .local v1, se:Landroid/media/AudioService$RemoteControlStackEntry;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_0

    .line 4706
    :try_start_0
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4707
    :catch_0
    move-exception v0

    .line 4708
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4710
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_0

    .line 4714
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #se:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 4
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 4684
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_0

    .line 4686
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4695
    :cond_0
    :goto_0
    return-void

    .line 4688
    :catch_0
    move-exception v0

    .line 4689
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 4692
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_0
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 4727
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 4729
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 4730
    return-void
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .prologue
    .line 5456
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 5474
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    :goto_0
    return-void

    .line 5459
    :pswitch_0
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5463
    :pswitch_1
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5467
    :pswitch_2
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5471
    :pswitch_3
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerModeInt(IZ)V
    .locals 12
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1218
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1219
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1220
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1226
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    .line 1227
    .local v9, numStreamTypes:I
    add-int/lit8 v11, v9, -0x1

    .local v11, streamType:I
    :goto_0
    if-ltz v11, :cond_6

    .line 1228
    invoke-direct {p0, v11}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1229
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v4, :cond_4

    .line 1233
    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v11

    if-ne v0, v4, :cond_3

    .line 1235
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v0, v11

    monitor-enter v1

    .line 1236
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 1237
    .local v10, set:Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1238
    .local v8, i:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1239
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1240
    .local v7, entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 1241
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1244
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v8           #i:Ljava/util/Iterator;
    .end local v10           #set:Ljava/util/Set;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1220
    .end local v9           #numStreamTypes:I
    .end local v11           #streamType:I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1244
    .restart local v8       #i:Ljava/util/Iterator;
    .restart local v9       #numStreamTypes:I
    .restart local v10       #set:Ljava/util/Set;
    .restart local v11       #streamType:I
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1246
    .end local v8           #i:Ljava/util/Iterator;
    .end local v10           #set:Ljava/util/Set;
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1247
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 1227
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 1250
    :cond_5
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p1, v4, :cond_4

    .line 1252
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1253
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_2

    .line 1259
    :cond_6
    if-eqz p2, :cond_7

    .line 1260
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1263
    :cond_7
    return-void
.end method

.method private setStreamVolumeInt(IIIZZ)V
    .locals 7
    .parameter "streamType"
    .parameter "index"
    .parameter "device"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1030
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 1033
    .local v5, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    if-eqz p2, :cond_0

    .line 1036
    invoke-virtual {v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 1038
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/16 v6, 0x1f4

    move v3, v2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    invoke-virtual {v5, p2, p3, p5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    .line 1050
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private showVolumeChangeUi(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 3725
    iget-object v0, p0, Landroid/media/AudioService;->mUiContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    if-eqz v0, :cond_0

    .line 3726
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p1, p2}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 3741
    :goto_0
    return-void

    .line 3728
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/AudioService$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/AudioService$4;-><init>(Landroid/media/AudioService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startVoiceBasedInteractions(Z)V
    .locals 8
    .parameter "needWakeLock"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4268
    const/4 v3, 0x0

    .line 4273
    .local v3, voiceIntent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 4274
    .local v2, pm:Landroid/os/PowerManager;
    iget-object v6, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 4275
    .local v1, isLocked:Z
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4276
    new-instance v3, Landroid/content/Intent;

    .end local v3           #voiceIntent:Landroid/content/Intent;
    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4283
    .restart local v3       #voiceIntent:Landroid/content/Intent;
    :goto_1
    if-eqz p1, :cond_0

    .line 4284
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4287
    :cond_0
    if-eqz v3, :cond_1

    .line 4288
    const/high16 v4, 0x1080

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4290
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4295
    :cond_1
    if-eqz p1, :cond_2

    .line 4296
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_2
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4299
    :cond_2
    return-void

    .end local v1           #isLocked:Z
    :cond_3
    move v1, v5

    .line 4274
    goto :goto_0

    .line 4278
    .restart local v1       #isLocked:Z
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .end local v3           #voiceIntent:Landroid/content/Intent;
    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4279
    .restart local v3       #voiceIntent:Landroid/content/Intent;
    const-string v6, "android.speech.extras.EXTRA_SECURE"

    if-eqz v1, :cond_5

    iget-object v7, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_3

    .line 4292
    :catch_0
    move-exception v0

    .line 4293
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity for search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4295
    if-eqz p1, :cond_2

    .line 4296
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .line 4295
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    if-eqz p1, :cond_6

    .line 4296
    iget-object v5, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4295
    :cond_6
    throw v4
.end method

.method private updateRemoteControlDisplay_syncAfRcs(I)V
    .locals 6
    .parameter "infoChangedFlags"

    .prologue
    .line 4803
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4804
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    move v0, p1

    .line 4807
    .local v0, infoFlagsAboutToBeUsed:I
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-nez v2, :cond_0

    .line 4809
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 4822
    :goto_0
    return-void

    .line 4812
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4813
    :try_start_0
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4815
    const/16 v0, 0xf

    .line 4817
    :cond_1
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object v2, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 4818
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4820
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4818
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateStreamVolumeAlias(Z)V
    .locals 8
    .parameter "updateVolumes"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x5

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 601
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 603
    const/4 v7, 0x2

    .line 608
    .local v7, dtmfStreamAlias:I
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const/4 v7, 0x0

    .line 611
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 613
    iget-boolean v0, p0, Landroid/media/AudioService;->mLinkNotificationWithVolume:Z

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v2, v0, v1

    .line 619
    :goto_1
    if-eqz p1, :cond_1

    .line 620
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 622
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 624
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 631
    :cond_1
    return-void

    .line 605
    .end local v7           #dtmfStreamAlias:I
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 606
    const/4 v7, 0x3

    .restart local v7       #dtmfStreamAlias:I
    goto :goto_0

    .line 616
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v1, v0, v1

    goto :goto_1
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 547
    monitor-enter p0

    .line 548
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 551
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 557
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 5
    .parameter "fl"
    .parameter "clientId"

    .prologue
    const/4 v4, 0x1

    .line 4033
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    :try_start_0
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4037
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p2, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4038
    monitor-exit v2

    .line 4047
    :goto_0
    return v4

    .line 4038
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4039
    :catch_0
    move-exception v0

    .line 4043
    .local v0, cme:Ljava/util/ConcurrentModificationException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method public adjustLocalOrRemoteStreamVolume(II)V
    .locals 3
    .parameter "streamType"
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 720
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    invoke-direct {p0, v1, p2, v2}, Landroid/media/AudioService;->adjustRemoteVolume(III)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0, v1, p2, v2}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method public adjustMasterVolume(II)V
    .locals 7
    .parameter "steps"
    .parameter "flags"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidSteps(I)V

    .line 835
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v5

    const/high16 v6, 0x42c8

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 836
    .local v4, volume:I
    const/4 v0, 0x0

    .line 837
    .local v0, delta:I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 838
    .local v3, numSteps:I
    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 839
    .local v1, direction:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 840
    invoke-direct {p0, v1, v4}, Landroid/media/AudioService;->findVolumeDelta(II)I

    move-result v0

    .line 841
    add-int/2addr v4, v0

    .line 839
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 838
    .end local v1           #direction:I
    .end local v2           #i:I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 845
    .restart local v1       #direction:I
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {p0, v4, p2}, Landroid/media/AudioService;->setMasterVolume(II)V

    .line 846
    return-void
.end method

.method public adjustStreamVolume(III)V
    .locals 25
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 759
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 760
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 765
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v24, v5, p1

    .line 766
    .local v24, streamTypeAlias:I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v10, v5, v24

    .line 768
    .local v10, streamState:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v9

    .line 770
    .local v9, device:I
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v10}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v10, v9, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v19

    .line 772
    .local v19, aliasIndex:I
    const/16 v18, 0x1

    .line 775
    .local v18, adjustVolume:Z
    const/16 v5, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v5, v1, v2}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v23

    .line 779
    .local v23, step:I
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v5

    move/from16 v0, v24

    if-ne v0, v5, :cond_2

    .line 781
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v22

    .line 783
    .local v22, ringerMode:I
    const/4 v5, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_1

    .line 784
    and-int/lit8 p3, p3, -0x11

    .line 788
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioService;->checkForRingerModeChange(III)Z

    move-result v18

    .line 789
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v5

    move/from16 v0, v24

    if-ne v0, v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v5, :cond_2

    .line 791
    const/4 v5, 0x0

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 797
    .end local v22           #ringerMode:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v5, p1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v9, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v21

    .line 800
    .local v21, oldIndex:I
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v10}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_6

    .line 801
    if-eqz v18, :cond_3

    .line 804
    mul-int v5, p2, v23

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->adjustLastAudibleIndex(II)V

    .line 805
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/16 v11, 0x1f4

    invoke-static/range {v5 .. v11}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 813
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    invoke-virtual {v5, v9, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v20

    .line 829
    .local v20, index:I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 830
    return-void

    .line 770
    .end local v18           #adjustVolume:Z
    .end local v19           #aliasIndex:I
    .end local v20           #index:I
    .end local v21           #oldIndex:I
    .end local v23           #step:I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 797
    .restart local v18       #adjustVolume:Z
    .restart local v19       #aliasIndex:I
    .restart local v23       #step:I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 815
    .restart local v21       #oldIndex:I
    :cond_6
    if-eqz v18, :cond_7

    mul-int v5, p2, v23

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 818
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v17, 0x0

    move v14, v9

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v17}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 826
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v20

    .restart local v20       #index:I
    goto :goto_2
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 4
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    const/16 v3, -0xc8

    .line 731
    iget v1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 732
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 738
    .local v0, streamType:I
    :goto_0
    if-eq v0, v3, :cond_1

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    :cond_0
    and-int/lit8 p3, p3, -0x5

    .line 745
    :cond_1
    if-ne v0, v3, :cond_3

    .line 747
    and-int/lit8 p3, p3, -0x5

    .line 749
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p3}, Landroid/media/AudioService;->adjustRemoteVolume(III)V

    .line 753
    :goto_1
    return-void

    .line 734
    .end local v0           #streamType:I
    :cond_2
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .restart local v0       #streamType:I
    goto :goto_0

    .line 751
    :cond_3
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    goto :goto_1
.end method

.method public adjustVolume(II)V
    .locals 1
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 713
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 714
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 2393
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2395
    const/4 v1, 0x1

    .line 2401
    :goto_0
    return v1

    .line 2397
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2400
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .parameter "exceptPid"
    .parameter "stopSco"

    .prologue
    .line 1984
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1985
    const/4 v2, 0x0

    .line 1986
    .local v2, savedClient:Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1987
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1988
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 1989
    .local v0, cl:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 1990
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 1987
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1992
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 1995
    .end local v0           #cl:Landroid/media/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1996
    if-eqz v2, :cond_2

    .line 1997
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1999
    :cond_2
    monitor-exit v5

    .line 2000
    return-void

    .line 1999
    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 4062
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4063
    return-void
.end method

.method public dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 4066
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4067
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5512
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5514
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 5515
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 5516
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 5517
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 5518
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5519
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5520
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5521
    return-void
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .parameter "streamType"
    .parameter "cb"

    .prologue
    .line 888
    iget-object v1, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 889
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 890
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 891
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 898
    :cond_0
    :goto_0
    monitor-exit v1

    .line 899
    return-void

    .line 896
    :cond_1
    new-instance v0, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 898
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastAudibleMasterVolume()I
    .locals 2

    .prologue
    .line 1180
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 3
    .parameter "streamType"

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1174
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1175
    .local v0, device:I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterMaxVolume()I
    .locals 1

    .prologue
    .line 1168
    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .locals 1

    .prologue
    .line 1185
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    .line 1186
    const/4 v0, 0x2

    .line 1188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getMasterVolume()I
    .locals 1

    .prologue
    .line 1131
    invoke-virtual {p0}, Landroid/media/AudioService;->isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1132
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getLastAudibleMasterVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1489
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRemoteStreamMaxVolume()I
    .locals 3

    .prologue
    .line 5355
    iget-object v1, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v1

    .line 5356
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 5357
    const/4 v0, 0x0

    monitor-exit v1

    .line 5359
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_0

    .line 5360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemoteStreamVolume()I
    .locals 3

    .prologue
    .line 5364
    iget-object v1, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v1

    .line 5365
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 5366
    const/4 v0, 0x0

    monitor-exit v1

    .line 5368
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_0

    .line 5369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingerMode()I
    .locals 2

    .prologue
    .line 1194
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1195
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 1196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .prologue
    .line 5498
    iget-object v0, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1163
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1164
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 3
    .parameter "streamType"

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1126
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1127
    .local v0, device:I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .parameter "vibrateType"

    .prologue
    .line 1298
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1299
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 1776
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1777
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 1778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 1763
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMasterMute()Z
    .locals 1

    .prologue
    .line 1120
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1745
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2242
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2234
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 13

    .prologue
    .line 1512
    iget-object v9, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1513
    :try_start_0
    iget-boolean v8, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v8, :cond_0

    .line 1514
    const-string v8, "AudioService"

    const-string v10, "loadSoundEffects() called before boot complete"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/4 v8, 0x0

    monitor-exit v9

    .line 1617
    :goto_0
    return v8

    .line 1518
    :cond_0
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v8, :cond_1

    .line 1519
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_0

    .line 1616
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1521
    :cond_1
    :try_start_1
    new-instance v8, Landroid/media/SoundPool;

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v8, v10, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1524
    const/4 v8, 0x0

    :try_start_2
    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    .line 1525
    new-instance v8, Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-direct {v8, p0}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1526
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 1528
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1533
    :goto_1
    :try_start_3
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    if-nez v8, :cond_3

    .line 1534
    const-string v8, "AudioService"

    const-string v10, "loadSoundEffects() could not create SoundPool listener or thread"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_2

    .line 1536
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1537
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1539
    :cond_2
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1540
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1541
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1542
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_0

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool listener thread."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1550
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    new-array v5, v8, [I

    .line 1551
    .local v5, poolId:[I
    const/4 v2, 0x0

    .local v2, fileIdx:I
    :goto_2
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_4

    .line 1552
    const/4 v8, -0x1

    aput v8, v5, v2

    .line 1551
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1560
    :cond_4
    const/4 v4, 0x0

    .line 1561
    .local v4, lastSample:I
    const/4 v1, 0x0

    .local v1, effect:I
    :goto_3
    const/16 v8, 0x9

    if-ge v1, v8, :cond_8

    .line 1563
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-nez v8, :cond_5

    .line 1561
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1566
    :cond_5
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aget v8, v5, v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    .line 1567
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/media/audio/ui/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1570
    .local v3, filePath:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    .line 1571
    .local v6, sampleId:I
    if-gtz v6, :cond_6

    .line 1572
    const-string v8, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Soundpool could not load file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1574
    :cond_6
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aput v6, v8, v10

    .line 1575
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aput v6, v5, v8

    .line 1576
    move v4, v6

    goto :goto_4

    .line 1579
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #sampleId:I
    :cond_7
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget v11, v5, v11

    aput v11, v8, v10

    goto :goto_4

    .line 1583
    :cond_8
    if-eqz v4, :cond_b

    .line 1584
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8, v4}, Landroid/media/AudioService$SoundPoolCallback;->setLastSample(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1587
    :try_start_4
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 1588
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v7

    .line 1597
    .local v7, status:I
    :goto_5
    :try_start_5
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_9

    .line 1598
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1599
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1601
    :cond_9
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1602
    if-eqz v7, :cond_e

    .line 1603
    const-string v10, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadSoundEffects(), Error "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_c

    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I

    move-result v8

    :goto_6
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " while loading samples"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const/4 v1, 0x0

    :goto_7
    const/16 v8, 0x9

    if-ge v1, v8, :cond_d

    .line 1608
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-lez v8, :cond_a

    .line 1609
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    const/4 v11, -0x1

    aput v11, v8, v10

    .line 1607
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1589
    .end local v7           #status:I
    :catch_1
    move-exception v0

    .line 1590
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool callback."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const/4 v7, -0x1

    .line 1592
    .restart local v7       #status:I
    goto :goto_5

    .line 1594
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v7           #status:I
    :cond_b
    const/4 v7, -0x1

    .restart local v7       #status:I
    goto :goto_5

    .line 1603
    :cond_c
    const/4 v8, -0x1

    goto :goto_6

    .line 1613
    :cond_d
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1614
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1616
    :cond_e
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1617
    if-nez v7, :cond_f

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 4311
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_0

    .line 4312
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4314
    :cond_0
    return-void
.end method

.method public playSoundEffect(I)V
    .locals 7
    .parameter "effectType"

    .prologue
    .line 1494
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1496
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1500
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 1501
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/high16 v3, 0x447a

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1503
    return-void
.end method

.method public registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 4899
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4901
    const-string v0, "AudioService"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4907
    :goto_0
    return-void

    .line 4904
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 4905
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 4906
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 3
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 4863
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4865
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4866
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4867
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4869
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4870
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4871
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4872
    return-void

    .line 4870
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 4871
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 11
    .parameter "mediaIntent"
    .parameter "rcClient"
    .parameter "callingPackageName"

    .prologue
    .line 4933
    const/4 v2, -0x1

    .line 4934
    .local v2, rccId:I
    sget-object v7, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4935
    :try_start_0
    iget-object v8, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4937
    :try_start_1
    iget-object v6, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4938
    .local v5, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4939
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4940
    .local v4, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4942
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    if-eqz v6, :cond_1

    .line 4944
    invoke-virtual {v4}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 4947
    :cond_1
    iput-object p2, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 4948
    iput-object p3, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 4949
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    .line 4950
    if-nez p2, :cond_4

    .line 4952
    invoke-virtual {v4}, Landroid/media/AudioService$RemoteControlStackEntry;->resetPlaybackInfo()V

    .line 4984
    .end local v4           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4985
    const/16 v6, 0xf

    invoke-direct {p0, v6}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4987
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4988
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4989
    return v2

    .line 4955
    .restart local v4       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_4
    :try_start_3
    iget v2, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    .line 4959
    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_5

    .line 4961
    :try_start_4
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v9, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v6, v9}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4968
    :cond_5
    :goto_1
    :try_start_5
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4969
    .local v0, b:Landroid/os/IBinder;
    new-instance v3, Landroid/media/AudioService$RcClientDeathHandler;

    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v3, p0, v0, v6}, Landroid/media/AudioService$RcClientDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4972
    .local v3, rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    const/4 v6, 0x0

    :try_start_6
    invoke-interface {v0, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 4978
    :goto_2
    :try_start_7
    iput-object v3, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    goto :goto_0

    .line 4987
    .end local v0           #b:Landroid/os/IBinder;
    .end local v3           #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    .end local v4           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v5           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6

    .line 4988
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 4962
    .restart local v4       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v5       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catch_0
    move-exception v1

    .line 4963
    .local v1, e:Landroid/os/RemoteException;
    :try_start_9
    const-string v6, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error connecting remote control display to client: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 4973
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v3       #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    :catch_1
    move-exception v1

    .line 4975
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    const/4 v6, 0x0

    iput-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 8
    .parameter "rcd"

    .prologue
    .line 5089
    sget-object v4, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5090
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5091
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq v3, p1, :cond_0

    if-nez p1, :cond_1

    .line 5092
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5120
    :goto_0
    return-void

    .line 5095
    :cond_1
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5096
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5098
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_startDeathMonitor_syncRcStack()V

    .line 5103
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5104
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5106
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    .line 5108
    :try_start_4
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v3, v6}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 5109
    :catch_0
    move-exception v0

    .line 5110
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error connecting remote control display to client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5111
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5118
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 5119
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 5117
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    const/16 v3, 0xf

    :try_start_7
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5118
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5119
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method

.method public registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 7
    .parameter "rccId"
    .parameter "rvo"

    .prologue
    const/4 v4, 0x0

    .line 5233
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5235
    return-void
.end method

.method public reloadAudioSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1705
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1708
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1709
    .local v1, numStreamTypes:I
    const/4 v4, 0x0

    .local v4, streamType:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1710
    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v5, v4

    .line 1712
    .local v3, streamState:Landroid/media/AudioService$VolumeStreamState;
    monitor-enter v3

    .line 1713
    :try_start_0
    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 1716
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1717
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2000(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1718
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1719
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2000(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x1

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2102(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1720
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2000(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 1718
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1723
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_0
    monitor-exit v3

    .line 1709
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1723
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1726
    .end local v3           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 1729
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5, v7}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1730
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 2
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 5157
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5159
    :try_start_0
    iput p2, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5160
    iput p3, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 5161
    monitor-exit v1

    .line 5162
    return-void

    .line 5161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"
    .parameter "callingPackageName"

    .prologue
    .line 3961
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3967
    const-string v1, "AudioService"

    const-string v2, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    const/4 v1, 0x0

    .line 4028
    :goto_0
    return v1

    .line 3971
    :cond_0
    sget-object v12, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3972
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3973
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 4026
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3979
    :cond_1
    :try_start_1
    new-instance v7, Landroid/media/AudioService$AudioFocusDeathHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3981
    .local v7, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3988
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3991
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_2

    .line 3994
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3995
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_0

    .line 3982
    :catch_0
    move-exception v10

    .line 3984
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 3999
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$FocusStackEntry;

    .line 4000
    .local v11, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v11}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4004
    .end local v11           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_3
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 4006
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v3, p2, -0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 4016
    :cond_4
    :goto_1
    const/4 v1, 0x0

    :try_start_5
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4019
    iget-object v13, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/AudioService$FocusStackEntry;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioService$FocusStackEntry;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/AudioService$AudioFocusDeathHandler;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4023
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4024
    const/16 v1, 0xf

    :try_start_6
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4025
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4026
    :try_start_7
    monitor-exit v12

    .line 4028
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 4009
    :catch_1
    move-exception v10

    .line 4010
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Failure to signal loss of focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 4025
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 8
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 2436
    iget-boolean v1, p0, Landroid/media/AudioService;->noDelayInATwoDP:Z

    if-nez v1, :cond_1

    .line 2437
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 2438
    const/16 v1, 0x80

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-direct {p0, v1, v0}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 2440
    .local v6, delay:I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x15

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2446
    monitor-exit v7

    .line 2450
    :goto_0
    return v6

    .line 2446
    .end local v6           #delay:I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2448
    :cond_1
    const/4 v6, 0x0

    .restart local v6       #delay:I
    goto :goto_0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 1768
    const-string/jumbo v0, "setBluetoothA2dpOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService;->noDelayInATwoDP:Z

    if-eqz v0, :cond_0

    .line 1772
    :goto_0
    return-void

    .line 1771
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    goto :goto_0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 8
    .parameter "on"

    .prologue
    const/4 v4, 0x0

    .line 5481
    iget-object v7, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5482
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 5483
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5487
    monitor-exit v7

    .line 5488
    return-void

    .line 5483
    :cond_0
    const/16 v4, 0xa

    goto :goto_0

    .line 5487
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 13
    .parameter "on"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1750
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1759
    :goto_0
    return-void

    .line 1753
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1755
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1757
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v2

    move-object v11, v5

    move v12, v3

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1753
    goto :goto_1
.end method

.method public setMasterMute(ZILandroid/os/IBinder;)V
    .locals 7
    .parameter "state"
    .parameter "flags"
    .parameter "cb"

    .prologue
    const/4 v2, 0x0

    .line 1109
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1110
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1112
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xf

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1114
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 1116
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 1112
    goto :goto_0
.end method

.method public setMasterVolume(II)V
    .locals 2
    .parameter "volume"
    .parameter "flags"

    .prologue
    .line 1136
    if-gez p1, :cond_1

    .line 1137
    const/4 p1, 0x0

    .line 1141
    :cond_0
    :goto_0
    int-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->doSetMasterVolume(FI)V

    .line 1142
    return-void

    .line 1138
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 1139
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 4
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v3, -0x1

    .line 1377
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    if-lt p1, v3, :cond_0

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, newModeOwnerPid:I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1387
    if-ne p1, v3, :cond_2

    .line 1388
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1390
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 1391
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    if-eqz v0, :cond_0

    .line 1395
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 1391
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setModeInt(ILandroid/os/IBinder;I)I
    .locals 17
    .parameter "mode"
    .parameter "cb"
    .parameter "pid"

    .prologue
    .line 1403
    const/4 v13, 0x0

    .line 1404
    .local v13, newModeOwnerPid:I
    if-nez p2, :cond_0

    .line 1405
    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .line 1484
    .end local v13           #newModeOwnerPid:I
    .local v14, newModeOwnerPid:I
    :goto_0
    return v14

    .line 1409
    .end local v14           #newModeOwnerPid:I
    .restart local v13       #newModeOwnerPid:I
    :cond_0
    const/4 v11, 0x0

    .line 1410
    .local v11, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1411
    .local v12, iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1412
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1413
    .local v10, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_1

    .line 1414
    move-object v11, v10

    .line 1416
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 1417
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v11, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1421
    .end local v10           #h:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_2
    const/4 v15, 0x0

    .line 1423
    .local v15, status:I
    :cond_3
    if-nez p1, :cond_9

    .line 1425
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1426
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v11, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1427
    .restart local v11       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1428
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 1448
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_d

    .line 1449
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v15

    .line 1450
    if-nez v15, :cond_b

    .line 1451
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioService;->mMode:I

    .line 1463
    :goto_2
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1465
    :cond_5
    if-nez v15, :cond_8

    .line 1466
    if-eqz p1, :cond_6

    .line 1467
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1468
    const-string v3, "AudioService"

    const-string/jumbo v4, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_6
    :goto_3
    const/high16 v3, -0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v16

    .line 1474
    .local v16, streamType:I
    const/16 v3, -0xc8

    move/from16 v0, v16

    if-ne v0, v3, :cond_7

    .line 1476
    const/16 v16, 0x3

    .line 1478
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 1479
    .local v6, device:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v16

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v5

    .line 1480
    .local v5, index:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v16

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 1482
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .end local v5           #index:I
    .end local v6           #device:I
    .end local v16           #streamType:I
    :cond_8
    move v14, v13

    .line 1484
    .end local v13           #newModeOwnerPid:I
    .restart local v14       #newModeOwnerPid:I
    goto/16 :goto_0

    .line 1431
    .end local v14           #newModeOwnerPid:I
    .restart local v13       #newModeOwnerPid:I
    :cond_9
    if-nez v11, :cond_a

    .line 1432
    new-instance v11, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v11           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v0, v1, v2}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 1436
    .restart local v11       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_a
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1445
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_1

    .line 1437
    :catch_0
    move-exception v9

    .line 1439
    .local v9, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode() could not link to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " binder death"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1453
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_b
    if-eqz v11, :cond_c

    .line 1454
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1455
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1458
    :cond_c
    const/16 p1, 0x0

    goto/16 :goto_2

    .line 1461
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1470
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v13

    goto/16 :goto_3
.end method

.method public setPlaybackInfoForRcc(III)V
    .locals 7
    .parameter "rccId"
    .parameter "what"
    .parameter "value"

    .prologue
    .line 5165
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5167
    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .locals 8
    .parameter "vol"

    .prologue
    .line 5374
    const/4 v1, -0x1

    .line 5375
    .local v1, rccId:I
    iget-object v6, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v6

    .line 5376
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v5, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 5377
    monitor-exit v6

    .line 5400
    :cond_0
    :goto_0
    return-void

    .line 5379
    :cond_1
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v1, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5380
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5381
    const/4 v3, 0x0

    .line 5382
    .local v3, rvo:Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v6

    .line 5383
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5384
    .local v4, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5385
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5386
    .local v2, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v5, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v5, v1, :cond_2

    .line 5388
    iget-object v3, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 5392
    .end local v2           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5393
    if-eqz v3, :cond_0

    .line 5395
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v3, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5396
    :catch_0
    move-exception v0

    .line 5397
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "AudioService"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5380
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #rvo:Landroid/media/IRemoteVolumeObserver;
    .end local v4           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 5392
    .restart local v3       #rvo:Landroid/media/IRemoteVolumeObserver;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public setRingerMode(I)V
    .locals 2
    .parameter "ringerMode"

    .prologue
    const/4 v1, 0x1

    .line 1207
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 1208
    const/4 p1, 0x0

    .line 1210
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1211
    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1213
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 1215
    :cond_1
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .parameter "player"

    .prologue
    .line 5492
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5493
    iput-object p1, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 5494
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 7
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 1734
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    :goto_0
    return-void

    .line 1737
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1739
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v5, 0x0

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1737
    goto :goto_1
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 1
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1072
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1075
    :cond_0
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 2
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1063
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1064
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_1

    .line 1063
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 1068
    :cond_2
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 9
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 850
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 851
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    aget-object v8, v0, v1

    .line 853
    .local v8, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 855
    .local v3, device:I
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    :goto_0
    invoke-virtual {v8, v3, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v7

    .line 858
    .local v7, oldIndex:I
    mul-int/lit8 v0, p2, 0xa

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    invoke-direct {p0, v0, p1, v1}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 861
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 864
    :cond_0
    if-nez p2, :cond_4

    .line 865
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_3

    move v6, v5

    .line 867
    .local v6, newRingerMode:I
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 875
    :goto_2
    invoke-virtual {p0, v6}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 878
    .end local v6           #newRingerMode:I
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 880
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {v0, v3, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result p2

    .line 883
    invoke-direct {p0, p1, v7, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 884
    return-void

    .end local v7           #oldIndex:I
    :cond_2
    move v0, v4

    .line 855
    goto :goto_0

    .restart local v7       #oldIndex:I
    :cond_3
    move v6, v4

    .line 865
    goto :goto_1

    .line 873
    :cond_4
    const/4 v6, 0x2

    .restart local v6       #newRingerMode:I
    goto :goto_2

    .end local v6           #newRingerMode:I
    :cond_5
    move v5, v4

    .line 880
    goto :goto_3
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1305
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 1312
    :goto_0
    return-void

    .line 1307
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1310
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 8
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    .line 2422
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 2423
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 2424
    .local v6, delay:I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x14

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2430
    monitor-exit v7

    .line 2431
    return-void

    .line 2430
    .end local v6           #delay:I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .parameter "vibrateType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1277
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    .line 1292
    :goto_0
    :pswitch_0
    return v1

    .line 1279
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1282
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1285
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 1279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1783
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 1789
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1788
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_0
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .parameter "observer"

    .prologue
    .line 5503
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5504
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5505
    .local v0, routes:Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5506
    monitor-exit v2

    return-object v0

    .line 5507
    .end local v0           #routes:Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1793
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 1801
    :cond_0
    :goto_0
    return-void

    .line 1797
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1798
    .local v0, client:Landroid/media/AudioService$ScoClient;
    if-eqz v0, :cond_0

    .line 1799
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_0
.end method

.method public toggleGlobalMute()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1082
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    .line 1084
    .local v0, currentMode:I
    if-eq v0, v1, :cond_0

    if-nez v0, :cond_3

    .line 1085
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1092
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    if-eqz v3, :cond_2

    .line 1093
    const/high16 v3, -0x8000

    invoke-direct {p0, v3}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v2

    .line 1094
    .local v2, streamType:I
    const/16 v3, -0xc8

    if-ne v2, v3, :cond_1

    .line 1095
    const/4 v2, 0x3

    .line 1097
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    const/16 v4, 0x11

    invoke-virtual {v3, v2, v4}, Landroid/view/VolumePanel;->postMuteChanged(II)V

    .line 1100
    .end local v2           #streamType:I
    :cond_2
    return-void

    .line 1088
    :cond_3
    iget-boolean v3, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v3, :cond_4

    .line 1089
    .local v1, ringerMode:I
    :goto_1
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    goto :goto_0

    .line 1088
    .end local v1           #ringerMode:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    .line 1626
    iget-object v4, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1627
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_0

    .line 1628
    monitor-exit v4

    .line 1652
    :goto_0
    return-void

    .line 1631
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1632
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1634
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [I

    .line 1635
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1636
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 1635
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1639
    :cond_1
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    const/16 v3, 0x9

    if-ge v0, v3, :cond_4

    .line 1640
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 1639
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1643
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 1644
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 1645
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 1646
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3

    .line 1651
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1649
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_4
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 1650
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1651
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 2
    .parameter "clientId"

    .prologue
    .line 4052
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4053
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4054
    monitor-exit v1

    .line 4055
    return-void

    .line 4054
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterMediaButtonEventReceiverForCalls()V
    .locals 2

    .prologue
    .line 4913
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4915
    const-string v0, "AudioService"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4921
    :goto_0
    return-void

    .line 4918
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 4919
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 4920
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 4880
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4882
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4883
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4884
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 4885
    .local v0, topOfStackWillChange:Z
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 4886
    if-eqz v0, :cond_0

    .line 4888
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4890
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4891
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4892
    return-void

    .line 4890
    .end local v0           #topOfStackWillChange:Z
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 4891
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 5
    .parameter "mediaIntent"
    .parameter "rcClient"

    .prologue
    .line 4998
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4999
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5000
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5001
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5002
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5003
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5007
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5009
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5010
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    goto :goto_0

    .line 5013
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 5014
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 5013
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5014
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5015
    return-void
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 7
    .parameter "rcd"

    .prologue
    .line 5130
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5132
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq p1, v3, :cond_1

    .line 5134
    :cond_0
    monitor-exit v4

    .line 5154
    :goto_0
    return-void

    .line 5137
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5138
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5141
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5142
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5144
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 5146
    :try_start_1
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5147
    :catch_0
    move-exception v0

    .line 5148
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error disconnecting remote control display to client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5153
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
