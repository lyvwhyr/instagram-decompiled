.class public abstract Lcom/instagram/android/widget/ClickableNameSpan;
.super Landroid/text/style/ClickableSpan;
.source "ClickableNameSpan.java"


# instance fields
.field protected mIsBold:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/widget/ClickableNameSpan;-><init>(Z)V

    .line 18
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "isBold"

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/instagram/android/widget/ClickableNameSpan;->mIsBold:Z

    .line 14
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/android/widget/ClickableNameSpan;->mIsBold:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 23
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 24
    return-void
.end method
