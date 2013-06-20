.class public Lcom/instagram/android/news/widget/CustomToastPopupWindow;
.super Ljava/lang/Object;
.source "CustomToastPopupWindow.java"


# static fields
.field private static final DELAY:I = 0x1b58


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .parameter "anchorView"
    .parameter "windowWidth"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mHandler:Landroid/os/Handler;

    .line 24
    iput-object p1, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mAnchorView:Landroid/view/View;

    .line 25
    iput p2, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mWindowWidth:I

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/news/widget/CustomToastPopupWindow;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private configureView(Lcom/instagram/android/news/widget/CustomToastView;IIII)V
    .locals 2
    .parameter "view"
    .parameter "comments"
    .parameter "likes"
    .parameter "relationships"
    .parameter "tags"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/instagram/android/news/widget/CustomToastView;->setCounts(IIII)V

    .line 115
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/android/news/widget/CustomToastView;->measure(II)V

    .line 119
    return-void
.end method

.method private createAndShowPopupWindow(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 122
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 125
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/facebook/l;->CustomToast_Fade:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 128
    iget-object v1, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 130
    iget-object v1, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mAnchorView:Landroid/view/View;

    const/16 v3, 0x51

    const/4 v4, 0x0

    aget v0, v0, v4

    iget-object v4, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mWindowWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 136
    return-void
.end method

.method private createView()Lcom/instagram/android/news/widget/CustomToastView;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/instagram/android/news/widget/CustomToastView;

    iget-object v1, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/news/widget/CustomToastView;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v1, Lcom/instagram/android/news/widget/CustomToastPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/news/widget/CustomToastPopupWindow$2;-><init>(Lcom/instagram/android/news/widget/CustomToastPopupWindow;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/news/widget/CustomToastView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 62
    :cond_0
    iput-object v1, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 63
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 89
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 75
    if-nez p1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/facebook/l;->CustomToast_Fade:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 77
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 80
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    goto :goto_0
.end method

.method public show(IIII)V
    .locals 6
    .parameter "comments"
    .parameter "likes"
    .parameter "relationships"
    .parameter "tags"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/news/widget/CustomToastView;

    move-object v1, v0

    :goto_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->configureView(Lcom/instagram/android/news/widget/CustomToastView;IIII)V

    .line 39
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 40
    invoke-direct {p0, v1}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->createAndShowPopupWindow(Landroid/view/View;)V

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/news/widget/CustomToastPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/news/widget/CustomToastPopupWindow$1;-><init>(Lcom/instagram/android/news/widget/CustomToastPopupWindow;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->createView()Lcom/instagram/android/news/widget/CustomToastView;

    move-result-object v1

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Lcom/instagram/android/news/widget/CustomToastView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/instagram/android/news/widget/CustomToastView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_1
.end method
