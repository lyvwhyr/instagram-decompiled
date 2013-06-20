.class Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;
.super Ljava/lang/Object;
.source "SoftDeletePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

.field final synthetic val$deleteButton:Landroid/view/View;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    iput-object p2, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;->val$rect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;->val$deleteButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->dismiss()V

    .line 50
    iget-object v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;->val$rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    #getter for: Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mX:F
    invoke-static {v1}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->access$000(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    #getter for: Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mY:F
    invoke-static {v2}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->access$100(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    #getter for: Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->access$200(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->deleteLastClip()V

    .line 52
    iget-object v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;->val$deleteButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$2;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    #getter for: Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mClipStackManager:Lcom/instagram/android/video/ClipStackManager;
    invoke-static {v0}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->access$200(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;)Lcom/instagram/android/video/ClipStackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/video/ClipStackManager;->cancelSoftDelete()V

    goto :goto_0
.end method
