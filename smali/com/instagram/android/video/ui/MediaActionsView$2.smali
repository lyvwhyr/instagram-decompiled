.class Lcom/instagram/android/video/ui/MediaActionsView$2;
.super Lcom/instagram/android/widget/SimpleAnimationListener;
.source "MediaActionsView.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/ui/MediaActionsView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/ui/MediaActionsView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/instagram/android/video/ui/MediaActionsView$2;->this$0:Lcom/instagram/android/video/ui/MediaActionsView;

    iput-object p2, p0, Lcom/instagram/android/video/ui/MediaActionsView$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/android/widget/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/instagram/android/video/ui/MediaActionsView$2;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    return-void
.end method
