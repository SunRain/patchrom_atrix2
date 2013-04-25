.class public Lcom/andrew/apollo/app/widgets/AppWidget42;
.super Landroid/appwidget/AppWidgetProvider;
.source "AppWidget42.java"


# static fields
.field public static final CMDAPPWIDGETUPDATE:Ljava/lang/String; = "appwidgetupdate4x2"

.field private static sInstance:Lcom/andrew/apollo/app/widgets/AppWidget42;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 73
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 76
    .local v0, views:Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/andrew/apollo/app/widgets/AppWidget42;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/andrew/apollo/app/widgets/AppWidget42;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 78
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/andrew/apollo/app/widgets/AppWidget42;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/andrew/apollo/app/widgets/AppWidget42;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/andrew/apollo/app/widgets/AppWidget42;->sInstance:Lcom/andrew/apollo/app/widgets/AppWidget42;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/andrew/apollo/app/widgets/AppWidget42;

    invoke-direct {v0}, Lcom/andrew/apollo/app/widgets/AppWidget42;-><init>()V

    sput-object v0, Lcom/andrew/apollo/app/widgets/AppWidget42;->sInstance:Lcom/andrew/apollo/app/widgets/AppWidget42;

    .line 52
    :cond_0
    sget-object v0, Lcom/andrew/apollo/app/widgets/AppWidget42;->sInstance:Lcom/andrew/apollo/app/widgets/AppWidget42;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 96
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 97
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 99
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0e0034

    const v4, 0x7f0e0033

    const/4 v3, 0x0

    .line 206
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    if-eqz p3, :cond_0

    .line 209
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/activities/AudioPlayerHolder;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 211
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 212
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 220
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 222
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 223
    const v2, 0x7f0e002e

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.musicservicecommand.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 227
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 228
    const v2, 0x7f0e002f

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 230
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.musicservicecommand.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 233
    const v2, 0x7f0e002d

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.musicservicecommand.cyclerepeat"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 238
    const v2, 0x7f0e0031

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 240
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.musicservicecommand.toggleshuffle"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 242
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 243
    const v1, 0x7f0e0030

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 244
    return-void

    .line 214
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/activities/MusicLibrary;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 216
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 217
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 83
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 84
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method public notifyChange(Lcom/andrew/apollo/service/ApolloService;Ljava/lang/String;)V
    .locals 1
    .parameter "service"
    .parameter "what"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/andrew/apollo/app/widgets/AppWidget42;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.andrew.apollo.repeatmodechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.andrew.apollo.shufflemodechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andrew/apollo/app/widgets/AppWidget42;->performUpdate(Lcom/andrew/apollo/service/ApolloService;[I)V

    .line 114
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 57
    invoke-direct {p0, p1, p3}, Lcom/andrew/apollo/app/widgets/AppWidget42;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.andrew.apollo.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "appwidgetupdate4x2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 64
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public performUpdate(Lcom/andrew/apollo/service/ApolloService;[I)V
    .locals 10
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    .line 120
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f03000b

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v6, views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, artistName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, albumName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, trackName:Ljava/lang/CharSequence;
    const v7, 0x7f0e0037

    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    const v7, 0x7f0e0036

    invoke-virtual {v6, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 128
    const v7, 0x7f0e0035

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 131
    new-instance v1, Lcom/androidquery/AQuery;

    invoke-direct {v1, p1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 132
    .local v1, aq:Lcom/androidquery/AQuery;
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "albumimage"

    invoke-static {v7, v8, p1}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/androidquery/AQuery;->getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 134
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 135
    const v7, 0x7f0e0033

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 136
    const v7, 0x7f0e0033

    invoke-virtual {v6, v7, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 142
    :goto_0
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->isPlaying()Z

    move-result v4

    .line 143
    .local v4, playing:Z
    if-eqz v4, :cond_1

    .line 144
    const v7, 0x7f0e002e

    const v8, 0x7f020009

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 146
    const v7, 0x7f0e0033

    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 156
    :goto_1
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getRepeatMode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 166
    const v7, 0x7f0e0031

    const v8, 0x7f02000d

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 172
    :goto_2
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getShuffleMode()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 182
    :pswitch_0
    const v7, 0x7f0e0030

    const v8, 0x7f020011

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 187
    :goto_3
    invoke-direct {p0, p1, v6, v4}, Lcom/andrew/apollo/app/widgets/AppWidget42;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 189
    invoke-direct {p0, p1, p2, v6}, Lcom/andrew/apollo/app/widgets/AppWidget42;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 191
    return-void

    .line 138
    .end local v4           #playing:Z
    :cond_0
    const v7, 0x7f0e0033

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 149
    .restart local v4       #playing:Z
    :cond_1
    const v7, 0x7f0e002e

    const v8, 0x7f02000a

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 151
    const v7, 0x7f0e0033

    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f0b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 158
    :pswitch_1
    const v7, 0x7f0e0031

    const v8, 0x7f02000c

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 162
    :pswitch_2
    const v7, 0x7f0e0031

    const v8, 0x7f02000e

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 174
    :pswitch_3
    const v7, 0x7f0e0030

    const v8, 0x7f020010

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    .line 178
    :pswitch_4
    const v7, 0x7f0e0030

    const v8, 0x7f020011

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 172
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
