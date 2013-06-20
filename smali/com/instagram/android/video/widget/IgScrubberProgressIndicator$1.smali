.class Lcom/instagram/android/video/widget/IgScrubberProgressIndicator$1;
.super Ljava/lang/Object;
.source "IgScrubberProgressIndicator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/widget/IgScrubberProgressIndicator;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/widget/IgScrubberProgressIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/instagram/android/video/widget/IgScrubberProgressIndicator$1;->this$0:Lcom/instagram/android/video/widget/IgScrubberProgressIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 101
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 97
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 105
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 92
    return-void
.end method
