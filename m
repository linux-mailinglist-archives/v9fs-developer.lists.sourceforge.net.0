Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2B7433D40
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Oct 2021 19:23:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcspK-0001cp-Ns; Tue, 19 Oct 2021 17:23:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1mcspI-0001ca-Fx
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 17:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JOqfmssTkXXiKThwBGVyyHuYXPo6VBVl8UwOszClJ8c=; b=KJaXgqxWXgwNqAg3tNICPfhWQU
 RSYtU6wX5Z8/Pt72cO4U7UlYaRQQjJ2rkmv39wy5oQBsR8Drp+kKAVtz9qd7v/pKcllGCkFLM0jv0
 yZG3PU02QptdWPQdjeo/JXfgT/9l0tH81jZLvZiYyAsvfcaqOyy2Wa8dA1QkWC7jXcuc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JOqfmssTkXXiKThwBGVyyHuYXPo6VBVl8UwOszClJ8c=; b=AEneVKM0iMubGHX2Tm04nW5Ozd
 6xYSlDkii//JOftzrEt0r65GdswGJUAqYCaRz+VnV8KHYiPMwSHxIBP8Anwxyx/K2IZCERSDn14nO
 eUz2rTAnftCP/xKOZv2hKbkuIE2/YeLExx8AGnv2yRLjR5zhAmpHOWxvSK3t2QCzovMk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcspH-0002bv-LC
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 17:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634664173;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JOqfmssTkXXiKThwBGVyyHuYXPo6VBVl8UwOszClJ8c=;
 b=ar4wvXGtmiMB5Wsk+3eXSLPkJLsg+RFvZpE6G6UXEZrXBzqbrCO49LuXMuYM292JNJOvhE
 QQl0NdBPNgD0SK0gXJV4VZWgQy65LsaZHSWM4s3ee9f110v9SI+9vDgyymbmQWWzeb6iJa
 cQ2WgAuMvtc1/0ZOJGc4XEu58Vak3sw=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-186-URuYGse1OEWN57N_Lb4JNQ-1; Tue, 19 Oct 2021 13:22:52 -0400
X-MC-Unique: URuYGse1OEWN57N_Lb4JNQ-1
Received: by mail-qt1-f198.google.com with SMTP id
 o22-20020ac85a56000000b002a7c1634c55so381311qta.21
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 19 Oct 2021 10:22:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=JOqfmssTkXXiKThwBGVyyHuYXPo6VBVl8UwOszClJ8c=;
 b=t+SEhfejpiZ/b889jCmxBc/okSQIYF59Vdu0EVG+bs17v5xqicf0SoeZtLa3ph0lim
 LXEDdg5m5cQsncZSkQN66BLVuf8+D1DuuTqvSrs0wxv2ploBLVjZrzEIfz/XgRoZcq4p
 G1KO1wdXzMzUs38WoVbaYiAbU0xa0MSTaPh/vV4smCQDXTqasXS9cPFOPiZpNXd/thxR
 JYPpWYkzk0bkV4tkg1okbnKJ1qIbQrVDzV0G2Al9PuvhRrS61MGDtbEzkTTnoxsaE2ns
 OBV4yptDFxArtcS8SNVL0GEHTHlSYXuMi1KJ/HeAE4B0Lqv5XityMSSsvPeP9eMaNqpY
 UsUQ==
X-Gm-Message-State: AOAM531+TphnbfbqCQggGNzr6+h1w+wfAe+6EQc4sGfDGudN39WsRaWf
 kQukfJiW7xYKZ8FhSmb8tk2xX7PekRQYKlcXaE7IcveXEk3rXrWtZ9npxpjJS7tKVVPwVHCvoeE
 SZ2YY4mqcpu1p3TVN11f9faXE20BDD14LI/E=
X-Received: by 2002:ac8:5fc5:: with SMTP id k5mr1372090qta.273.1634664172101; 
 Tue, 19 Oct 2021 10:22:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwzp4cr5dV94h+XDRbaJmp+cfMFv4+i32Ye0oINtZE8qF5SrO8m9PjQyUWjQRiUs6vWX+z8ww==
X-Received: by 2002:ac8:5fc5:: with SMTP id k5mr1372059qta.273.1634664171906; 
 Tue, 19 Oct 2021 10:22:51 -0700 (PDT)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id m66sm8127161qkb.87.2021.10.19.10.22.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 10:22:51 -0700 (PDT)
