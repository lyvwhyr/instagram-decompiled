.class public Lcom/instagram/android/video/ui/SoftDeletePopupWindow;
.super Landroid/widget/PopupWindow;
.source "SoftDeletePopupWindow.java"


# instance fields
.field private final mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/video/ClipStackManager;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "clipStackManager"
    .parameter "deleteButton"

    .prologue
    const/4 v1, -0x1

    .line 23
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 26
    iput-object p2, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 29
    invoke-virtual {p3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 31
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;-><init>(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;

    invoke-direct {v2, p0, v0, p3}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;-><init>(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mX:F

    return v0
.end method

.method static synthetic access$002(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mX:F

    return p1
.end method

.method static synthetic access$100(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mY:F

    return v0
.end method

.method static synthetic access$102(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mY:F

    return p1
.end method

.method static synthetic access$200(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;)Lcom/instagram/android/video/ClipStackManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;

    return-object v0
.end method
