Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E430F3032AD
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Jan 2021 05:01:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l4FXu-0002OO-0N; Tue, 26 Jan 2021 04:01:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1l4FXs-0002OF-1K
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 04:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hD2dihblVyt6KB5ToLRdOaDt4RozgYV/Q1Wqm2r3jOY=; b=cOdBJjMCI7fPj2sq/wGK5qeBVT
 od/KLsL3gMTg6+vV5aRCaGaFICadMQ7eibmoev1MLX3DZfhO42mUrmuZ944yGv10j65iJEVZDGt9D
 +HZIdjI7JjCFPw821P93OzIqX7NRRpjVKP+Gq1xhuV5Cc91ld6ij7v4oL1e1xa8Aa1Ac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hD2dihblVyt6KB5ToLRdOaDt4RozgYV/Q1Wqm2r3jOY=; b=a3z3Ci9XRdlDVjORVw/EL0QfoH
 0w12lNI6IHKXlNgNOGysR1UKlioRlKz87gT59E2TMoEapUdXLiaK/Vm1WbAjUPASJ8ekBqIBFfQzE
 mb2CdYeoBZoTlNsn4vTFgalxncuHAvG3wIDOEtuIR4qrgnt77ip/GdoUOpWBSiPQk/NA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l4FXn-005J0H-6m
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jan 2021 04:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hD2dihblVyt6KB5ToLRdOaDt4RozgYV/Q1Wqm2r3jOY=; b=szZsJUgSPGV0So2PjEzFyqt/aC
 GyEdr/UfGs5HvOaNfsGT7dgq77B941sKj9PgjAiBVacsv+FjgHkISHdLslYmTYf1TJpPBI4v4n8VN
 tCoGlH5IE+nObbCOW5VcGClxU5HrmAcNo6QfAyI2RNielNHDjb5Ua55lwdfhnweC/J6+4y17D+wK9
 HJx9AvKZcyAojIUH1mGBcP1Om+RT61Mn2SwfXusPhV5FNUh35gRES0yVHZrB37n89RJbSt+otpvLV
 I/8+MuqVC1vrReyVomu9bSFbG476zcpu3zwgqFXRU4fMPPp0xzdZk2918xuvVp2TtHUVwnsIA4aXb
 ohW+E04Q==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l4FVp-0052nr-00; Tue, 26 Jan 2021 03:59:44 +0000
Date: Tue, 26 Jan 2021 03:59:28 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210126035928.GJ308988@casper.infradead.org>
References: <161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk>
 <161161054970.2537118.5401048451896267742.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161161054970.2537118.5401048451896267742.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l4FXn-005J0H-6m
Subject: Re: [V9fs-developer] [PATCH 25/32] NFS: Clean up nfs_readpage() and
 nfs_readpages()
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Dave Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jan 25, 2021 at 09:35:49PM +0000, David Howells wrote:
> -int nfs_readpage(struct file *file, struct page *page)
> +int nfs_readpage(struct file *filp, struct page *page)

I appreciate we're inconsistent between file and filp, but we're actually
moving more towards file than filp.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