Message-ID: <d58335124c7467703201a9cdba765a46a780c855.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com
Date: Tue, 19 Oct 2021 13:22:50 -0400
In-Reply-To: <163456866523.2614702.2234665737111683988.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <163456866523.2614702.2234665737111683988.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2021-10-18 at 15:51 +0100, David Howells wrote: >
 Use an inode flag, I_PINNING_FSCACHE_WB, to indicate that a cookie is > pinned
 in use by that inode for the purposes of writeback. > > Pinning [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcspH-0002bv-LC
Subject: Re: [V9fs-developer] [PATCH 03/67] vfs,
 fscache: Force ->write_inode() to occur if cookie pinned for
 writeback
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2021-10-18 at 15:51 +0100, David Howells wrote:
> Use an inode flag, I_PINNING_FSCACHE_WB, to indicate that a cookie is
> pinned in use by that inode for the purposes of writeback.
> 
> Pinning is necessary because the in-use pin from the open file is released
> before the writeback takes place, but if the resources aren't pinned, the
> dirty data can't be written to the cache.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> ---
> 
>  fs/fs-writeback.c         |    8 ++++++++
>  include/linux/fs.h        |    3 +++
>  include/linux/fscache.h   |    1 +
>  include/linux/writeback.h |    1 +
>  4 files changed, 13 insertions(+)
> 
> diff --git a/fs/fs-writeback.c b/fs/fs-writeback.c
> index 81ec192ce067..f3122831c4fe 100644
> --- a/fs/fs-writeback.c
> +++ b/fs/fs-writeback.c
> @@ -1666,6 +1666,13 @@ __writeback_single_inode(struct inode *inode, struct writeback_control *wbc)
>  
>  	if (mapping_tagged(mapping, PAGECACHE_TAG_DIRTY))
>  		inode->i_state |= I_DIRTY_PAGES;
> +	else if (unlikely(inode->i_state & I_PINNING_FSCACHE_WB)) {
> +		if (!(inode->i_state & I_DIRTY_PAGES)) {
> +			inode->i_state &= ~I_PINNING_FSCACHE_WB;
> +			wbc->unpinned_fscache_wb = true;
> +			dirty |= I_PINNING_FSCACHE_WB; /* Cause write_inode */
> +		}
> +	}

IDGI: how would I_PINNING_FSCACHE_WB get set in the first place? 

>  
>  	spin_unlock(&inode->i_lock);
>  
> @@ -1675,6 +1682,7 @@ __writeback_single_inode(struct inode *inode, struct writeback_control *wbc)
>  		if (ret == 0)
>  			ret = err;
>  	}
> +	wbc->unpinned_fscache_wb = false;
>  	trace_writeback_single_inode(inode, wbc, nr_to_write);
>  	return ret;
>  }
> diff --git a/include/linux/fs.h b/include/linux/fs.h
> index 197493507744..336739fed3e9 100644
> --- a/include/linux/fs.h
> +++ b/include/linux/fs.h
> @@ -2420,6 +2420,8 @@ static inline void kiocb_clone(struct kiocb *kiocb, struct kiocb *kiocb_src,
>   *			Used to detect that mark_inode_dirty() should not move
>   * 			inode between dirty lists.
>   *
> + * I_PINNING_FSCACHE_WB	Inode is pinning an fscache object for writeback.
> + *
>   * Q: What is the difference between I_WILL_FREE and I_FREEING?
>   */
>  #define I_DIRTY_SYNC		(1 << 0)
> @@ -2442,6 +2444,7 @@ static inline void kiocb_clone(struct kiocb *kiocb, struct kiocb *kiocb_src,
>  #define I_CREATING		(1 << 15)
>  #define I_DONTCACHE		(1 << 16)
>  #define I_SYNC_QUEUED		(1 << 17)
> +#define I_PINNING_FSCACHE_WB	(1 << 18)
>  
>  #define I_DIRTY_INODE (I_DIRTY_SYNC | I_DIRTY_DATASYNC)
>  #define I_DIRTY (I_DIRTY_INODE | I_DIRTY_PAGES)
> diff --git a/include/linux/fscache.h b/include/linux/fscache.h
> index 01558d155799..ba4878b56717 100644
> --- a/include/linux/fscache.h
> +++ b/include/linux/fscache.h
> @@ -19,6 +19,7 @@
>  #include <linux/pagemap.h>
>  #include <linux/pagevec.h>
>  #include <linux/list_bl.h>
> +#include <linux/writeback.h>
>  #include <linux/netfs.h>
>  
>  #if defined(CONFIG_FSCACHE) || defined(CONFIG_FSCACHE_MODULE)
> diff --git a/include/linux/writeback.h b/include/linux/writeback.h
> index d1f65adf6a26..2fda288600d3 100644
> --- a/include/linux/writeback.h
> +++ b/include/linux/writeback.h
> @@ -69,6 +69,7 @@ struct writeback_control {
>  	unsigned for_reclaim:1;		/* Invoked from the page allocator */
>  	unsigned range_cyclic:1;	/* range_start is cyclic */
>  	unsigned for_sync:1;		/* sync(2) WB_SYNC_ALL writeback */
> +	unsigned unpinned_fscache_wb:1;	/* Cleared I_PINNING_FSCACHE_WB */
>  
>  	/*
>  	 * When writeback IOs are bounced through async layers, only the
> 
> 

-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
