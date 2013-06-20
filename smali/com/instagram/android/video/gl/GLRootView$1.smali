.class Lcom/instagram/android/video/gl/GLRootView$1;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/gl/GLRootView;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/gl/GLRootView;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/instagram/android/video/gl/GLRootView$1;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/instagram/android/video/gl/GLRootView$1;->this$0:Lcom/instagram/android/video/gl/GLRootView;

    #calls: Lcom/instagram/android/video/gl/GLRootView;->superRequestRender()V
    invoke-static {v0}, Lcom/instagram/android/video/gl/GLRootView;->access$100(Lcom/instagram/android/video/gl/GLRootView;)V

    .line 186
    return-void
.end method
