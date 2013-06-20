.class Lcom/instagram/android/fragment/EditProfileFragment$5;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/EditProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/instagram/android/fragment/EditProfileFragment$5;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/instagram/android/fragment/EditProfileFragment$5;->this$0:Lcom/instagram/android/fragment/EditProfileFragment;

    #calls: Lcom/instagram/android/fragment/EditProfileFragment;->saveEdits()V
    invoke-static {v0}, Lcom/instagram/android/fragment/EditProfileFragment;->access$600(Lcom/instagram/android/fragment/EditProfileFragment;)V

    .line 216
    return-void
.end method
