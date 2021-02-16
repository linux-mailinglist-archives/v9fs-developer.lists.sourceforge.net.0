Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F102E31C772
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 09:42:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBvwc-0006ns-JL; Tue, 16 Feb 2021 08:42:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1lBvwb-0006na-Fg
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 08:42:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1PtOoy87Jpfrox1T/UF2Ks3gJEq0/Av7M2iHnGcimOo=; b=gY7Zi3h6gZQDTbL6Zlzv2LAg2j
 mPRiTLHttBL8ZICt8i/Uscl8tlSEvS0SImrtakqeCKWEihKCg7OI7iqa1v/U2ODUU/DZr51s5W8BT
 jhGCfy2NcISUSCDkNQHINC0hQfk9saaeu+bcW//eBopy5xS8SNGLZIDMjfknAQ0sjHS0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1PtOoy87Jpfrox1T/UF2Ks3gJEq0/Av7M2iHnGcimOo=; b=MFuoh0+yzMRRCDN0a7jdII0DfF
 aps961gEh4UngzVSYEPoetjypvQMfuKYG24GBN9Xr10TlVx2uHo3mfcQdX2lhDM9PQ/DmqpK4yztC
 kFYHTpuLm51sGDcxuAnyeJWpJNPlmMmykPKFXzbfoQyTsUaWXBReMrQafW45IKBrCZwo=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lBvwP-0005mu-6r
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 08:42:48 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C34B368B05; Tue, 16 Feb 2021 09:42:30 +0100 (CET)
Date: Tue, 16 Feb 2021 09:42:30 +0100
From: Christoph Hellwig <hch@lst.de>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210216084230.GA23669@lst.de>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <1376938.1613429183@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1376938.1613429183@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lBvwP-0005mu-6r
Subject: Re: [V9fs-developer] [PATCH 34/33] netfs: Use in_interrupt() not
 in_softirq()
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 15, 2021 at 10:46:23PM +0000, David Howells wrote:
> The in_softirq() in netfs_rreq_terminated() works fine for the cache being
> on a normal disk, as the completion handlers may get called in softirq
> context, but for an NVMe drive, the completion handler may get called in
> IRQ context.
> 
> Fix to use in_interrupt() instead of in_softirq() throughout the read
> helpers, particularly when deciding whether to punt code that might sleep
> off to a worker thread.

We must not use either check, as they all are unreliable especially
for PREEMPT-RT.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
