.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# instance fields
.field private final mCameraId:I

.field private final mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private final mContext:Landroid/content/Context;

.field private final mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter "activity"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 93
    iput p3, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 94
    iput-object p4, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 95
    return-void
.end method

.method private buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V
    .locals 8
    .parameter "group"
    .parameter "preference"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 270
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v3, v6

    .line 271
    .local v3, numOfCameras:I
    if-ge v3, v7, :cond_0

    .line 272
    invoke-virtual {p2}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 288
    :goto_0
    return-void

    .line 276
    :cond_0
    new-array v0, v7, [Ljava/lang/CharSequence;

    .line 277
    .local v0, entryValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 278
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v6, v6, v1

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v4, :cond_2

    move v2, v4

    .line 282
    .local v2, index:I
    :goto_2
    aget-object v6, v0, v2

    if-nez v6, :cond_4

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 284
    if-ne v2, v4, :cond_3

    move v6, v5

    :goto_3
    aget-object v6, v0, v6

    if-eqz v6, :cond_4

    .line 287
    .end local v2           #index:I
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/camera/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v2, v5

    .line 278
    goto :goto_2

    .restart local v2       #index:I
    :cond_3
    move v6, v4

    .line 284
    goto :goto_3

    .line 277
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V
    .locals 11
    .parameter "group"
    .parameter "exposure"

    .prologue
    .line 245
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    .line 246
    .local v4, max:I
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    .line 247
    .local v6, min:I
    if-nez v4, :cond_0

    if-nez v6, :cond_0

    .line 248
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 266
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v8

    .line 254
    .local v8, step:F
    int-to-float v9, v4

    mul-float/2addr v9, v8

    invoke-static {v9}, Landroid/util/FloatMath;->floor(F)F

    move-result v9

    float-to-int v5, v9

    .line 255
    .local v5, maxValue:I
    int-to-float v9, v6

    mul-float/2addr v9, v8

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v7, v9

    .line 256
    .local v7, minValue:I
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/lang/CharSequence;

    .line 257
    .local v1, entries:[Ljava/lang/CharSequence;
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 258
    .local v2, entryValues:[Ljava/lang/CharSequence;
    move v3, v7

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_2

    .line 259
    sub-int v9, v5, v3

    int-to-float v10, v3

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v0, builder:Ljava/lang/StringBuilder;
    if-lez v3, :cond_1

    const/16 v9, 0x2b

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    sub-int v9, v5, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p2, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p2, v2}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static dumpParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 594
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 595
    .local v0, sortedParams:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 596
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/PreferenceGroup;",
            "Lcom/android/camera/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 312
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 313
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 324
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 318
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 319
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 323
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    goto :goto_0
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cameraId"
    .parameter "defaultQuality"

    .prologue
    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    .local v0, quality:I
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getSupportedVideoQuality()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v0, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_0
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_1
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_2
    return-object v0
.end method

.method private initPreference(Lcom/android/camera/PreferenceGroup;)V
    .locals 14
    .parameter "group"

    .prologue
    .line 182
    const-string v13, "pref_video_quality_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v11

    .line 183
    .local v11, videoQuality:Lcom/android/camera/ListPreference;
    const-string v13, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 184
    .local v8, timeLapseInterval:Lcom/android/camera/ListPreference;
    const-string v13, "pref_camera_picturesize_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 185
    .local v6, pictureSize:Lcom/android/camera/ListPreference;
    const-string v13, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    .line 186
    .local v12, whiteBalance:Lcom/android/camera/ListPreference;
    const-string v13, "pref_camera_scenemode_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 187
    .local v7, sceneMode:Lcom/android/camera/ListPreference;
    const-string v13, "pref_camera_flashmode_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 188
    .local v2, flashMode:Lcom/android/camera/ListPreference;
    const-string v13, "pref_camera_focusmode_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 189
    .local v3, focusMode:Lcom/android/camera/ListPreference;
    const-string v13, "pref_camera_exposure_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 190
    .local v1, exposure:Lcom/android/camera/ListPreference;
    const-string v13, "pref_camera_id_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 192
    .local v0, cameraIdPref:Lcom/android/camera/IconListPreference;
    const-string v13, "pref_camera_video_flashmode_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    .line 194
    .local v10, videoFlashMode:Lcom/android/camera/ListPreference;
    const-string v13, "pref_video_effect_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 195
    .local v9, videoEffect:Lcom/android/camera/ListPreference;
    const-string v13, "pref_camera_iso_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 196
    .local v4, iso:Lcom/android/camera/ListPreference;
    const-string v13, "pref_camera_jpeg_key"

    invoke-virtual {p1, v13}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 200
    .local v5, jpeg:Lcom/android/camera/ListPreference;
    if-eqz v11, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality()Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {p0, p1, v11, v13}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 204
    :cond_0
    if-eqz v6, :cond_1

    .line 205
    iget-object v13, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    invoke-direct {p0, p1, v6, v13}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 208
    :cond_1
    if-eqz v12, :cond_2

    .line 209
    iget-object v13, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v13

    invoke-direct {p0, p1, v12, v13}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 212
    :cond_2
    if-eqz v7, :cond_3

    .line 213
    iget-object v13, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v13

    invoke-direct {p0, p1, v7, v13}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 216
    :cond_3
    if-eqz v2, :cond_4

    .line 217
    iget-object v13, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v13

    invoke-direct {p0, p1, v2, v13}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 220
    :cond_4
    if-eqz v3, :cond_5

    .line 221
    iget-object v13, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v13

    invoke-direct {p0, p1, v3, v13}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 224
    :cond_5
    if-eqz v10, :cond_6

    .line 225
    iget-object v13, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v13

    invoke-direct {p0, p1, v10, v13}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 228
    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0, p1, v1}, Lcom/android/camera/CameraSettings;->buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 229
    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraSettings;->buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    .line 231
    :cond_8
    if-eqz v8, :cond_9

    invoke-direct {p0, v8}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 232
    :cond_9
    if-eqz v9, :cond_a

    .line 233
    invoke-direct {p0, p1, v9}, Lcom/android/camera/CameraSettings;->initVideoEffect(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 234
    invoke-direct {p0, v9}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 236
    :cond_a
    if-eqz v4, :cond_b

    .line 237
    iget-object v13, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v13

    invoke-direct {p0, p1, v4, v13}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 240
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/camera/CameraSettings;->qcomInitPreferences(Lcom/android/camera/PreferenceGroup;)V

    .line 241
    return-void
.end method

.method private initVideoEffect(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V
    .locals 10
    .parameter "group"
    .parameter "videoEffect"

    .prologue
    const/4 v1, 0x1

    .line 573
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 575
    .local v8, values:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->isEffectSupported(I)Z

    move-result v3

    .line 577
    .local v3, goofyFaceSupported:Z
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/camera/EffectsRecorder;->isEffectSupported(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 582
    .local v1, backdropperSupported:Z
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v6, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v7, v0, v4

    .line 584
    .local v7, value:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, effectSelection:Ljava/lang/String;
    if-nez v3, :cond_2

    const-string v9, "goofy_face"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 583
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 577
    .end local v0           #arr$:[Ljava/lang/CharSequence;
    .end local v1           #backdropperSupported:Z
    .end local v2           #effectSelection:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #value:Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 586
    .restart local v0       #arr$:[Ljava/lang/CharSequence;
    .restart local v1       #backdropperSupported:Z
    .restart local v2       #effectSelection:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #value:Ljava/lang/CharSequence;
    :cond_2
    if-nez v1, :cond_3

    const-string v9, "backdropper"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 587
    :cond_3
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 590
    .end local v2           #effectSelection:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/CharSequence;
    :cond_4
    invoke-direct {p0, p1, p2, v6}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 591
    return-void
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 120
    .local v5, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v5, :cond_0

    .line 132
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 123
    .local v1, candidate:Ljava/lang/String;
    invoke-static {v1, v5, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    invoke-static {p0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 126
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_camera_picturesize_key"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 121
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    .end local v1           #candidate:Ljava/lang/String;
    :cond_2
    const-string v6, "CameraSettings"

    const-string v7, "No supported picture size found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private qcomInitPreferences(Lcom/android/camera/PreferenceGroup;)V
    .locals 5
    .parameter "group"

    .prologue
    .line 156
    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {p1, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 157
    .local v2, colorEffect:Lcom/android/camera/ListPreference;
    const-string v4, "pref_camera_autoexposure_key"

    invoke-virtual {p1, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 158
    .local v1, autoExposure:Lcom/android/camera/ListPreference;
    const-string v4, "pref_camera_antibanding_key"

    invoke-virtual {p1, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 159
    .local v0, antiBanding:Lcom/android/camera/ListPreference;
    const-string v4, "pref_camera_redeyereduction_key"

    invoke-virtual {p1, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 161
    .local v3, redeyeReduction:Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_0

    .line 162
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedRedeyeReductionModes()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 166
    :cond_0
    if-eqz v2, :cond_1

    .line 167
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 171
    :cond_1
    if-eqz v0, :cond_2

    .line 172
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v0, v4}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 175
    :cond_2
    if-eqz v1, :cond_3

    .line 176
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 179
    :cond_3
    return-void
.end method

.method public static readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 7
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 463
    const-string v4, "pref_video_effect_key"

    const-string v5, "none"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, effectSelection:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 491
    :cond_0
    :goto_0
    return-object v0

    .line 467
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 468
    .local v2, separatorIndex:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, effectParameter:Ljava/lang/String;
    const-string v4, "goofy_face"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 471
    const-string v4, "squeeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 472
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_2
    const-string v4, "big_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 474
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_3
    const-string v4, "big_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 476
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_4
    const-string v4, "small_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 478
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_5
    const-string v4, "big_nose"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 480
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_6
    const-string v4, "small_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 482
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 484
    :cond_7
    const-string v4, "backdropper"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 490
    :cond_8
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid effect selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 491
    goto/16 :goto_0
.end method

.method public static readEffectType(Landroid/content/SharedPreferences;)I
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 450
    const-string v2, "pref_video_effect_key"

    const-string v3, "none"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, effectSelection:Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    :goto_0
    return v1

    .line 453
    :cond_0
    const-string v2, "goofy_face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    const/4 v1, 0x1

    goto :goto_0

    .line 455
    :cond_1
    const-string v2, "backdropper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    const/4 v1, 0x2

    goto :goto_0

    .line 458
    :cond_2
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid effect selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readExposure(Lcom/android/camera/ComboPreferences;)I
    .locals 5
    .parameter "preferences"

    .prologue
    .line 438
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, exposure:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 446
    :goto_0
    return v2

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exposure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 427
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 291
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 292
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    .line 293
    .local v0, child:Lcom/android/camera/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 294
    check-cast v3, Lcom/android/camera/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 304
    .end local v0           #child:Lcom/android/camera/CameraPreference;
    :goto_1
    return v3

    .line 298
    .restart local v0       #child:Lcom/android/camera/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/camera/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/camera/ListPreference;

    .end local v0           #child:Lcom/android/camera/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 301
    goto :goto_1

    .line 291
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "group"
    .parameter "key"

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 137
    return-void
.end method

.method private resetIfInvalid(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 330
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 332
    :cond_0
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"

    .prologue
    const/4 v5, -0x1

    .line 497
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 500
    .local v1, currentCameraId:I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 501
    .local v0, backCameraId:I
    if-eq v0, v5, :cond_0

    .line 502
    invoke-virtual {p1, p0, v0}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 503
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 504
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 507
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    .line 508
    .local v3, frontCameraId:I
    if-eq v3, v5, :cond_1

    .line 509
    invoke-virtual {p1, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 510
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 511
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 512
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 517
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 519
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 520
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 525
    invoke-static {p0, p2}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 526
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 527
    return-void
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 141
    const/16 v6, 0x78

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 142
    .local v2, index:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v5

    .line 143
    :cond_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 144
    .local v4, width:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 146
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v4, :cond_2

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, v0, :cond_2

    .line 147
    invoke-virtual {p2, v4, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 148
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static setEarlyVideoSize(Landroid/hardware/Camera$Parameters;Landroid/media/CamcorderProfile;)V
    .locals 3
    .parameter "params"
    .parameter "profile"

    .prologue
    .line 567
    invoke-static {}, Lcom/android/camera/Util;->needsEarlyVideoSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "video-size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_0
    return-void
.end method

.method public static setVideoMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "params"
    .parameter "on"

    .prologue
    .line 552
    invoke-static {}, Lcom/android/camera/Util;->useSamsungCamMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const-string v1, "cam_mode"

    if-eqz p1, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->useHTCCamMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    const-string v1, "cam-mode"

    if-eqz p1, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_1
    return-void

    .line 553
    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 556
    :cond_3
    const-string v0, "0"

    goto :goto_1
.end method

.method private static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 337
    .local v2, size:Landroid/hardware/Camera$Size;
    const-string v3, "%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method

.method private static upgradeCameraId(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 417
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 418
    .local v0, cameraId:I
    if-nez v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    .line 421
    .local v1, n:I
    if-ltz v0, :cond_2

    if-lt v0, v1, :cond_0

    .line 422
    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method public static upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 362
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->upgradeOldVersion(Landroid/content/SharedPreferences;)V

    .line 363
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->upgradeCameraId(Landroid/content/SharedPreferences;)V

    .line 364
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v5, 0x2

    .line 345
    :try_start_0
    const-string v3, "pref_local_version_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 349
    .local v2, version:I
    :goto_0
    if-ne v2, v5, :cond_0

    .line 359
    :goto_1
    return-void

    .line 346
    .end local v2           #version:I
    :catch_0
    move-exception v1

    .line 347
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2       #version:I
    goto :goto_0

    .line 351
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 352
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 355
    const-string v3, "pref_video_quality_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    :cond_1
    const-string v3, "pref_local_version_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private static upgradeOldVersion(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 369
    :try_start_0
    const-string v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 373
    .local v3, version:I
    :goto_0
    if-ne v3, v7, :cond_0

    .line 410
    :goto_1
    return-void

    .line 370
    .end local v3           #version:I
    :catch_0
    move-exception v1

    .line 371
    .local v1, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #version:I
    goto :goto_0

    .line 375
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 376
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 379
    const/4 v3, 0x1

    .line 381
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 383
    const-string v4, "pref_camera_jpegquality_key"

    const-string v5, "85"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, quality:Ljava/lang/String;
    const-string v4, "65"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 385
    const-string v2, "normal"

    .line 391
    :goto_2
    const-string v4, "pref_camera_jpegquality_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    const/4 v3, 0x2

    .line 394
    .end local v2           #quality:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 395
    const-string v5, "pref_camera_recordlocation_key"

    const-string v4, "pref_camera_recordlocation_key"

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "on"

    :goto_3
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    const/4 v3, 0x3

    .line 401
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 404
    const-string v4, "pref_camera_videoquality_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    const-string v4, "pref_camera_video_duration_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 408
    :cond_4
    const-string v4, "pref_version_key"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 386
    .restart local v2       #quality:Ljava/lang/String;
    :cond_5
    const-string v4, "75"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 387
    const-string v2, "fine"

    goto :goto_2

    .line 389
    :cond_6
    const-string v2, "superfine"

    goto :goto_2

    .line 395
    .end local v2           #quality:Ljava/lang/String;
    :cond_7
    const-string v4, "none"

    goto :goto_3
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 432
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 435
    return-void
.end method


# virtual methods
.method public getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;
    .locals 3
    .parameter "preferenceRes"

    .prologue
    .line 98
    new-instance v1, Lcom/android/camera/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, inflater:Lcom/android/camera/PreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    .line 101
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->initPreference(Lcom/android/camera/PreferenceGroup;)V

    .line 102
    return-object v0
.end method
