.class Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$1;
.super Ljava/lang/Object;
.source "AvatarHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks$1;->this$1:Lcom/instagram/api/loaderrequest/AvatarHelper$UpdateProfilePictureCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 248
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 249
    return-void
.end method
