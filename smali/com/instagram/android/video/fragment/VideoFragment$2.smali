.class Lcom/instagram/android/video/fragment/VideoFragment$2;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/VideoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoFragment$2;->this$0:Lcom/instagram/android/video/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoFragment$2;->this$0:Lcom/instagram/android/video/fragment/VideoFragment;

    invoke-virtual {v0, p1}, Lcom/instagram/android/video/fragment/VideoFragment;->onNextButtonPressed(Landroid/view/View;)V

    .line 60
    return-void
.end method
