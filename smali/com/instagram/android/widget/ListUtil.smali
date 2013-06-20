.class public Lcom/instagram/android/widget/ListUtil;
.super Ljava/lang/Object;
.source "ListUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateProgressBarState(Landroid/os/Handler;ZLandroid/view/View;)V
    .locals 1
    .parameter "uiThread"
    .parameter "isLoading"
    .parameter "parentView"

    .prologue
    .line 14
    new-instance v0, Lcom/instagram/android/widget/ListUtil$1;

    invoke-direct {v0, p2, p1}, Lcom/instagram/android/widget/ListUtil$1;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method
