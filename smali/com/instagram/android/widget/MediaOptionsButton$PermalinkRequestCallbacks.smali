.class Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;
.super Lcom/instagram/api/AbstractStreamingApiCallbacks;
.source "MediaOptionsButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/AbstractStreamingApiCallbacks",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/MediaOptionsButton;


# direct methods
.method private constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    invoke-direct {p0}, Lcom/instagram/api/AbstractStreamingApiCallbacks;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton;Lcom/instagram/android/widget/MediaOptionsButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;-><init>(Lcom/instagram/android/widget/MediaOptionsButton;)V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$1000(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2;-><init>(Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 210
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "permalink"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$1000(Lcom/instagram/android/widget/MediaOptionsButton;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$1;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$1;-><init>(Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method
