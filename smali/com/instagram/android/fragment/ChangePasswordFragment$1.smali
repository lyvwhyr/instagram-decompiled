.class Lcom/instagram/android/fragment/ChangePasswordFragment$1;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ChangePasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$1;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/fragment/ChangePasswordFragment$1;->this$0:Lcom/instagram/android/fragment/ChangePasswordFragment;

    #calls: Lcom/instagram/android/fragment/ChangePasswordFragment;->saveEdits()V
    invoke-static {v0}, Lcom/instagram/android/fragment/ChangePasswordFragment;->access$000(Lcom/instagram/android/fragment/ChangePasswordFragment;)V

    .line 55
    return-void
.end method
