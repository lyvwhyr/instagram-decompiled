.class public Lcom/instagram/android/model/AutoUpdateInfo;
.super Ljava/lang/Object;
.source "AutoUpdateInfo.java"


# instance fields
.field private minVersion:I

.field private newVersion:I

.field private newVersionUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AutoUpdateInfo()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/instagram/android/model/AutoUpdateInfo;->newVersion:I

    .line 19
    iput v0, p0, Lcom/instagram/android/model/AutoUpdateInfo;->minVersion:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/instagram/android/model/AutoUpdateInfo;->newVersionUrl:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public getMinVersion()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/instagram/android/model/AutoUpdateInfo;->minVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNewVersion()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/instagram/android/model/AutoUpdateInfo;->newVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNewVersionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/model/AutoUpdateInfo;->newVersionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setMinVersion(Ljava/lang/Integer;)V
    .locals 1
    .parameter "minVersion"

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/model/AutoUpdateInfo;->minVersion:I

    .line 45
    return-void
.end method

.method public setNewVersion(Ljava/lang/Integer;)V
    .locals 1
    .parameter "newVersion"

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/model/AutoUpdateInfo;->newVersion:I

    .line 29
    return-void
.end method

.method public setNewVersionUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "newVersionUrl"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/instagram/android/model/AutoUpdateInfo;->newVersionUrl:Ljava/lang/String;

    .line 37
    return-void
.end method
