.class Lcom/android/settings/profiles/ProfileConfig$StreamItem;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/ProfileConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamItem"
.end annotation


# instance fields
.field mCheckbox:Lcom/android/settings/profiles/StreamVolumePreference;

.field mLabel:Ljava/lang/String;

.field mSettings:Landroid/app/StreamSettings;

.field mStreamId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "streamId"
    .parameter "label"

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput p1, p0, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mStreamId:I

    .line 412
    iput-object p2, p0, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mLabel:Ljava/lang/String;

    .line 413
    return-void
.end method
