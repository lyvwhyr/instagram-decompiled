.class Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask$1;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2400(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;

    iget-object v0, v0, Lcom/instagram/android/video/fragment/CamcorderFragment$ProcessClipsTask;->this$0:Lcom/instagram/android/video/fragment/CamcorderFragment;

    #getter for: Lcom/instagram/android/video/fragment/CamcorderFragment;->mDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/CamcorderFragment;->access$2400(Lcom/instagram/android/video/fragment/CamcorderFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->show()V

    .line 1428
    :cond_0
    return-void
.end method
