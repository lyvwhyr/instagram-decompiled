.class Lcom/instagram/android/login/fragment/RegisterFragment$4$1;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/login/fragment/RegisterFragment$4;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$4$1;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 280
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$4$1;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$4;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/RegisterFragment$4;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->email:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 281
    return-void
.end method
