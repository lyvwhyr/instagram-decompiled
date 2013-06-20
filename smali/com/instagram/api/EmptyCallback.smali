.class public Lcom/instagram/api/EmptyCallback;
.super Lcom/instagram/api/AbstractApiCallbacks;
.source "EmptyCallback.java"


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
    .line 9
    invoke-direct {p0}, Lcom/instagram/api/AbstractApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, this:Lcom/instagram/api/EmptyCallback;,"Lcom/instagram/api/EmptyCallback<TT;>;"
    .local p1, responseObject:Ljava/lang/Object;,"TT;"
    return-void
.end method
