.class public Lcom/instagram/android/video/api/VideoUploadUrl;
.super Ljava/lang/Object;
.source "VideoUploadUrl.java"


# instance fields
.field private final mExpires:Ljava/util/Date;

.field private final mJob:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter "url"
    .parameter "job"
    .parameter "expires"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/instagram/android/video/api/VideoUploadUrl;->mUrl:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/instagram/android/video/api/VideoUploadUrl;->mJob:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/instagram/android/video/api/VideoUploadUrl;->mExpires:Ljava/util/Date;

    .line 19
    return-void
.end method


# virtual methods
.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/video/api/VideoUploadUrl;->mExpires:Ljava/util/Date;

    return-object v0
.end method

.method public getJob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/video/api/VideoUploadUrl;->mJob:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/video/api/VideoUploadUrl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
