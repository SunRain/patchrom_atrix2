.class Lcom/android/settings/profiles/ProfileConnectionPreference$2;
.super Ljava/lang/Object;
.source "ProfileConnectionPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/ProfileConnectionPreference;->createConnectionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/ProfileConnectionPreference;

.field final synthetic val$ConnectionValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfileConnectionPreference;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/profiles/ProfileConnectionPreference;

    iput-object p2, p0, Lcom/android/settings/profiles/ProfileConnectionPreference$2;->val$ConnectionValues:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/profiles/ProfileConnectionPreference;

    #getter for: Lcom/android/settings/profiles/ProfileConnectionPreference;->currentChoice:I
    invoke-static {v1}, Lcom/android/settings/profiles/ProfileConnectionPreference;->access$000(Lcom/android/settings/profiles/ProfileConnectionPreference;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConnectionPreference$2;->val$ConnectionValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/profiles/ProfileConnectionPreference;

    #getter for: Lcom/android/settings/profiles/ProfileConnectionPreference;->currentChoice:I
    invoke-static {v2}, Lcom/android/settings/profiles/ProfileConnectionPreference;->access$000(Lcom/android/settings/profiles/ProfileConnectionPreference;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, value:I
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/profiles/ProfileConnectionPreference;

    #getter for: Lcom/android/settings/profiles/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfileConnectionPreference;->access$100(Lcom/android/settings/profiles/ProfileConnectionPreference;)Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    invoke-virtual {v1, v0}, Landroid/app/ConnectionSettings;->setValue(I)V

    .line 143
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/profiles/ProfileConnectionPreference;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/profiles/ProfileConnectionPreference;

    invoke-virtual {v1}, Lcom/android/settings/profiles/ProfileConnectionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b07bf

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    .end local v0           #value:I
    :cond_0
    return-void

    .line 143
    .restart local v0       #value:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/profiles/ProfileConnectionPreference;

    invoke-virtual {v1}, Lcom/android/settings/profiles/ProfileConnectionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b07be

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
