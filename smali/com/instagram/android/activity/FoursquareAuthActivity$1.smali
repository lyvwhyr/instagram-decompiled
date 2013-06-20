.class Lcom/instagram/android/activity/FoursquareAuthActivity$1;
.super Landroid/webkit/WebViewClient;
.source "FoursquareAuthActivity.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/FoursquareAuthActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/FoursquareAuthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/activity/FoursquareAuthActivity$1;->this$0:Lcom/instagram/android/activity/FoursquareAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/activity/FoursquareAuthActivity$1;->this$0:Lcom/instagram/android/activity/FoursquareAuthActivity;

    #calls: Lcom/instagram/android/activity/FoursquareAuthActivity;->containsAccessTokenFragment(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/instagram/android/activity/FoursquareAuthActivity;->access$000(Lcom/instagram/android/activity/FoursquareAuthActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/instagram/android/activity/FoursquareAuthActivity$1;->this$0:Lcom/instagram/android/activity/FoursquareAuthActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/FoursquareAuthActivity$1;->this$0:Lcom/instagram/android/activity/FoursquareAuthActivity;

    #calls: Lcom/instagram/android/activity/FoursquareAuthActivity;->getAccessTokenFragment(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/instagram/android/activity/FoursquareAuthActivity;->access$100(Lcom/instagram/android/activity/FoursquareAuthActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/instagram/android/activity/FoursquareAuthActivity;->handleAccessTokenFragment(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/instagram/android/activity/FoursquareAuthActivity;->access$200(Lcom/instagram/android/activity/FoursquareAuthActivity;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method
