.class public Lcom/instagram/android/widget/CommentAutoCompleteTextView;
.super Lcom/instagram/android/widget/IgAutoCompleteTextView;
.source "CommentAutoCompleteTextView.java"


# instance fields
.field private mBackButtonListener:Lcom/instagram/android/widget/CommentAutoCompleteTextView$BackButtonListener;

.field private mSimpleChangedLayoutListener:Lcom/instagram/android/widget/CommentAutoCompleteTextView$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/widget/IgAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/widget/IgAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 29
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 31
    iget-object v1, p0, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->mBackButtonListener:Lcom/instagram/android/widget/CommentAutoCompleteTextView$BackButtonListener;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->mBackButtonListener:Lcom/instagram/android/widget/CommentAutoCompleteTextView$BackButtonListener;

    invoke-interface {v1}, Lcom/instagram/android/widget/CommentAutoCompleteTextView$BackButtonListener;->onBack()V

    .line 37
    :goto_0
    return v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_1
    invoke-super {p0, p2}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->mSimpleChangedLayoutListener:Lcom/instagram/android/widget/CommentAutoCompleteTextView$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->mSimpleChangedLayoutListener:Lcom/instagram/android/widget/CommentAutoCompleteTextView$OnLayoutChangeListener;

    invoke-interface {v0, p0}, Lcom/instagram/android/widget/CommentAutoCompleteTextView$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->onLayout(ZIIII)V

    .line 47
    return-void
.end method

.method public setBackButtonListener(Lcom/instagram/android/widget/CommentAutoCompleteTextView$BackButtonListener;)V
    .locals 0
    .parameter "backButtonListener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->mBackButtonListener:Lcom/instagram/android/widget/CommentAutoCompleteTextView$BackButtonListener;

    .line 51
    return-void
.end method

.method public setSimpleChangedLayoutListener(Lcom/instagram/android/widget/CommentAutoCompleteTextView$OnLayoutChangeListener;)V
    .locals 0
    .parameter "simpleChangedLayoutListener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/instagram/android/widget/CommentAutoCompleteTextView;->mSimpleChangedLayoutListener:Lcom/instagram/android/widget/CommentAutoCompleteTextView$OnLayoutChangeListener;

    .line 56
    return-void
.end method
