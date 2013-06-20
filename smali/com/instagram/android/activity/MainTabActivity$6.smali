.class Lcom/instagram/android/activity/MainTabActivity$6;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/MainTabActivity;

.field final synthetic val$comments:I

.field final synthetic val$likes:I

.field final synthetic val$peopleTags:I

.field final synthetic val$relationships:I


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity$6;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    iput p2, p0, Lcom/instagram/android/activity/MainTabActivity$6;->val$comments:I

    iput p3, p0, Lcom/instagram/android/activity/MainTabActivity$6;->val$likes:I

    iput p4, p0, Lcom/instagram/android/activity/MainTabActivity$6;->val$relationships:I

    iput p5, p0, Lcom/instagram/android/activity/MainTabActivity$6;->val$peopleTags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 778
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$6;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    iget v1, p0, Lcom/instagram/android/activity/MainTabActivity$6;->val$comments:I

    iget v2, p0, Lcom/instagram/android/activity/MainTabActivity$6;->val$likes:I

    iget v3, p0, Lcom/instagram/android/activity/MainTabActivity$6;->val$relationships:I

    iget v4, p0, Lcom/instagram/android/activity/MainTabActivity$6;->val$peopleTags:I

    #calls: Lcom/instagram/android/activity/MainTabActivity;->showToast(IIII)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/android/activity/MainTabActivity;->access$200(Lcom/instagram/android/activity/MainTabActivity;IIII)V

    .line 779
    return-void
.end method
