.class public Lcom/andrew/apollo/activities/PlayExternal;
.super Landroid/support/v4/app/FragmentActivity;
.source "PlayExternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mToken:Lcom/andrew/apollo/service/ServiceToken;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/activities/PlayExternal;Ljava/lang/String;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/andrew/apollo/activities/PlayExternal;->playOrEnqueuFile(Ljava/lang/String;JZ)V

    return-void
.end method

.method private openFile(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->stop()V

    .line 185
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0, p1}, Lcom/andrew/apollo/IApolloService;->openFile(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->play()V

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/andrew/apollo/activities/AudioPlayerHolder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/PlayExternal;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method private play(Landroid/net/Uri;)V
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, file:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, name:Ljava/lang/String;
    sget-object v8, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v8, v3}, Lcom/andrew/apollo/IApolloService;->getIdFromPath(Ljava/lang/String;)J

    move-result-wide v4

    .line 102
    .local v4, id:J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_0

    .line 104
    invoke-direct {p0, v3}, Lcom/andrew/apollo/activities/PlayExternal;->openFile(Ljava/lang/String;)V

    .line 158
    .end local v3           #file:Ljava/lang/String;
    .end local v4           #id:J
    .end local v7           #name:Ljava/lang/String;
    :goto_0
    return-void

    .line 108
    .restart local v3       #file:Ljava/lang/String;
    .restart local v4       #id:J
    .restart local v7       #name:Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0c0001

    invoke-direct {v0, p0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 110
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/high16 v8, 0x7f0b

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 111
    const v8, 0x7f0b0040

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/andrew/apollo/activities/PlayExternal;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance v6, Lcom/andrew/apollo/activities/PlayExternal$1;

    invoke-direct {v6, p0, v3, v4, v5}, Lcom/andrew/apollo/activities/PlayExternal$1;-><init>(Lcom/andrew/apollo/activities/PlayExternal;Ljava/lang/String;J)V

    .line 137
    .local v6, listener:Landroid/content/DialogInterface$OnClickListener;
    const v8, 0x7f0b0041

    invoke-virtual {v0, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    const v8, 0x7f0b0042

    invoke-virtual {v0, v8, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    const v8, 0x7f0b0043

    invoke-virtual {v0, v8, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 142
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 143
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/Dialog;
    .end local v3           #file:Ljava/lang/String;
    .end local v4           #id:J
    .end local v6           #listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v7           #name:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 147
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/PlayExternal;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b0044

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 151
    const-string v8, "PlayExternal"

    const-string v9, "Failed to play external file: "

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/PlayExternal;->finish()V

    goto :goto_0

    .line 154
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private playOrEnqueuFile(Ljava/lang/String;JZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [J

    aput-wide p2, v0, v2

    .line 167
    if-nez p4, :cond_0

    .line 169
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->removeAllTracks()V

    .line 170
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/PlayExternal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 177
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/andrew/apollo/activities/AudioPlayerHolder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/PlayExternal;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/PlayExternal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/andrew/apollo/utils/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/PlayExternal;->finish()V

    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/PlayExternal;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/PlayExternal;->finish()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/activities/PlayExternal;->mUri:Landroid/net/Uri;

    .line 63
    iget-object v1, p0, Lcom/andrew/apollo/activities/PlayExternal;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/PlayExternal;->finish()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 71
    invoke-static {p2}, Lcom/andrew/apollo/IApolloService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/andrew/apollo/IApolloService;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 72
    iget-object v0, p0, Lcom/andrew/apollo/activities/PlayExternal;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/andrew/apollo/activities/PlayExternal;->play(Landroid/net/Uri;)V

    .line 73
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 78
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 83
    invoke-static {p0, p0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/service/ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/activities/PlayExternal;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    .line 84
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 85
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/andrew/apollo/activities/PlayExternal;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->unbindFromService(Lcom/andrew/apollo/service/ServiceToken;)V

    .line 92
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 93
    return-void
.end method
