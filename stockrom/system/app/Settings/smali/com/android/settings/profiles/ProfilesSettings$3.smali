.class Lcom/android/settings/profiles/ProfilesSettings$3;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/ProfilesSettings;->addAppGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/ProfilesSettings;

.field final synthetic val$entry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfilesSettings;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->val$entry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->val$entry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    #getter for: Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v2}, Lcom/android/settings/profiles/ProfilesSettings;->access$000(Lcom/android/settings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProfileManager;->notificationGroupExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    new-instance v1, Landroid/app/NotificationGroup;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->val$entry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/NotificationGroup;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, newGroup:Landroid/app/NotificationGroup;
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    #getter for: Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v2}, Lcom/android/settings/profiles/ProfilesSettings;->access$000(Lcom/android/settings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 333
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    iget-object v2, v2, Lcom/android/settings/profiles/ProfilesSettings;->mTabManager:Lcom/android/settings/profiles/ProfilesSettings$TabManager;

    const-string v3, "appgroups"

    invoke-virtual {v2, v3}, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->refreshTab(Ljava/lang/String;)V

    .line 337
    .end local v1           #newGroup:Landroid/app/NotificationGroup;
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$3;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    invoke-virtual {v2}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07b5

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
