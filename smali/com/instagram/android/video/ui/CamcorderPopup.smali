.class public Lcom/instagram/android/video/ui/CamcorderPopup;
.super Landroid/widget/PopupWindow;
.source "CamcorderPopup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "backgroundResId"
    .parameter "txtResId"

    .prologue
    const/4 v2, -0x2

    .line 17
    invoke-static {p1, p2, p3}, Lcom/instagram/android/video/ui/CamcorderPopup;->getContentView(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 21
    return-void
.end method

.method private static getContentView(Landroid/content/Context;II)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "backgroundResId"
    .parameter "txtResId"

    .prologue
    .line 24
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->popup_camcorder:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 25
    sget v0, Lcom/facebook/g;->popup_root:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    sget v0, Lcom/facebook/g;->popup_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 27
    return-object v1
.end method
