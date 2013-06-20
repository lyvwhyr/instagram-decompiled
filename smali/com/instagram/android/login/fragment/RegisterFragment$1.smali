.class Lcom/instagram/android/login/fragment/RegisterFragment$1;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

.field final synthetic val$emailSuggestion:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$1;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/RegisterFragment$1;->val$emailSuggestion:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$1;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->email:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$1;->val$emailSuggestion:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method
