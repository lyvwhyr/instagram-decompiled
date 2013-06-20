.class Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient$1;
.super Ljava/lang/Object;
.source "FlickrAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient$1;->this$1:Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient$1;->this$1:Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient;

    iget-object v0, v0, Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient;->this$0:Lcom/instagram/android/activity/FlickrAuthActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/FlickrAuthActivity;->setResult(I)V

    .line 97
    iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient$1;->this$1:Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient;

    iget-object v0, v0, Lcom/instagram/android/activity/FlickrAuthActivity$OAuthWebViewClient;->this$0:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->finish()V

    .line 98
    return-void
.end method
