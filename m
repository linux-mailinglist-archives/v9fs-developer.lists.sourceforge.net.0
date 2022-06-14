Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6B654B230
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jun 2022 15:20:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o16T0-0005tt-9q; Tue, 14 Jun 2022 13:20:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o16Sz-0005ti-2v
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 13:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DLyhQU5lJWhVZZVn72cR39+qTOXv1WDBApcB+gX5W6Y=; b=HgngJ6V9TgAvJAdhReV5nSTQSi
 aErsgJ8RhdHckNcFJmWqhAfg0U2G5CzDJVObs65VRSTXs46PwBqxMiKJ40d2uQIJz7crflhdirAQz
 WgYvvhUnGBkWLOD7bZMRIFLKNISOTNGKzx3H6Oeo8UjJwlwBhC3eAgtqB2qgfG2EfCcE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DLyhQU5lJWhVZZVn72cR39+qTOXv1WDBApcB+gX5W6Y=; b=lHaSTfmEbjKtWcWKHgSnPK1hCb
 PVCUbUBx4O7Mcq3o3KeI4Ral5zMXnJFQNu/kdwT9hXWouHdRoS/RFK+M4G/z4HwHCyToJR4pd8Sxe
 NfqyDHVpeVLKKZ4O0lHc/m/hOyqWFZWeIncsE7/IGqFJtts4oTuezu1i15OcTMZUA9ng=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o16Sy-001IsG-Pe
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 13:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=DLyhQU5lJWhVZZVn72cR39+qTOXv1WDBApcB+gX5W6Y=; b=is5MvyS4fDXL9ODiNPfhnVUzUA
 TRRGM4PWmgxe+lPztWRKwlK6XrT3axY7amNxmy+CrE0Uk7MhPN7TZWrtuuKxhkmeKUlvFU9wz4eEa
 ifNpaYgDtWRVK/txseObyy0BGjr0kzusLpu2hOYzkGKs5NeFbgUOWYngZJkoMKatpva4ee3xw89hM
 Y7XI3Ofz7v04vzDOh5UXpHYTAn/Zqnqw1pjwFs5Z+jPBiDGnN6+Fc9gtbsOXkuk8mTC+OMlLMphOU
 zeJR167bSUUKNpcxdrwqTaAzo1KTA3DPeazeiLj4p6DqZE90pQ975msHts7MJzm9CVq3A0diZ1RAB
 z8JviEu32WnMEgS3AQS8p7wHRLLfq6z9YZO7XIrY08Tzso5EQe8I1/n5cBb6o5eHlol1VIKndV729
 w/tgs/P85mMOKZXAlLEMxKy5A0G3E8zL2gvYKA4kyEHPYtna2UdKSdTppsNAl1xrjIqJq8DeWyQU0
 sj7i4QlkNjq52Mp+CrvQvdwSJlTh4NS/CBAHvMmNJTgSO+9FnUt9TO5xJ6MOcI5Y5pE/bqe5p0pKK
 frCt3cXRzicaWyWx2Co59FJYaHZhsC8Ubo2IGy9Dm6Le7lfGOS+lrhEJABFmKF1aEaAovhpAFrXvd
 f38uaYm53uv9+AkZy34D7XyhLFQsKNc/nF10hRo/Y=;
To: Tyler Hicks <tyhicks@linux.microsoft.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Jianyong Wu <jianyong.wu@arm.com>, v9fs-developer@lists.sourceforge.net
Date: Tue, 14 Jun 2022 15:19:55 +0200
Message-ID: <3172397.lbAG7NvT7i@silver>
In-Reply-To: <20220612085330.1451496-3-asmadeus@codewreck.org>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
 <20220612085330.1451496-3-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sonntag, 12. Juni 2022 10:53:25 CEST Dominique Martinet
 wrote: > we check for protocol version later than required, after a fid has
 > been obtained. Just move the version check earlier. > > Fixes: [...] 
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
X-Headers-End: 1o16Sy-001IsG-Pe
Subject: Re: [V9fs-developer] [PATCH 02/06] 9p: fix fid refcount leak in
 v9fs_vfs_get_link
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
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sonntag, 12. Juni 2022 10:53:25 CEST Dominique Martinet wrote:
> we check for protocol version later than required, after a fid has
> been obtained. Just move the version check earlier.
> 
> Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
> Cc: stable@vger.kernel.org
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

>  fs/9p/vfs_inode.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> index 55367ecb9442..18c780ffd4b5 100644
> --- a/fs/9p/vfs_inode.c
> +++ b/fs/9p/vfs_inode.c
> @@ -1250,15 +1250,15 @@ static const char *v9fs_vfs_get_link(struct dentry
> *dentry, return ERR_PTR(-ECHILD);
> 
>  	v9ses = v9fs_dentry2v9ses(dentry);
> -	fid = v9fs_fid_lookup(dentry);
> +	if (!v9fs_proto_dotu(v9ses))
> +		return ERR_PTR(-EBADF);
> +
>  	p9_debug(P9_DEBUG_VFS, "%pd\n", dentry);
> +	fid = v9fs_fid_lookup(dentry);
> 
>  	if (IS_ERR(fid))
>  		return ERR_CAST(fid);
> 
> -	if (!v9fs_proto_dotu(v9ses))
> -		return ERR_PTR(-EBADF);
> -
>  	st = p9_client_stat(fid);
>  	p9_client_clunk(fid);
>  	if (IS_ERR(st))






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
