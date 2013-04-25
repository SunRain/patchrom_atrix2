.class public Lcom/andrew/apollo/app/widgets/AppWidget11;
.super Landroid/appwidget/AppWidgetProvider;
.source "AppWidget11.java"


# static fields
.field public static final CMDAPPWIDGETUPDATE:Ljava/lang/String; = "appwidgetupdate1x1"

.field private static sInstance:Lcom/andrew/apollo/app/widgets/AppWidget11;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 57
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030013

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 60
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0e004c

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 62
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/andrew/apollo/app/widgets/AppWidget11;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/andrew/apollo/app/widgets/AppWidget11;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 64
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/andrew/apollo/app/widgets/AppWidget11;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/andrew/apollo/app/widgets/AppWidget11;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/andrew/apollo/app/widgets/AppWidget11;->sInstance:Lcom/andrew/apollo/app/widgets/AppWidget11;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/andrew/apollo/app/widgets/AppWidget11;

    invoke-direct {v0}, Lcom/andrew/apollo/app/widgets/AppWidget11;-><init>()V

    sput-object v0, Lcom/andrew/apollo/app/widgets/AppWidget11;->sInstance:Lcom/andrew/apollo/app/widgets/AppWidget11;

    .line 36
    :cond_0
    sget-object v0, Lcom/andrew/apollo/app/widgets/AppWidget11;->sInstance:Lcom/andrew/apollo/app/widgets/AppWidget11;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 82
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 83
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 85
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
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 145
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 150
    const v1, 0x7f0e004c

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 152
    return-void
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 69
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 70
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 75
    :goto_0
    return-void

    .line 73
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
    .line 92
    invoke-direct {p0, p1}, Lcom/andrew/apollo/app/widgets/AppWidget11;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/andrew/apollo/app/widgets/AppWidget11;->performUpdate(Lcom/andrew/apollo/service/ApolloService;[I)V

    .line 98
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 41
    invoke-direct {p0, p1, p3}, Lcom/andrew/apollo/app/widgets/AppWidget11;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.andrew.apollo.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "appwidgetupdate1x1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 48
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public performUpdate(Lcom/andrew/apollo/service/ApolloService;[I)V
    .locals 7
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    const v6, 0x7f0e004c

    .line 104
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030013

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v3, views:Landroid/widget/RemoteViews;
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, aq:Lcom/androidquery/AQuery;
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "albumimage"

    invoke-static {v4, v5, p1}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/androidquery/AQuery;->getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 111
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 112
    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    invoke-virtual {v3, v6, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 118
    :goto_0
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->isPlaying()Z

    move-result v2

    .line 119
    .local v2, playing:Z
    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 128
    :goto_1
    invoke-direct {p0, p1, v3, v2}, Lcom/andrew/apollo/app/widgets/AppWidget11;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 130
    invoke-direct {p0, p1, p2, v3}, Lcom/andrew/apollo/app/widgets/AppWidget11;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 131
    return-void

    .line 115
    .end local v2           #playing:Z
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 123
    .restart local v2       #playing:Z
    :cond_1
    invoke-virtual {p1}, Lcom/andrew/apollo/service/ApolloService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method
