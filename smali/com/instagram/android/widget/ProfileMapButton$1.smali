.class Lcom/instagram/android/widget/ProfileMapButton$1;
.super Ljava/lang/Object;
.source "ProfileMapButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/ProfileMapButton;

.field final synthetic val$user:Lcom/instagram/android/model/User;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/ProfileMapButton;Lcom/instagram/android/model/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/instagram/android/widget/ProfileMapButton$1;->this$0:Lcom/instagram/android/widget/ProfileMapButton;

    iput-object p2, p0, Lcom/instagram/android/widget/ProfileMapButton$1;->val$user:Lcom/instagram/android/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/android/widget/ProfileMapButton$1;->this$0:Lcom/instagram/android/widget/ProfileMapButton;

    invoke-virtual {v0}, Lcom/instagram/android/widget/ProfileMapButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/widget/ProfileMapButton$1;->val$user:Lcom/instagram/android/model/User;

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/maps/util/MapsUtils;->launchPhotoMapForUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    return-void
.end method
