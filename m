Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AA62FEC05
	for <lists+v9fs-developer@lfdr.de>; Thu, 21 Jan 2021 14:35:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2a7d-00060r-Df; Thu, 21 Jan 2021 13:35:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1l2a7b-00060k-RE
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 13:35:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Sw5nwOYuq5g6NnJ5/b/NhvW5bYwFEItPBVnvcj4cLI=; b=W9riQChuR1GaKLbxotgCgo215D
 qs3Va3NJTRel+VnsnGNrmbj0L0BF5YFQywVZ28iDiahNhJVfdrYZNwY4AWr93zQ0ojvP7XZ6flQzt
 ZzYktIMXtIvpWHpS/6k8Pnthl82nhbTASp+SsD+ThBCEUPGSzh7eyjcYqS4na0iMvC18=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Sw5nwOYuq5g6NnJ5/b/NhvW5bYwFEItPBVnvcj4cLI=; b=V+dW91WbMWFZS5oQF293ZMRnSt
 +hLvSBUg2UMEfRtxoHfTTvKKT6wNkWR3cx5H+eVipjID+ApM1kZMpDsgTiYUuj9F6QQBlm7mlshVE
 9DvhU+VT40gfxv/wGtMABr8ejv+639pKAeDxHdEpMZkiBS5yMkaF8iCn8ZtLPjZd2p5Y=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l2a7S-002xiR-05
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Jan 2021 13:35:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=1Sw5nwOYuq5g6NnJ5/b/NhvW5bYwFEItPBVnvcj4cLI=; b=siJvlqlKMvVSufyZVowaIdIYC4
 dfpsJF8I9eb1/6jWJrmtKwXVWianXKsl4RB4xjHvoeYXkMrM6M1ESdTIg7PtJaY9SVVwB50gROBqU
 CVUW683EkzTxRpUaLVIhbEnPBPU5g7R2bJ6Ve6wIKlL6l/Ih8xppYEG9WP3o+mnzJLqgFJG76+jpN
 GjCvmeN7fzYFcxiJ4SG+kGQ3ImJWOkYYB0mHZzGFGpsB0cS5tga2QadnBRNKSo+OnPg7iDiCA2cf2
 sZRAAifRoNOUEfmjnGcZYCjp4xOz8JHpZSCx/fVLicrQTnafOuvgIi1yObGwbk9AtJff70DKO9Wrl
 CmhrItNw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l2a6A-00H6A7-4n; Thu, 21 Jan 2021 13:34:08 +0000
Date: Thu, 21 Jan 2021 13:34:06 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210121133406.GP2260413@casper.infradead.org>
References: <161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk>
 <161118129703.1232039.17141248432017826976.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161118129703.1232039.17141248432017826976.stgit@warthog.procyon.org.uk>
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
X-Headers-End: 1l2a7S-002xiR-05
Subject: Re: [V9fs-developer] [PATCH 01/25] iov_iter: Add ITER_XARRAY
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
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jan 20, 2021 at 10:21:37PM +0000, David Howells wrote:
> -#define iterate_all_kinds(i, n, v, I, B, K) {			\
> +#define iterate_all_kinds(i, n, v, I, B, K, X) {		\

Do you need to add the X parameter?  It seems to always be the same as B.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
