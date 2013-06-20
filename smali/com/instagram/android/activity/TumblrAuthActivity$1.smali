.class Lcom/instagram/android/activity/TumblrAuthActivity$1;
.super Ljava/lang/Object;
.source "TumblrAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/TumblrAuthActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/TumblrAuthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/instagram/android/activity/TumblrAuthActivity$1;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/android/activity/TumblrAuthActivity$1;->this$0:Lcom/instagram/android/activity/TumblrAuthActivity;

    #calls: Lcom/instagram/android/activity/TumblrAuthActivity;->showProgressDialog()V
    invoke-static {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->access$000(Lcom/instagram/android/activity/TumblrAuthActivity;)V

    .line 37
    return-void
.end method
