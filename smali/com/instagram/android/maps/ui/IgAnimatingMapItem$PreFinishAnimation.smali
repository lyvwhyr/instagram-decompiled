.class Lcom/instagram/android/maps/ui/IgAnimatingMapItem$PreFinishAnimation;
.super Landroid/view/animation/Animation;
.source "IgAnimatingMapItem.java"


# static fields
.field public static final FINISH_TIME_INTERPOLATED:F = 0.9f


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem$PreFinishAnimation;->this$0:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 209
    const v0, 0x3f666666

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem$PreFinishAnimation;->this$0:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimationPreFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem$PreFinishAnimation;->this$0:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    #getter for: Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimation:Z
    invoke-static {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->access$000(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem$PreFinishAnimation;->this$0:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->mReverseAnimationPreFinishListener:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem$PreFinishAnimation;->this$0:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-interface {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;->onPreFinish(Landroid/view/View;)V

    .line 214
    :cond_0
    return-void
.end method
