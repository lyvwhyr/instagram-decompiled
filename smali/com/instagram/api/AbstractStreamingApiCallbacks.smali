.class public abstract Lcom/instagram/api/AbstractStreamingApiCallbacks;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "AbstractStreamingApiCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/AbstractApiCallbacks",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFinished()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public onRequestStart()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
