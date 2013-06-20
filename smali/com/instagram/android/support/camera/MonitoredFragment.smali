.class public Lcom/instagram/android/support/camera/MonitoredFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "MonitoredFragment.java"


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/MonitoredFragment;->mListeners:Ljava/util/ArrayList;

    .line 43
    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/android/support/camera/MonitoredFragment;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/MonitoredFragment;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/instagram/android/support/camera/MonitoredFragment;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;

    .line 71
    invoke-interface {v0, p0}, Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;->onActivityCreated(Lcom/instagram/android/support/camera/MonitoredFragment;)V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/instagram/android/support/camera/MonitoredFragment;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;

    .line 79
    invoke-interface {v0, p0}, Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;->onActivityDestroyed(Lcom/instagram/android/support/camera/MonitoredFragment;)V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStart()V

    .line 86
    iget-object v0, p0, Lcom/instagram/android/support/camera/MonitoredFragment;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;

    .line 87
    invoke-interface {v0, p0}, Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;->onActivityStarted(Lcom/instagram/android/support/camera/MonitoredFragment;)V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 94
    iget-object v0, p0, Lcom/instagram/android/support/camera/MonitoredFragment;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;

    .line 95
    invoke-interface {v0, p0}, Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;->onActivityStopped(Lcom/instagram/android/support/camera/MonitoredFragment;)V

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public removeLifeCycleListener(Lcom/instagram/android/support/camera/MonitoredFragment$LifeCycleListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/support/camera/MonitoredFragment;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
