Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3D636BB75
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Apr 2021 00:07:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lb9O7-0000UG-Tw; Mon, 26 Apr 2021 22:07:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lb9O5-0000U4-JR
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 22:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XK5+f7Db0OM4+ZlUyp6+mZlgB+krJZKGD28BOsZ8jy4=; b=Y+MrTukO7SEM/1AGIJO3QFWNft
 50JiNcg09x7ANbLYSXaXTPbPGL2Z/SJtGHD2BpkshWSu9p71cLurdM6Y05fVBUxaR872CumxMEtZQ
 kDc96MKEDht7/NuJrKcgGJYPJnefpr81n+UXpPBi20CrgEbtLdZY40UB+S4QS9nq6uU4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XK5+f7Db0OM4+ZlUyp6+mZlgB+krJZKGD28BOsZ8jy4=; b=ckRp9TDUePuaE2IVmOkab+PvF7
 ei4PbZPaD0oVP5iHgj1HRaXxFo69xUXCK20G3MkjK5wrP5FlqnfjMFdoEq/kmTgxP/w3VLTalTot4
 4KB2vMm/4iidaFAX8bCqatXnX4D0u/+SX3MQzZL/GFkVO4FmY002LdwZjPjSH+KXY+Tg=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lb9O3-00Ddd4-6y
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 22:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XK5+f7Db0OM4+ZlUyp6+mZlgB+krJZKGD28BOsZ8jy4=; b=iGkeBKviOcJn1BJX6sUAaIh6QL
 fQpcT/BpHYHRoV0YGxpWdGN9zqG7o8rBYEe2r92nByzEweT8X8XmMfZ20N0DFJuBXn9ebrBvbqINt
 hdhEx/GyGvraHDNzT1XkhX/WvACkWqodOj1zBpARVj02YOQyzPLOVRWwb8O2+8UM9gHg9wqlQp0Cy
 Yr5REVFTJdyS6yLDoUFAU5EavEPsF9oZ0rCW6DSyqhMflhTuMFKSV+tbR9xQpkZYdFLy4Az+VL1o3
 zC5FYj+Peusr2GHl6f75IuZUKFhBP0sUuPN/94FrqDdXhPpjjGHhLhV2R0LDaTWtSt/kdnnif6A1B
 l8FyUBWQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lb9NK-0069d6-6I; Mon, 26 Apr 2021 22:06:45 +0000
Date: Mon, 26 Apr 2021 23:06:42 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210426220642.GU235567@casper.infradead.org>
References: <20210426210939.GS235567@casper.infradead.org>
 <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <3726642.1619471184@warthog.procyon.org.uk>
 <3737237.1619472003@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3737237.1619472003@warthog.procyon.org.uk>
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
X-Headers-End: 1lb9O3-00Ddd4-6y
Subject: Re: [V9fs-developer] [PATCH v2] netfs: Miscellaneous fixes
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 Dave Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, Marc Dionne <marc.dionne@auristor.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Apr 26, 2021 at 10:20:03PM +0100, David Howells wrote:
> Okay, how about the attached, then?

LGTM!  Thanks.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
