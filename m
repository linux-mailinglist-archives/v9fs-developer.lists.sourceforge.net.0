Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCB549F401
	for <lists+v9fs-developer@lfdr.de>; Fri, 28 Jan 2022 08:05:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nDLKM-0007q1-LW; Fri, 28 Jan 2022 07:05:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+804b797433aec425e7a6+6732+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nDLKJ-0007pu-Se
 for v9fs-developer@lists.sourceforge.net; Fri, 28 Jan 2022 07:05:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jf2E0pUG3GOZxihUHfPlYjorrQluw3AZrzDbcNera34=; b=BCYEEmRRjAWl6koNuNrEilSh+w
 sSIxUYn5ZDylm1/qyCi8thzr+4qHR7qzyvOtFyu8zJvut4c3QGwUh7bREauGLvdk42kOAlnDuhrq/
 Vn3vtieJTSehamG2j9/xynDrHiIhgDVkAZyeiw2GWSPQMfzABG86cZ3aNw0wVjhVPurA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jf2E0pUG3GOZxihUHfPlYjorrQluw3AZrzDbcNera34=; b=h5Xy0qwRN1NH/GibTSPSryL/90
 bRHGc1LSlax2vwU1K1cNb/mk9ItJiNj7NBag6ZAI4v2IaebdIItUBE2DEWsIkDVtGxmqxB2zECxAw
 D/FrdUVxlHIpekOLYAWcbukp6/H3Zsc59wn58gMhDHFgiVb/BrpsEXlZCjbabdHbKQXU=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nDLK8-0000pW-6D
 for v9fs-developer@lists.sourceforge.net; Fri, 28 Jan 2022 07:05:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jf2E0pUG3GOZxihUHfPlYjorrQluw3AZrzDbcNera34=; b=bSrIeDjXe0kg3MTDdcQumiTEIp
 IksleX6eyErXVnT1iLyg1ZCBmqioCp3PbXMjc4sPeR6DRewgGFgE2ZVEcAtuYigTyTrHP7MGldcHY
 DK1hD72+iajXZTdIOh8pl9YauMSILSaOKfTXVGdHUpl7eLvRA/R3fTs3EtACH/zV3wM6ElH3axvdr
 jntQAzojiTkRqldKzjaW7gL0vWEVXNzSaAHifzk/8BLge541m44TJeD/r/QHhvwsv5sfOnh1a5gKd
 IdvOl27Th9lgeKoP5kDcX7tZhRBeVpUIcOgw9ncKRTrfCBQFbTM9b8lK+y5YiDzJoaaeXfF95lTBg
 iW3L+a/Q==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nDLJg-000iLD-EQ; Fri, 28 Jan 2022 07:05:04 +0000
Date: Thu, 27 Jan 2022 23:05:04 -0800
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YfOVoIQqaXkzDju5@infradead.org>
References: <1079106.1642772886@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1079106.1642772886@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 21, 2022 at 01:48:06PM +0000,
 David Howells wrote:
 > Split S_KERNEL_FILE into two separate flags to do two separate jobs and
 give > them new names[1][2]: I strong disagreewith this. The flag is a
 horrible
 hack that does not have any business to exist to start with. Splitting it
 an potentially proliferating the use is not a good. 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1nDLK8-0000pW-6D
Subject: Re: [V9fs-developer] [RFC][PATCH] cachefiles: Split and rename
 S_KERNEL_FILE and extend effects
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
 Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 JeffleXu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Jan 21, 2022 at 01:48:06PM +0000, David Howells wrote:
> Split S_KERNEL_FILE into two separate flags to do two separate jobs and give
> them new names[1][2]:

I strong disagreewith this.  The flag is a horrible hack that does not
have any business to exist to start with.  Splitting it an potentially
proliferating the use is not a good.

The proper fix would be to fix the cachefiles design to not rely on it
at all.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
