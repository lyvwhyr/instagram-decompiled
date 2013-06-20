.class Lcom/instagram/android/fragment/ChangePasswordFragment$2;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Lcom/instagram/android/login/PasswordValidator$TextChangedListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$2;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$2;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #calls: Lcom/instagram/android/fragment/ChangePasswordFragment;->maybeEnableSaveButton()V
    invoke-static {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$100(Lcom/instagram/android/fragment/ChangePasswordFragment;)V

    .line 65
    return-void
.end method
