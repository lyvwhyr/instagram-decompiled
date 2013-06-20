.class Lcom/instagram/android/video/gl/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mActive:Z

.field final synthetic this$0:Lcom/instagram/android/video/gl/GLRootView;


# direct methods
.method private constructor <init>(Lcom/instagram/android/video/gl/GLRootView;)V
    .locals 1
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/video/gl/GLRootView;Lcom/instagram/android/video/gl/GLRootView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;-><init>(Lcom/instagram/android/video/gl/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->mActive:Z

    .line 486
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    invoke-virtual {v0, p0}, Lcom/instagram/android/video/gl/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLRootView;->access$200(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    monitor-enter v1

    .line 465
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->mActive:Z

    .line 466
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLRootView;->access$200(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 480
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLRootView;->access$200(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/gl/GLRoot$OnGLIdleListener;

    .line 468
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 469
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLRootView;->access$300(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 472
    :try_start_1
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mCanvas:Lcom/instagram/android/video/gl/GLCanvas;
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLRootView;->access$400(Lcom/instagram/android/video/gl/GLRootView;)Lcom/instagram/android/video/gl/GLCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mRenderRequested:Z
    invoke-static {v2}, Lcom/instagram/android/video/gl/GLRootView;->access$500(Lcom/instagram/android/video/gl/GLRootView;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/android/video/gl/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/instagram/android/video/gl/GLCanvas;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v1

    .line 474
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/instagram/android/video/gl/GLRootView;->access$300(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 476
    iget-object v2, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/instagram/android/video/gl/GLRootView;->access$200(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    monitor-enter v2

    .line 477
    if-eqz v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLRootView;->access$200(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mRenderRequested:Z
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLRootView;->access$500(Lcom/instagram/android/video/gl/GLRootView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLRootView;->access$200(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->enable()V

    .line 479
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 468
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 474
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/instagram/android/video/gl/GLRootView$IdleRunner;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #getter for: Lcom/instagram/android/video/gl/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/instagram/android/video/gl/GLRootView;->access$300(Lcom/instagram/android/video/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
