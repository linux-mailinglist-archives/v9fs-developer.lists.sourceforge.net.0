Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 297054EF8A4
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Apr 2022 19:07:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1naKjo-0002u3-Br; Fri, 01 Apr 2022 17:07:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1naKjf-0002tS-71
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Apr 2022 17:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jFGqPDhlqc8KEIpDKFpuOlQuvuFYmdqjb8dDnetXz3A=; b=TdtnLkB4kWfzQkkTjoz6/3efuT
 uDy8kYRaenJM8T+XYPZYRDv+AXJzpLM6aCkIJ+q+pHzIS+jcQhccFI+qvcSvWoJqCio1pIyf6V2P0
 x+l3WgTULsOR/yIvL7cQDvJUf6d4FqeZAKQfFwySLyB6vPDKDkf2LrRl23lUSKiFsSqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jFGqPDhlqc8KEIpDKFpuOlQuvuFYmdqjb8dDnetXz3A=; b=gF38Tn4t4E55zgPCdmBGx8DKUL
 q2xuhFzqpgEH+j2e0cTpm4HJ4SLeDRlWbBX7sy+sjyikMJ9pAVFdv4yXyZbQy3MW2Xlj3ealUoxjv
 weYoBE0K11MUmXVe1PzltFwcmVVL76x8mEoUy7PW5Ul6J/JtD5U4xSUCrSRJr080I6nY=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1naKja-0005s8-6s
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Apr 2022 17:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=jFGqPDhlqc8KEIpDKFpuOlQuvuFYmdqjb8dDnetXz3A=; b=aoJUV8eIqztrA7sMTQarMWXhCg
 x5/pEgywEa4S/5QDlcHYV0XU8CwmSJ/1mYnw9fxlBaBJDY+glbfChpWtECPNvT8lw5IUteoc0E0z8
 gDeuqqWByLGeME2C59nlScbt72lFY9QdKwb2njxpBCisi7yh36sl0nPFPpq2n5j+oA40qyHZmD2WE
 sWyEvKQxJDExr/ytEGIygp8mjFSIzEf6dvoTNYwImH5K0NgiGSP26VifSaSFxBwlyrHVS3ZaRwM2L
 uHfqi3OT/PhH+FpMAnwgQ7XhMKZZ4y4jbbTJMt5z82PCGfkT1ujHkkHJuPlaJKKMMNaQk8M9DFsa4
 T1EiGGeAz8SRlt9+fXIOnhbW53RD5LN9czbmUIis4wVVhfCGwj2w0veRHsBnRxLxM6NVfQd/fo2ln
 lLLBrB1cJt3O/wgXw1wqp2wLyPjYxfTimQrJEhY/BOPX1/kJEIXIO5aRNgK/UUvbOPAIgXUNI99SM
 s5OR9UYxB30PswvFvlW95TcHNzBm9YfP4EgyN6ovosfhLbdSt1sQqO49IkL0gqKeKHwjgfJlCah9Z
 nSPb0Mi5ilSTaTddF2ClyJaK+33fmubR5l9o2SDdzRleCRr0vuCcL6JC+0l1EXnLMPOiftjGQyJ4i
 90vg03U/nyYF7WyLDWIrKzUCAXEt7mg/4kBWCS+dE=;
To: Yu Zhe <yuzhe@nfschina.com>
Date: Fri, 01 Apr 2022 19:06:39 +0200
Message-ID: <2411905.eXaiZ4YaiN@silver>
In-Reply-To: <20220401070545.50577-1-yuzhe@nfschina.com>
References: <20220401070545.50577-1-yuzhe@nfschina.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Freitag,
 1. April 2022 09:05:45 CEST Yu Zhe wrote: > remove
 unnecessary void* type castings. > > Signed-off-by: Yu Zhe
 <yuzhe@nfschina.com>
 > --- Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com> 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1naKja-0005s8-6s
Subject: Re: [V9fs-developer] [PATCH] 9p: remove unnecessary type castings
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, ericvh@gmail.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, liqiong@nfschina.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Freitag, 1. April 2022 09:05:45 CEST Yu Zhe wrote:
> remove unnecessary void* type castings.
> 
> Signed-off-by: Yu Zhe <yuzhe@nfschina.com>
> ---

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

