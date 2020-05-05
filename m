Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEAD1C4E0C
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 May 2020 08:06:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVqiw-0007zL-DK; Tue, 05 May 2020 06:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+9f099bf5d86be6f06a65+6099+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1jVqiv-0007zE-1I
 for v9fs-developer@lists.sourceforge.net; Tue, 05 May 2020 06:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W6C7+sFxYr0ur7PC5u5+OOcAwhCl6Vzl87BbtQFuCrs=; b=HrRCvSXX559VPXO/XjwMOwr4A6
 uujjMQ7de/+OB3MIpSa4msIo7r1zv4GhDHFLtE7rwsWamjEiDo9phYtKSpXPBOdIm9xlorCC9lgEj
 SGmqoz8o78H5MXzWUc23YIHPp90ok6sBENAcVT0F7IuaKpJeIXdGi7xJTKnLFlliX/XE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W6C7+sFxYr0ur7PC5u5+OOcAwhCl6Vzl87BbtQFuCrs=; b=YL42UVc80b8sdPsVgIrGoVsCPJ
 7cdrrNTFehH/vN/CykfgfMDkX0gyAxppIpa7bbGVjE1xA1Z9KGFVM0KRaB3Ro2gXsdVcm5sL8jCuI
 HJA1XiNPz4KyMMip3zqNYWcNcN+QukrrrpS1+kZFZQ4y9kKFxHT69j93E/vsj+Z0VcYg=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jVqis-00Ax7t-3o
 for v9fs-developer@lists.sourceforge.net; Tue, 05 May 2020 06:06:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=W6C7+sFxYr0ur7PC5u5+OOcAwhCl6Vzl87BbtQFuCrs=; b=EiP4PXZ4qQ3SB1dEzQAYvsRXqn
 5DuBWaZJw9AcbpUijjtnw3vUUZp0zwEpIRUFeWy8aGVbroEt6AvOgvcWsclj27dVf11l3ujEraXPR
 LLQ7etcVhgIKviyf2zqXqECHu77FCvgRXXk8xFJUxUuBhLxmOec0RJnHGqYW7cDH+FJGFi3+EbhGy
 ZMNCpDDd3edEP7nIO+Tv6JfKXEo86cqHRvS+NTqVbf5IkalaJWn2dM4MrUnagg7ZIh7mVShZxt9uP
 3kLOLyp0JyZXNf7dOaqixgInznPrUbmWsfTGMDMWvzAOS8J1GdXSCpBcxLpkH1kYNU6cwrXAbplXX
 mdeti6WQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jVqi4-0001hM-KU; Tue, 05 May 2020 06:05:40 +0000
Date: Mon, 4 May 2020 23:05:40 -0700
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20200505060540.GA28929@infradead.org>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
X-Headers-End: 1jVqis-00Ax7t-3o
Subject: Re: [V9fs-developer] [RFC PATCH 00/61] fscache,
 cachefiles: Rewrite the I/O interface in terms of kiocb/iov_iter
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Can you split this into a few smaller series?  > 60 patches is beyond
reviewer comprehension.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
