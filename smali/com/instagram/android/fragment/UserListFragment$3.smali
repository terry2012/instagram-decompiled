.class Lcom/instagram/android/fragment/UserListFragment$3;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$3;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 232
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 233
    return-void
.end method
