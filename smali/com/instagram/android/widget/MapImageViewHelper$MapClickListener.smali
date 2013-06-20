.class public Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;
.super Ljava/lang/Object;
.source "MapImageViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLatitude:Ljava/lang/Double;

.field private final mLongitude:Ljava/lang/Double;

.field private final mName:Ljava/lang/CharSequence;

.field private final mZoom:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "name"
    .parameter "zoom"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mLatitude:Ljava/lang/Double;

    .line 56
    iput-object p3, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mLongitude:Ljava/lang/Double;

    .line 57
    iput-object p4, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mName:Ljava/lang/CharSequence;

    .line 58
    iput-object p5, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mZoom:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mZoom:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)Ljava/lang/Double;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mLatitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)Ljava/lang/Double;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mLongitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 64
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v1, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v1, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener$1;-><init>(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)V

    .line 81
    sget v2, Lcom/facebook/k;->open_in_maps:I

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v2, Lcom/facebook/k;->open:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v2, Lcom/facebook/k;->cancel:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 86
    return-void
.end method
