.class final Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$1;
.super Lcom/instagram/android/widget/ClickableNameSpan;
.source "ReviewPhotoHeaderRow.java"


# instance fields
.field final synthetic val$showDeselectAll:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 35
    iput-boolean p2, p0, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$1;->val$showDeselectAll:Z

    invoke-direct {p0, p1}, Lcom/instagram/android/widget/ClickableNameSpan;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "widget"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$1;->val$showDeselectAll:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->removeAllPublishFlag()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->reverseAllPublishFlag()V

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .parameter "ds"

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/instagram/android/widget/ClickableNameSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 40
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/d;->light_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 41
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 42
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 43
    return-void
.end method
