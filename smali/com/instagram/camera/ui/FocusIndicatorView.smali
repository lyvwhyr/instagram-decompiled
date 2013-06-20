.class public Lcom/instagram/camera/ui/FocusIndicatorView;
.super Landroid/view/View;
.source "FocusIndicatorView.java"

# interfaces
.implements Lcom/instagram/camera/ui/FocusIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method private setDrawable(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/instagram/camera/ui/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/facebook/f;->ic_focus_failed:I

    invoke-direct {p0, v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->setDrawable(I)V

    .line 35
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/facebook/f;->ic_focus_focusing:I

    invoke-direct {p0, v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->setDrawable(I)V

    .line 25
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/facebook/f;->ic_focus_focused:I

    invoke-direct {p0, v0}, Lcom/instagram/camera/ui/FocusIndicatorView;->setDrawable(I)V

    .line 30
    return-void
.end method
