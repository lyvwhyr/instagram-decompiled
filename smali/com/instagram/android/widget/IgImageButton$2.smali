.class Lcom/instagram/android/widget/IgImageButton$2;
.super Ljava/lang/Object;
.source "IgImageButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/IgImageButton;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/IgImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/instagram/android/widget/IgImageButton$2;->this$0:Lcom/instagram/android/widget/IgImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 149
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 153
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/instagram/android/widget/IgImageButton$2;->this$0:Lcom/instagram/android/widget/IgImageButton;

    #getter for: Lcom/instagram/android/widget/IgImageButton;->mImageView:Lcom/instagram/android/widget/ConstrainedImageView;
    invoke-static {v0}, Lcom/instagram/android/widget/IgImageButton;->access$400(Lcom/instagram/android/widget/IgImageButton;)Lcom/instagram/android/widget/ConstrainedImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/ConstrainedImageView;->setDrawFrameDecorationNewStyle(Z)V

    .line 145
    return-void
.end method
