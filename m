Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10080226299
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Jul 2020 16:54:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jxXBF-0001vb-8p; Mon, 20 Jul 2020 14:54:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jxXBD-0001vO-DX
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 14:54:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AVtjruzuxxV0+AW4gyj3g7ydxMD6NNMuP8iAGcgMqIE=; b=WtFLLK/BkFK4+6pZbF51tufSUf
 /0zfHWF8IdkmTsO4g0WIsq5StE9cyBUhp36TcSI5LoRdiznZIY6kF/Gvl1+7KgHCOnfZA83oVz06a
 7Ny+dT4us6ypPNdBwDh3Dn8ozw+9nTPeTonfUC7OuuLh3kAoHnJnj6vJP9RnL1tRxrDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AVtjruzuxxV0+AW4gyj3g7ydxMD6NNMuP8iAGcgMqIE=; b=euLwRgxb7wT1ER0ukCBSuBs1Wi
 Qiqs+cauYf/zfqhSQhT0RooUDN0+hHr8K3581rLpXekv10IP2KJt/YyHFUdbvdTkhAKGC9yY2m9nr
 J7inDgGQr2QxTmkxEZlPBx8v+YjFDgs3vEOySjITRdaq83UMGsUnYOq/YqpfzDpAqYgs=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxXB5-00AvFT-Nl
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 14:54:10 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id C2768C009; Mon, 20 Jul 2020 16:53:55 +0200 (CEST)
Date: Mon, 20 Jul 2020 16:53:40 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200720145340.GA13275@nautica>
References: <20200720014622.37364-1-jianyong.wu@arm.com>
 <20200720014622.37364-2-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200720014622.37364-2-jianyong.wu@arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxXB5-00AvFT-Nl
Subject: Re: [V9fs-developer] [RFC PATCH 1/2] vfs: pass file down when
 getattr to avoid losing info.
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
Cc: lucho@ionkov.net, justin.he@arm.com, wei.chen@arm.com, ericvh@gmail.com,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, Kaly.Xin@arm.com,
 v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jianyong Wu wrote on Mon, Jul 20, 2020:
> Currently, getting attribute for a file represented by fd is always
> by inode or path which may lead to bug for a certain network file system.
> Adding file struct into struct kstat and assigning file for it in
> vfs_statx_fd can avoid this issue. This change refers to struct istat.
> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  fs/stat.c            | 1 +
>  include/linux/stat.h | 6 ++++++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/fs/stat.c b/fs/stat.c
> index 44f8ad346db4..0dee5487f6d6 100644
> --- a/fs/stat.c
> +++ b/fs/stat.c
> @@ -147,6 +147,7 @@ int vfs_statx_fd(unsigned int fd, struct kstat *stat,
>  		return -EINVAL;
>  
>  	f = fdget_raw(fd);
> +	stat->filp = f.file;
>  	if (f.file) {
>  		error = vfs_getattr(&f.file->f_path, stat,
>  				    request_mask, query_flags);
> diff --git a/include/linux/stat.h b/include/linux/stat.h
> index 56614af83d4a..4755c528d49a 100644
> --- a/include/linux/stat.h
> +++ b/include/linux/stat.h
> @@ -48,6 +48,12 @@ struct kstat {
>  	struct timespec64 btime;			/* File creation time */
>  	u64		blocks;
>  	u64		mnt_id;
> +
> +	/*
> +	 * Not an attribute, but an auxiliary info for filesystems wanting to
> +	 * implement an fstat() like method.
> +	 */
> +	struct file	*filp;

Just, no ; don't touch this, it isn't likely to get accepted ever.
file operations should all have a filp around already, we need to fix
this in our code.

(also missing quite a few Cc if you ever want to touch these bits, at
least linux-fsdevel@)



FWIW the problem has been discussed a few times previously.

I'd appreciate if you could take over from Eric and Greg's old series
that intended to fix that:
https://lore.kernel.org/lkml/146659832556.15781.17414806975641516683.stgit@bahia.lan/

it introduced a race somewhere, but the idea looked good at the time so
it's worth looking into.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
