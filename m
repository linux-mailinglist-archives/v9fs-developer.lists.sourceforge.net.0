Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E004B240B4D
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Aug 2020 18:41:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k5Ar7-0002PU-7x; Mon, 10 Aug 2020 16:41:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1k5Ar5-0002PL-74
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 16:40:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ylCg30BUtgNtrw1P5ncEGctH5k3ab9s7d7gQQkIGkfU=; b=WKMJ9sDT8d6Zafk/cr92KM3KVR
 FOTpySdTr8t/AzFlAZ/lL7vhRYyfoShdKtLCSDbqX2MDAhm/uT7zfabr2RQL44Ny4vBYFh71OWBK4
 hqZjhzVU0tyexw2PA6+7fBEYwrToOoVkN1UeU1J9xao9Nzc0LkeOEZw1G7p12MMaKdxI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ylCg30BUtgNtrw1P5ncEGctH5k3ab9s7d7gQQkIGkfU=; b=mBWpQvpqyUHtZUdUwTuNXxCYt5
 L/vjxh0g28oIJbOon/iLjEMltA5aiDKaY9Yh0Hb0YDQVpuSDqlaU8Z3kS1wDy7iYij82VYXSOjO6b
 llocgLKVIyt8bIulfCH+MkMuXlIYX1vY3sPRCbVr8dYKQJWUeQbJjohIt3VtdBr6gmX0=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k5Ar1-00Fg8I-Pt
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 16:40:59 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5E9D468AFE; Mon, 10 Aug 2020 18:40:44 +0200 (CEST)
Date: Mon, 10 Aug 2020 18:40:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: David Howells <dhowells@redhat.com>
Message-ID: <20200810164044.GA31753@lst.de>
References: <1851200.1596472222@warthog.procyon.org.uk>
 <447452.1596109876@warthog.procyon.org.uk>
 <667820.1597072619@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <667820.1597072619@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k5Ar1-00Fg8I-Pt
Subject: Re: [V9fs-developer] [GIT PULL] fscache rewrite -- please drop for
 now
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
 Eric Van Hensbergen <ericvh@gmail.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 torvalds@linux-foundation.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Aug 10, 2020 at 04:16:59PM +0100, David Howells wrote:
> Hi Linus,
> 
> Can you drop the fscache rewrite pull for now.  We've seem an issue in NFS
> integration and need to rework the read helper a bit.  I made an assumption
> that fscache will always be able to request that the netfs perform a read of a
> certain minimum size - but with NFS you can break that by setting rsize too
> small.
> 
> We need to make the read helper able to make multiple netfs reads.  This can
> help ceph too.

FYI, a giant rewrite dropping support for existing consumer is always
rather awkward.  Is there any way you could pre-stage some infrastructure
changes, and then do a temporary fscache2, which could then be renamed
back to fscache once everyone switched over?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
