.class Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;
.super Ljava/lang/Object;
.source "LightLevelsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/LightLevelsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7f0b06c7

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 355
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    invoke-virtual {v7}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    const/16 v9, 0x539

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v0, v5

    .line 357
    .local v0, autoLcd:Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    invoke-virtual {v7}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "light_filter"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 361
    .local v2, filterEnabled:Z
    :goto_1
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 363
    .local v3, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 364
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSensor:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$100(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/os/IPowerManager;->getLightSensorValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Landroid/os/IPowerManager;->getRawLightSensorValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :goto_2
    if-eqz v0, :cond_4

    .line 371
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mScreen:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$200(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v3}, Landroid/os/IPowerManager;->getLightSensorScreenBrightness()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    :goto_3
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mButtons:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$300(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v3}, Landroid/os/IPowerManager;->getLightSensorButtonBrightness()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasKeyboard:Z
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$400(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKeyboard:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$500(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v3}, Landroid/os/IPowerManager;->getLightSensorKeyboardBrightness()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v3           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_4
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$700(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$600(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x190

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    return-void

    .end local v0           #autoLcd:Z
    .end local v2           #filterEnabled:Z
    :cond_1
    move v0, v6

    .line 355
    goto/16 :goto_0

    .restart local v0       #autoLcd:Z
    :cond_2
    move v2, v6

    .line 357
    goto/16 :goto_1

    .line 367
    .restart local v2       #filterEnabled:Z
    .restart local v3       #power:Landroid/os/IPowerManager;
    :cond_3
    :try_start_1
    invoke-interface {v3}, Landroid/os/IPowerManager;->getLightSensorValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSensor:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$100(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 379
    .end local v3           #power:Landroid/os/IPowerManager;
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 382
    .local v1, e:Ljava/lang/Exception;
    if-eqz v0, :cond_5

    .line 383
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mScreen:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$200(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :goto_5
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSensor:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$100(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "- / -"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mButtons:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$300(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKeyboard:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$500(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 373
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #power:Landroid/os/IPowerManager;
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mScreen:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$200(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    const v7, 0x7f0b06c7

    invoke-virtual {v6, v7}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 385
    .end local v3           #power:Landroid/os/IPowerManager;
    .restart local v1       #e:Ljava/lang/Exception;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #getter for: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mScreen:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$200(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    invoke-virtual {v6, v10}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
