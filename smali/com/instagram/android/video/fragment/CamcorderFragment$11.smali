.class Lcom/instagram/android/video/fragment/CamcorderFragment$11;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

.field final synthetic val$window:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$11;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    iput-object p2, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$11;->val$window:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$11;->val$window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1162
    return-void
.end method
