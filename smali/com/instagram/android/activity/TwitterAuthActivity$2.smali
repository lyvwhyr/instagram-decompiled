.class Lcom/instagram/android/activity/TwitterAuthActivity$2;
.super Ljava/lang/Object;
.source "TwitterAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/TwitterAuthActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/TwitterAuthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/instagram/android/activity/TwitterAuthActivity$2;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/android/activity/TwitterAuthActivity$2;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/TwitterAuthActivity$2;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    #calls: Lcom/instagram/android/activity/TwitterAuthActivity;->getUsername()Ljava/lang/String;
    invoke-static {v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->access$100(Lcom/instagram/android/activity/TwitterAuthActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/activity/TwitterAuthActivity$2;->this$0:Lcom/instagram/android/activity/TwitterAuthActivity;

    #calls: Lcom/instagram/android/activity/TwitterAuthActivity;->getPassword()Ljava/lang/String;
    invoke-static {v2}, Lcom/instagram/android/activity/TwitterAuthActivity;->access$200(Lcom/instagram/android/activity/TwitterAuthActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/instagram/android/activity/TwitterAuthActivity;->connectTwitter(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/activity/TwitterAuthActivity;->access$300(Lcom/instagram/android/activity/TwitterAuthActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
