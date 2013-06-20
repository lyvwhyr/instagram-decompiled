.class Lcom/instagram/android/login/fragment/RegisterFragment$4$2;
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
    .line 269
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$4$2;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 272
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 273
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$4$2;->this$1:Lcom/instagram/android/login/fragment/RegisterFragment$4;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/RegisterFragment$4;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->submitRegistrationForm()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$700(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    .line 274
    return-void
.end method
