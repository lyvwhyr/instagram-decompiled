.class public Lcom/instagram/util/AlphaHelper;
.super Ljava/lang/Object;
.source "AlphaHelper.java"


# instance fields
.field private mHideAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShowAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAnimation(F)Landroid/view/animation/AlphaAnimation;
    .locals 3
    .parameter "alpha"

    .prologue
    .line 18
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 19
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 21
    return-object v0
.end method

.method private getHideAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/util/AlphaHelper;->mHideAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/util/AlphaHelper;->createAnimation(F)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/util/AlphaHelper;->mHideAnimation:Landroid/view/animation/AlphaAnimation;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/instagram/util/AlphaHelper;->mHideAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private getShowAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/util/AlphaHelper;->mShowAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 26
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/instagram/util/AlphaHelper;->createAnimation(F)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/util/AlphaHelper;->mShowAnimation:Landroid/view/animation/AlphaAnimation;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/instagram/util/AlphaHelper;->mShowAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private setAlphaNewAPI(Landroid/view/View;F)V
    .locals 0
    .parameter "v"
    .parameter "alpha"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 49
    return-void
.end method


# virtual methods
.method public hide(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/util/AlphaHelper;->setAlpha(Landroid/view/View;F)V

    .line 44
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 2
    .parameter "v"
    .parameter "alpha"

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/instagram/util/AlphaHelper;->setAlphaNewAPI(Landroid/view/View;F)V

    .line 66
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/instagram/util/AlphaHelper;->getHideAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 64
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 59
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/instagram/util/AlphaHelper;->getShowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    goto :goto_1

    .line 62
    :cond_2
    invoke-direct {p0, p2}, Lcom/instagram/util/AlphaHelper;->createAnimation(F)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    goto :goto_1
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 39
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/instagram/util/AlphaHelper;->setAlpha(Landroid/view/View;F)V

    .line 40
    return-void
.end method
