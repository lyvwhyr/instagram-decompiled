.class Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

.field final synthetic val$gravity:I

.field final synthetic val$parent:Landroid/view/View;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;Landroid/view/View;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    iput-object p2, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->val$parent:Landroid/view/View;

    iput p3, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->val$gravity:I

    iput p4, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->val$x:I

    iput p5, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 776
    const-string v0, "FilterFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rendermode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    iget-object v2, v2, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getRenderMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->val$parent:Landroid/view/View;

    iget v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->val$gravity:I

    iget v3, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->val$x:I

    iget v4, p0, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow$2;->val$y:I

    #calls: Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;->access$2401(Lcom/instagram/android/creation/fragment/FilterFragment$GLPopupWindow;Landroid/view/View;III)V

    .line 778
    return-void
.end method
