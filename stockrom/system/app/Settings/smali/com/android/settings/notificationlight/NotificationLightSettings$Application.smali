.class Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notificationlight/NotificationLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Application"
.end annotation


# instance fields
.field public color:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public timeoff:Ljava/lang/Integer;

.field public timeon:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "name"
    .parameter "color"
    .parameter "timeon"
    .parameter "timeoff"

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->name:Ljava/lang/String;

    .line 485
    iput-object p2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->color:Ljava/lang/Integer;

    .line 486
    iput-object p3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->timeon:Ljava/lang/Integer;

    .line 487
    iput-object p4, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->timeoff:Ljava/lang/Integer;

    .line 488
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    .locals 9
    .parameter "value"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 506
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    .line 522
    :goto_0
    return-object v2

    .line 509
    :cond_0
    const-string v5, "="

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, app:[Ljava/lang/String;
    array-length v5, v0

    if-eq v5, v8, :cond_1

    move-object v2, v4

    .line 511
    goto :goto_0

    .line 513
    :cond_1
    aget-object v5, v0, v6

    const-string v6, ";"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, values:[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    move-object v2, v4

    .line 515
    goto :goto_0

    .line 518
    :cond_2
    :try_start_0
    new-instance v2, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .local v2, item:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    goto :goto_0

    .line 521
    .end local v2           #item:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move-object v2, v4

    .line 522
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->color:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->timeon:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
