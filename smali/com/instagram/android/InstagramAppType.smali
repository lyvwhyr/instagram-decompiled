.class public Lcom/instagram/android/InstagramAppType;
.super Ljava/lang/Object;
.source "InstagramAppType.java"


# instance fields
.field private final mBugReportTagId:Ljava/lang/String;

.field private final mClientConfigKey:Ljava/lang/String;

.field private final mCrashReportEndpoint:Ljava/lang/String;

.field private final mMapsApiKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mapsApiKey"
    .parameter "clientConfigKey"
    .parameter "bugReportTagId"
    .parameter "crashReportEndpoint"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/instagram/android/InstagramAppType;->mMapsApiKey:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/instagram/android/InstagramAppType;->mClientConfigKey:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/instagram/android/InstagramAppType;->mBugReportTagId:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/instagram/android/InstagramAppType;->mCrashReportEndpoint:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getBugReportTagId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/InstagramAppType;->mBugReportTagId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientConfigKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/android/InstagramAppType;->mClientConfigKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashReportEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/InstagramAppType;->mCrashReportEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getMapsApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/android/InstagramAppType;->mMapsApiKey:Ljava/lang/String;

    return-object v0
.end method
