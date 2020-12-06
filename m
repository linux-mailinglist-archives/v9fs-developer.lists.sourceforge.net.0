Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D00402D0235
	for <lists+v9fs-developer@lfdr.de>; Sun,  6 Dec 2020 10:17:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1klqA9-0001Zz-Oy; Sun, 06 Dec 2020 09:17:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1klqA7-0001Zj-5u
 for v9fs-developer@lists.sourceforge.net; Sun, 06 Dec 2020 09:16:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zugEn14CrYV0HZH2U2Zour1PG68Rh0TUCnI+4h4RKWk=; b=WfTY6BCqEN12fYwfxjSapYIAJE
 SnlICSX2sSryEbcoMnXY3RlNBrZjYUdOj1YvpZJI7IUlQtSEE1tGJd5mJKdOAnRHhg1pis8R2n7xO
 3NtbKbtmzLk53IbteUpCYx2g5i5rahNphGbr5DkRyLfTGW/ARoleuYKgUE1I53oVko1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zugEn14CrYV0HZH2U2Zour1PG68Rh0TUCnI+4h4RKWk=; b=AGzNxyxx5l6jImGp7dAfUXnmRD
 pcds9C0p+McLDh/pjbq2iSarev9A7k12AA1yhDizKSsDja7g/+0XF+bzZwOgS/VR8FANFfiOcyXmn
 bZgKUnHmGZVrzPmd1PCO7AcBPe2RMu14onRdRkg+K/twScuPklZ1ncWQeGFLtdt0Ah20=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1klq9q-004A88-4F
 for v9fs-developer@lists.sourceforge.net; Sun, 06 Dec 2020 09:16:59 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id C4465C009; Sun,  6 Dec 2020 10:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1607246193; bh=zugEn14CrYV0HZH2U2Zour1PG68Rh0TUCnI+4h4RKWk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vGFFE46Kvb23tMS2cazLmKn46t7AyzpRQZi0FOKTQH88faL/MzkJlHSi9pQ2wdWe9
 3x98a4S12AZC8AfDdgPbOkFAwgY2MfLtlkfxdCkJe+oslyZ0H6Z5aWVJFwTW41R1O1
 fCfktrbiGZjnKejXC/Ne15i41FmIqtV5AN1Y4M2MiIiE0HenOs4lPL0FD/lGvgF6XS
 U/Q2cr39Iscx0OeSAd3Pnlc6OgaI8Z6XPTKrTMXpTLXmZdOK7gvlqZBmokFMRsjHZM
 ZeMG1ReVpTwCC86bVf89aWAFPGF3Ih39xKBY1hsadaeR+qekH1I8MNEmbGG29zjdY1
 kk5ReJoSaJOPA==
Date: Sun, 6 Dec 2020 10:16:18 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Chengguang Xu <cgxu519@mykernel.net>
Message-ID: <20201206091618.GA22629@nautica>
References: <20201205130904.518104-1-cgxu519@mykernel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201205130904.518104-1-cgxu519@mykernel.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1klq9q-004A88-4F
Subject: Re: [V9fs-developer] [RFC PATCH] 9p: create writeback fid on shared
 mmap
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Chengguang Xu wrote on Sat, Dec 05, 2020:
> If vma is shared and the file was opened for writing,
> we should also create writeback fid because vma may be
> mprotected writable even if now readonly.

Hm, I guess it makes sense.

> Signed-off-by: Chengguang Xu <cgxu519@mykernel.net>
> ---
> Caveat: Only compile tested.

Will test later and add it to next then, might be a bit.


>  fs/9p/vfs_file.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> index b177fd3b1eb3..791839c2dd5c 100644
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -516,8 +516,7 @@ v9fs_mmap_file_mmap(struct file *filp, struct vm_area_struct *vma)
>  	v9inode = V9FS_I(inode);
>  	mutex_lock(&v9inode->v_mutex);
>  	if (!v9inode->writeback_fid &&
> -	    (vma->vm_flags & VM_SHARED) &&
> -	    (vma->vm_flags & VM_WRITE)) {
> +	    mapping_writably_mapped(filp->f_mapping)) {
>  		/*
>  		 * clone a fid and add it to writeback_fid
>  		 * we do it during mmap instead of
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
