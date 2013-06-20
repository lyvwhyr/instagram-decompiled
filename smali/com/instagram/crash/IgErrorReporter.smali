.class public Lcom/instagram/crash/IgErrorReporter;
.super Ljava/lang/Object;
.source "IgErrorReporter.java"


# static fields
.field private static mErrorReporter:Lcom/facebook/common/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCrashReportEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->getAppType()Lcom/instagram/android/InstagramAppType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/InstagramAppType;->getCrashReportEndpoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/facebook/common/a/d;
    .locals 5

    .prologue
    .line 27
    sget-object v0, Lcom/instagram/crash/IgErrorReporter;->mErrorReporter:Lcom/facebook/common/a/d;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/facebook/common/a/d;

    new-instance v1, Lcom/instagram/crash/IsEmployeeProvider;

    invoke-direct {v1}, Lcom/instagram/crash/IsEmployeeProvider;-><init>()V

    new-instance v2, Lcom/instagram/crash/IsBetaBuildProvider;

    invoke-direct {v2}, Lcom/instagram/crash/IsBetaBuildProvider;-><init>()V

    new-instance v3, Lcom/instagram/crash/IgCrashExecutorServiceProvider;

    invoke-direct {v3}, Lcom/instagram/crash/IgCrashExecutorServiceProvider;-><init>()V

    invoke-virtual {v3}, Lcom/instagram/crash/IgCrashExecutorServiceProvider;->get()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/common/a/d;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;)V

    sput-object v0, Lcom/instagram/crash/IgErrorReporter;->mErrorReporter:Lcom/facebook/common/a/d;

    .line 32
    sget-object v0, Lcom/instagram/crash/IgErrorReporter;->mErrorReporter:Lcom/facebook/common/a/d;

    invoke-static {}, Lcom/instagram/crash/IgErrorReporter;->getCrashReportEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/common/a/d;->a(Ljava/lang/String;)V

    .line 34
    :cond_0
    sget-object v0, Lcom/instagram/crash/IgErrorReporter;->mErrorReporter:Lcom/facebook/common/a/d;

    return-object v0
.end method

.method public static softReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "category"
    .parameter "message"

    .prologue
    .line 45
    invoke-static {}, Lcom/instagram/crash/IgErrorReporter;->getInstance()Lcom/facebook/common/a/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/common/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static softReportWithCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "category"
    .parameter "message"

    .prologue
    .line 41
    invoke-static {}, Lcom/instagram/crash/IgErrorReporter;->getInstance()Lcom/facebook/common/a/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/common/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
