Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 223EA31C7C5
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 10:06:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBwJo-00057t-NP; Tue, 16 Feb 2021 09:06:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bigeasy@linutronix.de>) id 1lBwJo-00057Q-82
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 09:06:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pXA7fe5dhXsardy0H04SmPnjEF++cQlTzGur8gI2QwM=; b=KO2IIJVvYbz2Di9QPQDPzhNCsW
 bJ9aDxnbFxGRoSRs5mW6hQ31uPXBoDOx7j43F7ZENlJMsYKvtdUlSvPiKJqytKeByrVzsH9/2lwrK
 lA8ohDU8WH7rxM+YEeeivPX8361pesIklj+kGQlpWChJKCLBrTq04ERtCjtcdUs2t/gA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pXA7fe5dhXsardy0H04SmPnjEF++cQlTzGur8gI2QwM=; b=h83YCDMiWHS4tLn3co9UcATM55
 c0G7ZoOdomKt0rn1wYatcjWHlZ5ilQhkV4UCJbz4tACrHDot5B9GLziwFCVkU2rdzIFfmZ8h6M37T
 szLfrJ0kzrt9g29UJVfadOckY6yauvhlGNf0GmrFBdcBDpe5IDg6ybP9LYxu5h6pOSWU=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lBwJb-00Ag0W-0Q
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 09:06:51 +0000
Date: Tue, 16 Feb 2021 10:06:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1613466388;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pXA7fe5dhXsardy0H04SmPnjEF++cQlTzGur8gI2QwM=;
 b=uXu4DrRfVfYd+SEG3ThhnB52KojptJp1umEHZg0FmpjEQep/Ku3kzNsXtNtm4y2OvGQYCz
 OLs6q1Olm4WMjW8Ea8Taei49T0k0cKzTOrGtC+oWXJ9GC9xRA/7JtEnNpLZULW8V29OnOk
 wHRKW12eXeYum2jTj0jCN9oFFhwRzyFoROpBA1D2OM7d+/uei0+SwOk2ugACt13vA4WPVh
 S7Uwi+v7smyObt0GWYz9jP+YanQo0+/A5vhfmAt0DTRoaPu4Rv3MoJeSkZdCkGLgqFco24
 FlES+01Vf/SwNmUk4/j8HuJUCPA0ndLoqPKs4DCDgxP8GNsXW2EkLnFvJ1PJJw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1613466388;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pXA7fe5dhXsardy0H04SmPnjEF++cQlTzGur8gI2QwM=;
 b=Ex3kELqMANnnWJzXjLUZrdgvFr6FqspWhFNNwj6u53hxH3IdxEGU5swcYLIBWpwsv6M7s8
 aY5ia4rpeMb3TYAQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20210216090626.kqnk726i6f77libt@linutronix.de>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <1376938.1613429183@warthog.procyon.org.uk>
 <20210216084230.GA23669@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216084230.GA23669@lst.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lBwJb-00Ag0W-0Q
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2021-02-16 09:42:30 [+0100], Christoph Hellwig wrote:
> On Mon, Feb 15, 2021 at 10:46:23PM +0000, David Howells wrote:
> > The in_softirq() in netfs_rreq_terminated() works fine for the cache being
> > on a normal disk, as the completion handlers may get called in softirq
> > context, but for an NVMe drive, the completion handler may get called in
> > IRQ context.
> > 
> > Fix to use in_interrupt() instead of in_softirq() throughout the read
> > helpers, particularly when deciding whether to punt code that might sleep
> > off to a worker thread.
> 
> We must not use either check, as they all are unreliable especially
> for PREEMPT-RT.

Yes, please. I try to cleanup the users one by one
    https://lore.kernel.org/r/20200914204209.256266093@linutronix.de/
    https://lore.kernel.org/amd-gfx/20210209124439.408140-1-bigeasy@linutronix.de/

Sebastian


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
