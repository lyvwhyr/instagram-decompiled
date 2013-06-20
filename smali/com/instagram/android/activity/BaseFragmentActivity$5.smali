.class Lcom/instagram/android/activity/BaseFragmentActivity$5;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Landroid/support/v4/app/q;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/BaseFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/instagram/android/activity/BaseFragmentActivity$5;->this$0:Lcom/instagram/android/activity/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/instagram/android/activity/BaseFragmentActivity$5;->this$0:Lcom/instagram/android/activity/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/BaseFragmentActivity;->configureActionBar()V

    .line 132
    return-void
.end method
