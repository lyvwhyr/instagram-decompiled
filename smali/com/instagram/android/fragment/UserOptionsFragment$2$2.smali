.class Lcom/instagram/android/fragment/UserOptionsFragment$2$2;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserOptionsFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2$2;->this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 133
    new-instance v0, Lcom/instagram/android/login/task/LogoutTask;

    iget-object v1, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2$2;->this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;

    iget-object v1, v1, Lcom/instagram/android/fragment/UserOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/UserOptionsFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/UserOptionsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/login/task/LogoutTask;-><init>(Landroid/support/v4/app/p;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/task/LogoutTask;->execute([Ljava/lang/Object;)Lcom/instagram/android/mediacache/IgAsyncTask;

    .line 134
    return-void
.end method