>  fs/9p/fid.c            | 2 +-
>  fs/9p/v9fs.c           | 2 +-
>  fs/9p/vfs_inode.c      | 4 ++--
>  fs/9p/vfs_inode_dotl.c | 4 ++--
>  4 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/fs/9p/fid.c b/fs/9p/fid.c
> index 79df61fe0e59..c2b8d7fc9e53 100644
> --- a/fs/9p/fid.c
> +++ b/fs/9p/fid.c
> @@ -53,7 +53,7 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode
> *inode, kuid_t uid) p9_debug(P9_DEBUG_VFS, " inode: %p\n", inode);
> 
>  	spin_lock(&inode->i_lock);
> -	h = (struct hlist_head *)&inode->i_private;
> +	h = &inode->i_private;
>  	hlist_for_each_entry(fid, h, ilist) {
>  		if (uid_eq(fid->uid, uid)) {
>  			refcount_inc(&fid->count);
> diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
> index e28ddf763b3b..51ddc58a7029 100644
> --- a/fs/9p/v9fs.c
> +++ b/fs/9p/v9fs.c
> @@ -622,7 +622,7 @@ static void v9fs_sysfs_cleanup(void)
> 
>  static void v9fs_inode_init_once(void *foo)
>  {
> -	struct v9fs_inode *v9inode = (struct v9fs_inode *)foo;
> +	struct v9fs_inode *v9inode = foo;
> 
>  	memset(&v9inode->qid, 0, sizeof(v9inode->qid));
>  	inode_init_once(&v9inode->vfs_inode);
> diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> index 55367ecb9442..f415fd7a1eaf 100644
> --- a/fs/9p/vfs_inode.c
> +++ b/fs/9p/vfs_inode.c
> @@ -409,7 +409,7 @@ static int v9fs_test_inode(struct inode *inode, void
> *data) int umode;
>  	dev_t rdev;
>  	struct v9fs_inode *v9inode = V9FS_I(inode);
> -	struct p9_wstat *st = (struct p9_wstat *)data;
> +	struct p9_wstat *st = data;
>  	struct v9fs_session_info *v9ses = v9fs_inode2v9ses(inode);
> 
>  	umode = p9mode2unixmode(v9ses, st, &rdev);
> @@ -438,7 +438,7 @@ static int v9fs_test_new_inode(struct inode *inode, void
> *data) static int v9fs_set_inode(struct inode *inode,  void *data)
>  {
>  	struct v9fs_inode *v9inode = V9FS_I(inode);
> -	struct p9_wstat *st = (struct p9_wstat *)data;
> +	struct p9_wstat *st = data;
> 
>  	memcpy(&v9inode->qid, &st->qid, sizeof(st->qid));
>  	return 0;
> diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
> index d17502a738a9..b910fee62e25 100644
> --- a/fs/9p/vfs_inode_dotl.c
> +++ b/fs/9p/vfs_inode_dotl.c
> @@ -57,7 +57,7 @@ static kgid_t v9fs_get_fsgid_for_create(struct inode
> *dir_inode) static int v9fs_test_inode_dotl(struct inode *inode, void
> *data)
>  {
>  	struct v9fs_inode *v9inode = V9FS_I(inode);
> -	struct p9_stat_dotl *st = (struct p9_stat_dotl *)data;
> +	struct p9_stat_dotl *st = data;
> 
>  	/* don't match inode of different type */
>  	if (inode_wrong_type(inode, st->st_mode))
> @@ -88,7 +88,7 @@ static int v9fs_test_new_inode_dotl(struct inode *inode,
> void *data) static int v9fs_set_inode_dotl(struct inode *inode,  void
> *data)
>  {
>  	struct v9fs_inode *v9inode = V9FS_I(inode);
> -	struct p9_stat_dotl *st = (struct p9_stat_dotl *)data;
> +	struct p9_stat_dotl *st = data;
> 
>  	memcpy(&v9inode->qid, &st->qid, sizeof(st->qid));
>  	inode->i_generation = st->st_gen;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
