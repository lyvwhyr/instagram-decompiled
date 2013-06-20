.class public Lcom/instagram/crash/IgCrashReporter;
.super Lorg/acra/reporter/BaseCrashReporter;
.source "IgCrashReporter.java"


# static fields
.field public static final VERIFY_SSL_CERTS:Z = true


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .parameter "application"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/acra/reporter/BaseCrashReporter;-><init>(Landroid/app/Application;)V

    .line 14
    return-void
.end method


# virtual methods
.method public checkSSLCertsOnCrashReport()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method
