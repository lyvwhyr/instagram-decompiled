.class Lcom/instagram/android/activity/XAuthActivity$1;
.super Ljava/lang/Object;
.source "XAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/XAuthActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/XAuthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/instagram/android/activity/XAuthActivity$1;->this$0:Lcom/instagram/android/activity/XAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/activity/XAuthActivity$1;->this$0:Lcom/instagram/android/activity/XAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/XAuthActivity;->onBackPressed()V

    .line 37
    return-void
.end method
