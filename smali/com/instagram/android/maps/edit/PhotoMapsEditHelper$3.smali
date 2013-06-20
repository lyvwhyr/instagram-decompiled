.class Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

.field final synthetic val$withSuccess:Z


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iput-boolean p2, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;->val$withSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;->val$withSuccess:Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    new-instance v1, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1;-><init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mProgressDialog:Lcom/instagram/android/widget/IgProgressDialog;

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgProgressDialog;->dismiss()V

    .line 126
    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #calls: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->addErrorDialog()V
    invoke-static {v0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$500(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;)V

    goto :goto_0
.end method
