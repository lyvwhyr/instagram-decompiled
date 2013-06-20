.class Lcom/instagram/android/fragment/CommentThreadFragment$16;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "CommentThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$16;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/Object;>;"
    return-void
.end method

.method public onRequestFinished()V
    .locals 0

    .prologue
    .line 578
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestFinished()V

    .line 579
    return-void
.end method

.method public onRequestStart()V
    .locals 0

    .prologue
    .line 573
    invoke-super {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;->onRequestStart()V

    .line 574
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "responseObject"

    .prologue
    .line 564
    return-void
.end method
