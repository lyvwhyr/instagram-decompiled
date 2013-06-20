.class Lcom/instagram/android/video/ui/MediaActionsView$1;
.super Lcom/instagram/android/widget/SimpleAnimationListener;
.source "MediaActionsView.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/ui/MediaActionsView;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/ui/MediaActionsView;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/android/video/ui/MediaActionsView$1;->this$0:Lcom/instagram/android/video/ui/MediaActionsView;

    invoke-direct {p0}, Lcom/instagram/android/widget/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView$1;->this$0:Lcom/instagram/android/video/ui/MediaActionsView;

    #getter for: Lcom/instagram/android/video/ui/MediaActionsView;->mHeartView:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/video/ui/MediaActionsView;->access$000(Lcom/instagram/android/video/ui/MediaActionsView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-void
.end method
