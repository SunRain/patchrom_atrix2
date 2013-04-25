.class Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/ProfileConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionItem"
.end annotation


# instance fields
.field mCheckbox:Lcom/android/settings/profiles/ProfileConnectionPreference;

.field mConnectionId:I

.field mLabel:Ljava/lang/String;

.field mSettings:Landroid/app/ConnectionSettings;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "connectionId"
    .parameter "label"

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput p1, p0, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    .line 424
    iput-object p2, p0, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    .line 425
    return-void
.end method
