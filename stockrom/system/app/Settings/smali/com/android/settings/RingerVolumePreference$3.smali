.class Lcom/android/settings/RingerVolumePreference$3;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RingerVolumePreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingerVolumePreference;

.field final synthetic val$linkMuteStates:Landroid/widget/CheckBox;

.field final synthetic val$notificationSection:Landroid/view/View;

.field final synthetic val$ringerDesc:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/RingerVolumePreference;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/RingerVolumePreference$3;->this$0:Lcom/android/settings/RingerVolumePreference;

    iput-object p2, p0, Lcom/android/settings/RingerVolumePreference$3;->val$notificationSection:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/RingerVolumePreference$3;->val$ringerDesc:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/settings/RingerVolumePreference$3;->val$linkMuteStates:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    if-eqz p2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$3;->val$notificationSection:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$3;->val$ringerDesc:Landroid/widget/TextView;

    const v2, 0x7f0b0277

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$3;->val$linkMuteStates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$3;->this$0:Lcom/android/settings/RingerVolumePreference;

    #getter for: Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/RingerVolumePreference;->access$200(Lcom/android/settings/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 247
    .local v0, volume:I
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$3;->this$0:Lcom/android/settings/RingerVolumePreference;

    #getter for: Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/RingerVolumePreference;->access$200(Lcom/android/settings/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 248
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_link_notification"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    .end local v0           #volume:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$3;->this$0:Lcom/android/settings/RingerVolumePreference;

    #calls: Lcom/android/settings/RingerVolumePreference;->updateSlidersAndMutedStates()V
    invoke-static {v1}, Lcom/android/settings/RingerVolumePreference;->access$000(Lcom/android/settings/RingerVolumePreference;)V

    .line 258
    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$3;->val$notificationSection:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$3;->val$ringerDesc:Landroid/widget/TextView;

    const v2, 0x7f0b08a1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$3;->val$linkMuteStates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 254
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_link_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
