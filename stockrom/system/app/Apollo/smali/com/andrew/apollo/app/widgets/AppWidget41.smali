.class public Lcom/andrew/apollo/app/widgets/AppWidget41;
.super Landroid/appwidget/AppWidgetProvider;
.source "AppWidget41.java"


# static fields
.field public static final CMDAPPWIDGETUPDATE:Ljava/lang/String; = "appwidgetupdate4x1"

.field private static sInstance:Lcom/andrew/apollo/app/widgets/AppWidget41;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 74
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 77
    .local v0, views:Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/andrew/apollo/app/widgets/AppWidget41;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/andrew/apollo/app/widgets/AppWidget41;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 79
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/andrew/apollo/app/widgets/AppWidget41;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/andrew/apollo/app/widgets/AppWidget41;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/andrew/apollo/app/widgets/AppWidget41;->sInstance:Lcom/andrew/apollo/app/widgets/AppWidget41;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/andrew/apollo/app/widgets/AppWidget41;

    invoke-direct {v0}, Lcom/andrew/apollo/app/widgets/AppWidget41;-><init>()V

    sput-object v0, Lcom/andrew/apollo/app/widgets/AppWidget41;->sInstance:Lcom/andrew/apollo/app/widgets/AppWidget41;

    .line 53
    :cond_0
    sget-object v0, Lcom/andrew/apollo/app/widgets/AppWidget41;->sInstance:Lcom/andrew/apollo/app/widgets/AppWidget41;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 97
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 98
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 100
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
    const v5, 0x7f0e0025

    const v4, 0x7f0e0024

    const/4 v3, 0x0

    .line 172
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    if-eqz p3, :cond_0

    .line 175
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/activities/AudioPlayerHolder;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 177
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 178
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 186
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 188
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 189
    const v2, 0x7f0e0029

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 191
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.musicservicecommand.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 194
    const v2, 0x7f0e002a

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.musicservicecommand.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 198
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 199
    const v1, 0x7f0e0028

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 200
    return-void

    .line 180
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/activities/MusicLibrary;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 182
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 183
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 84
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 85
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 90
    :goto_0
    return-void

    .line 88
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
    .line 107
    invoke-direct {p0, p1}, Lcom/andrew/apollo/app/widgets/AppWidget41;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andrew/apollo/app/widgets/AppWidget41;->performUpdate(Lcom/andrew/apollo/service/ApolloService;[I)V

    .line 113
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 58
    invoke-direct {p0, p1, p3}, Lcom/andrew/apollo/app/widgets/AppWidget41;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.andrew.apollo.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "appwidgetupdate4x1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 65
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public performUpdate(Lcom/andrew/apollo/service/ApolloService;[I)V
    .locals 13
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    const v12, 0x7f0e0029

    const v11, 0x7f0e0028

    const/16 v10, 0x8

    const/4 v9, 0x0

    const v8, 0x7f0e0024

    .line 119
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f03000a

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 122
    .local v5, views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, titleName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, artistName:Ljava/lang/CharSequence;
    const v6, 0x7f0e0026

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 126
    const v6, 0x7f0e0027

    invoke-virtual {v5, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 128
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, aq:Lcom/androidquery/AQuery;
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "albumimage"

    invoke-static {v6, v7, p1}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/androidquery/AQuery;->getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 131
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v5, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 133
    invoke-virtual {v5, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 134
    invoke-virtual {v5, v8, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 141
    :goto_0
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->isPlaying()Z

    move-result v3

    .line 142
    .local v3, playing:Z
    if-eqz v3, :cond_1

    .line 143
    const v6, 0x7f020009

    invoke-virtual {v5, v12, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 145
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 155
    :goto_1
    invoke-direct {p0, p1, v5, v3}, Lcom/andrew/apollo/app/widgets/AppWidget41;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 157
    invoke-direct {p0, p1, p2, v5}, Lcom/andrew/apollo/app/widgets/AppWidget41;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 158
    return-void

    .line 136
    .end local v3           #playing:Z
    :cond_0
    invoke-virtual {v5, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    invoke-virtual {v5, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 148
    .restart local v3       #playing:Z
    :cond_1
    const v6, 0x7f02000a

    invoke-virtual {v5, v12, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 150
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method
