.class Lcom/instagram/android/creation/fragment/FilterFragment$7;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/FilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/instagram/android/creation/fragment/FilterFragment$7;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment$7;->performAcceptRender()V

    return-void
.end method

.method private performAcceptRender()V
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->requestRender()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 314
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$102(Lcom/instagram/android/creation/fragment/FilterFragment;Lcom/instagram/android/widget/IgProgressDialog;)Lcom/instagram/android/widget/IgProgressDialog;

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    new-instance v1, Lcom/instagram/android/widget/IgProgressDialog;

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    invoke-virtual {v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/widget/IgProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0, v1}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$102(Lcom/instagram/android/creation/fragment/FilterFragment;Lcom/instagram/android/widget/IgProgressDialog;)Lcom/instagram/android/widget/IgProgressDialog;

    .line 318
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    sget v2, Lcom/facebook/k;->processing:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/creation/fragment/FilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setCancelable(Z)V

    .line 322
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$600(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragment$7$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$7$2;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment$7;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment;->renderFullsizeBitmap()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1200(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    .line 332
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mTiltShiftEnabled:Z
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$200(Lcom/instagram/android/creation/fragment/FilterFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #calls: Lcom/instagram/android/creation/fragment/FilterFragment;->removeMaskHighlight()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$1000(Lcom/instagram/android/creation/fragment/FilterFragment;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->getRenderMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mFilterView:Lcom/instagram/android/gl/FilterGLSurfaceView;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$400(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/gl/FilterGLSurfaceView;->setRenderMode(I)V

    .line 296
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$600(Lcom/instagram/android/creation/fragment/FilterFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/fragment/FilterFragment$7$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/FilterFragment$7$1;-><init>(Lcom/instagram/android/creation/fragment/FilterFragment$7;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/FilterFragment$7;->performAcceptRender()V

    goto :goto_0
.end method
