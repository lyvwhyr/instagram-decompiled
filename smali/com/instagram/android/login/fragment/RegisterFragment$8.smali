.class Lcom/instagram/android/login/fragment/RegisterFragment$8;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$8;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 352
    if-nez p2, :cond_0

    .line 353
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$8;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->performUsernameCheck()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$1400(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    .line 355
    :cond_0
    return-void
.end method
