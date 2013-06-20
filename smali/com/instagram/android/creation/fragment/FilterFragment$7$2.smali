.class Lcom/instagram/android/creation/fragment/FilterFragment$7$2;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/creation/fragment/FilterFragment$7;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7$2;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7$2;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$7;

    iget-object v0, v0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/FilterFragment$7$2;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$7;

    iget-object v0, v0, Lcom/instagram/android/creation/fragment/FilterFragment$7;->this$0:Lcom/instagram/android/creation/fragment/FilterFragment;

    #getter for: Lcom/instagram/android/creation/fragment/FilterFragment;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/FilterFragment;->access$100(Lcom/instagram/android/creation/fragment/FilterFragment;)Lcom/instagram/android/widget/IgProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->show()V

    .line 328
    :cond_0
    return-void
.end method
