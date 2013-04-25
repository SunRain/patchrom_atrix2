.class Lcom/android/settings/profiles/VibratorPreference$2;
.super Ljava/lang/Object;
.source "VibratorPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/VibratorPreference;->createVibratorDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/VibratorPreference;

.field final synthetic val$VibratorValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/VibratorPreference;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/profiles/VibratorPreference$2;->this$0:Lcom/android/settings/profiles/VibratorPreference;

    iput-object p2, p0, Lcom/android/settings/profiles/VibratorPreference$2;->val$VibratorValues:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/settings/profiles/VibratorPreference$2;->this$0:Lcom/android/settings/profiles/VibratorPreference;

    #getter for: Lcom/android/settings/profiles/VibratorPreference;->currentChoice:I
    invoke-static {v1}, Lcom/android/settings/profiles/VibratorPreference;->access$000(Lcom/android/settings/profiles/VibratorPreference;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/settings/profiles/VibratorPreference$2;->val$VibratorValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/profiles/VibratorPreference$2;->this$0:Lcom/android/settings/profiles/VibratorPreference;

    #getter for: Lcom/android/settings/profiles/VibratorPreference;->currentChoice:I
    invoke-static {v2}, Lcom/android/settings/profiles/VibratorPreference;->access$000(Lcom/android/settings/profiles/VibratorPreference;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, value:I
    iget-object v1, p0, Lcom/android/settings/profiles/VibratorPreference$2;->this$0:Lcom/android/settings/profiles/VibratorPreference;

    #getter for: Lcom/android/settings/profiles/VibratorPreference;->mVibratorItem:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;
    invoke-static {v1}, Lcom/android/settings/profiles/VibratorPreference;->access$100(Lcom/android/settings/profiles/VibratorPreference;)Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mSettings:Landroid/app/VibratorSettings;

    invoke-virtual {v1, v0}, Landroid/app/VibratorSettings;->setValue(I)V

    .line 145
    packed-switch v0, :pswitch_data_0

    .line 153
    iget-object v1, p0, Lcom/android/settings/profiles/VibratorPreference$2;->this$0:Lcom/android/settings/profiles/VibratorPreference;

    iget-object v2, p0, Lcom/android/settings/profiles/VibratorPreference$2;->this$0:Lcom/android/settings/profiles/VibratorPreference;

    invoke-virtual {v2}, Lcom/android/settings/profiles/VibratorPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b07c2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/profiles/VibratorPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    .end local v0           #value:I
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local v0       #value:I
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/profiles/VibratorPreference$2;->this$0:Lcom/android/settings/profiles/VibratorPreference;

    iget-object v2, p0, Lcom/android/settings/profiles/VibratorPreference$2;->this$0:Lcom/android/settings/profiles/VibratorPreference;

    invoke-virtual {v2}, Lcom/android/settings/profiles/VibratorPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b07c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/profiles/VibratorPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/profiles/VibratorPreference$2;->this$0:Lcom/android/settings/profiles/VibratorPreference;

    iget-object v2, p0, Lcom/android/settings/profiles/VibratorPreference$2;->this$0:Lcom/android/settings/profiles/VibratorPreference;

    invoke-virtual {v2}, Lcom/android/settings/profiles/VibratorPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b07c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/profiles/VibratorPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
