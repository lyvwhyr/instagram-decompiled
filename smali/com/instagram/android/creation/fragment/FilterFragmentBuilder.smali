.class public Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;
.super Ljava/lang/Object;
.source "FilterFragmentBuilder.java"


# instance fields
.field mArguments:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public create()Lcom/instagram/android/creation/fragment/FilterFragment;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v0
.end method

.method public setCameraRotation(Ljava/lang/Integer;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;
    .locals 3
    .parameter "cameraRotation"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    const-string v1, "cameraRotation"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    return-object p0
.end method

.method public setCropRect(Landroid/os/Parcelable;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;
    .locals 2
    .parameter "cropRect"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    const-string v1, "cropRect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-object p0
.end method

.method public setLatitude(Ljava/lang/Double;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;
    .locals 4
    .parameter "latitude"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    const-string v1, "latitude"

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 29
    return-object p0
.end method

.method public setLongitude(Ljava/lang/Double;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;
    .locals 4
    .parameter "longitude"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    const-string v1, "longitude"

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 34
    return-object p0
.end method

.method public setMediaSource(I)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;
    .locals 2
    .parameter "mediaSource"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    const-string v1, "mediaSource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    return-object p0
.end method

.method public setMirror(Z)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;
    .locals 2
    .parameter "mirror"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    const-string v1, "mirrorMedia"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    return-object p0
.end method

.method public setOriginalImageHeight(Ljava/lang/Integer;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;
    .locals 3
    .parameter "originalHeight"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    const-string v1, "originalHeight"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    return-object p0
.end method

.method public setOriginalImageWidth(Ljava/lang/Integer;)Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;
    .locals 3
    .parameter "originalWidth"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragmentBuilder;->mArguments:Landroid/os/Bundle;

    const-string v1, "originalWidth"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    return-object p0
.end method
