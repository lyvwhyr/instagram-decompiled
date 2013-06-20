.class Lcom/instagram/android/video/ClipStackManager$1;
.super Ljava/lang/Object;
.source "ClipStackManager.java"

# interfaces
.implements Lcom/instagram/android/video/collections/ObservedStack$StackObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/android/video/collections/ObservedStack$StackObserver",
        "<",
        "Lcom/instagram/android/video/model/Clip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/ClipStackManager;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/ClipStackManager;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/instagram/android/video/ClipStackManager$1;->this$0:Lcom/instagram/android/video/ClipStackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemAdded(Lcom/instagram/android/video/model/Clip;)V
    .locals 2
    .parameter "clip"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager$1;->this$0:Lcom/instagram/android/video/ClipStackManager;

    #getter for: Lcom/instagram/android/video/ClipStackManager;->mStackObserverList:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/video/ClipStackManager;->access$000(Lcom/instagram/android/video/ClipStackManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;

    .line 41
    invoke-interface {v0, p1}, Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;->onClipAdded(Lcom/instagram/android/video/model/Clip;)V

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemAdded(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/instagram/android/video/model/Clip;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/ClipStackManager$1;->onItemAdded(Lcom/instagram/android/video/model/Clip;)V

    return-void
.end method

.method public onItemRemoved(Lcom/instagram/android/video/model/Clip;)V
    .locals 2
    .parameter "clip"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/android/video/ClipStackManager$1;->this$0:Lcom/instagram/android/video/ClipStackManager;

    #getter for: Lcom/instagram/android/video/ClipStackManager;->mStackObserverList:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/video/ClipStackManager;->access$000(Lcom/instagram/android/video/ClipStackManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;

    .line 48
    invoke-interface {v0, p1}, Lcom/instagram/android/video/ClipStackManager$ClipStackManagerChangeListener;->onClipRemoved(Lcom/instagram/android/video/model/Clip;)V

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemRemoved(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/instagram/android/video/model/Clip;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/ClipStackManager$1;->onItemRemoved(Lcom/instagram/android/video/model/Clip;)V

    return-void
.end method
