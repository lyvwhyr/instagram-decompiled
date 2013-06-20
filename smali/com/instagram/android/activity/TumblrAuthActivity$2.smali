.class Lcom/instagram/android/activity/TumblrAuthActivity$2;
.super Ljava/lang/Object;
.source "TumblrAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

.field final synthetic val$fragment:Landroid/support/v4/app/DialogFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/TumblrAuthActivity;Landroid/support/v4/app/DialogFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/instagram/android/activity/TumblrAuthActivity$2;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    iput-object p2, p0, Lcom/instagram/android/activity/TumblrAuthActivity$2;->val$fragment:Landroid/support/v4/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$2;->val$fragment:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$2;->val$fragment:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 147
    :cond_0
    return-void
.end method
