Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D6654B227
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jun 2022 15:18:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o16Qh-0006qp-DD; Tue, 14 Jun 2022 13:17:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o16Qg-0006qa-3v
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 13:17:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yPWorgb0nr92bflDyKeZ83J7zJKK6wo32UMgOsFApt0=; b=KjciiVl02Prt4g1GzUNBKt2xGp
 r4c9oUqbSlgYlSCDspRoAwOwMhH/1uoUmFKC5WMvOw9COmO+puxbCJMCAyHKKqZ6xYEpE/oazoWq3
 fOgDQnu/mpo/PZnhc734ta/VhMihxgxMB9m/hGs3+CRRR3xyrfPF49XR30AmlXkZi8Ds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yPWorgb0nr92bflDyKeZ83J7zJKK6wo32UMgOsFApt0=; b=TgpcTPvKDfnDDNtryNbcZ6Q3nr
 ysh+AteljHkasdm/PtHoVxEic7yAh7budFxaicg0vXyUBKv6q7vRHhABGLWDAIjmCHbAJuW5pdxfB
 dl9Zqo2D+nzP0U82DmwF/x8K8EZ7dwlAUxLJ+4JVZbOuP4snzlqDBGQv/xviW/5pqFXA=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o16Qe-000234-9M
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 13:17:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=yPWorgb0nr92bflDyKeZ83J7zJKK6wo32UMgOsFApt0=; b=W5PkkAnkCNWBWUe9Ca6EUMymYt
 eptL/wb2mi7n+x+RtR8RLGWLarmhCRy6jO7jaYXItiBlm27vOnQrROJRMshwT+8RyBxV3jZhWTqFr
 l8lD+o/YsWyDhvYBqfazCd4dGi/tsWTXL65TVyk8wG8ys5jnTjhm1MVpKX5VPmgjGlS7bOl2QK4xC
 P/wti0pMCSAhvg3m3FJ7D5QyUIEAhum19ZcoTYoS3osWKaChRdVMaLR4WvEzXxztkrwo4YP6dEVsG
 bP8Cx7FMSRdXHn/5EflxYjnTpZLIZDzcLAj2hgj/4HbBVobVnr+QDN+p4AO3n0VIIz8q7cH1pQxJ+
 dxlNNQg3UbdSltXoNZiRXh6Lhg2CdZKmQeaM0Z3PmjfJlHzA+ubxYAzYAU+KFWopmhR/bmSuBjna/
 Icwlvx8FDroBO5YclKhpWb7M+kRTGZqQnToQzU7L0OlGrLsjl5EsXogNqMH6nS9RdZanJixETmiVX
 xmBwRNBzAJWr8Po0LckNZcrzHvKLuzCkKFYyrMOJBd90qyP7uWWcJtCsDmgpKtuPMuJRLH5aJ9mlT
 cHm63ENQGlf1pE8Z8BBxjath+Sug0S3sh97pjfW9ek06ah9CGPUxeaNtyYkbFBLK80oyc4IVeeriQ
 JcFQFUdphEIpns3qSm+68ExG1tEeBa9RyExdgGjJ0=;
To: Tyler Hicks <tyhicks@linux.microsoft.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Jianyong Wu <jianyong.wu@arm.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 14 Jun 2022 15:17:46 +0200
Message-ID: <5002134.MN0KzyuZDv@silver>
In-Reply-To: <20220612085330.1451496-2-asmadeus@codewreck.org>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
 <20220612085330.1451496-2-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sonntag, 12. Juni 2022 10:53:24 CEST Dominique Martinet
 wrote: > We need to release directory fid if we fail halfway through open
 > > This fixes fid leaking with xfstests generic 531 > > Fixes: 663 [...]
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
X-Headers-End: 1o16Qe-000234-9M
Subject: Re: [V9fs-developer] [PATCH 01/06] 9p: fix fid refcount leak in
 v9fs_vfs_atomic_open_dotl
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sonntag, 12. Juni 2022 10:53:24 CEST Dominique Martinet wrote:
> We need to release directory fid if we fail halfway through open
> 
> This fixes fid leaking with xfstests generic 531
> 
> Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
> Cc: stable@vger.kernel.org
> Reported-by: Tyler Hicks <tyhicks@linux.microsoft.com>
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

> ---
>  fs/9p/vfs_inode_dotl.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
> index d17502a738a9..b6eb1160296c 100644
> --- a/fs/9p/vfs_inode_dotl.c
> +++ b/fs/9p/vfs_inode_dotl.c
> @@ -274,6 +274,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct
> dentry *dentry, if (IS_ERR(ofid)) {
>  		err = PTR_ERR(ofid);
>  		p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
> +		p9_client_clunk(dfid);
>  		goto out;
>  	}
> 
> @@ -285,6 +286,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct
> dentry *dentry, if (err) {
>  		p9_debug(P9_DEBUG_VFS, "Failed to get acl values in creat %d\n",
>  			 err);
> +		p9_client_clunk(dfid);
>  		goto error;
>  	}
>  	err = p9_client_create_dotl(ofid, name, v9fs_open_to_dotl_flags(flags),
> @@ -292,6 +294,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct
> dentry *dentry, if (err < 0) {
>  		p9_debug(P9_DEBUG_VFS, "p9_client_open_dotl failed in creat %d\n",
>  			 err);
> +		p9_client_clunk(dfid);
>  		goto error;
>  	}
>  	v9fs_invalidate_inode_attr(dir);






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
