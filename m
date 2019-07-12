Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 071AA66832
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Jul 2019 10:05:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hlqYJ-0001Pu-Oa; Fri, 12 Jul 2019 08:05:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hlqYI-0001Pn-IX
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jul 2019 08:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EGi5wXRy1cIVtvmF+q8LSHWfiPGNUtqeqwqVjwdusaY=; b=lfFt0G+YSvP0hGleY2EHRPXTeO
 0mZAGjrW7FiUAXcAwt5ZDX0ZKnZh3NCH87ZMJNXxuZdpFSXLNM/p0wq8zdagSldxkAYmSfR6CnJlU
 5iKXqLqxQWBDou+o/06mGqnVFB35jyILuaIo+Z8iNdnal6gW4LqnMVSd4LGxbFae12Sw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EGi5wXRy1cIVtvmF+q8LSHWfiPGNUtqeqwqVjwdusaY=; b=f
 Pu8On1+U9u6fRvpbM05wkgaOM7g2DWykyvdb8kVrDTkjPPotMpXMe6r38RMsCUZ5bi2+pm5AGbb0Y
 T8egqeA49W+0fljmr0kbFzFg9XsYnqEqVlPvQDYjiEOnrd6QYiK79fQEWU8k8hMjqWoMS3maxBnqc
 5o12MIl/UctjKN5E=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hlqYG-00GPcR-Ly
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jul 2019 08:05:10 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id E4A83C009; Fri, 12 Jul 2019 10:05:01 +0200 (CEST)
Date: Fri, 12 Jul 2019 10:04:46 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190712080446.GA19400@nautica>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hlqYG-00GPcR-Ly
Subject: [V9fs-developer] [GIT PULL] 9p updates for 5.3
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Here is a 9p update for 5.3, just a couple of fixes that have been
sitting here for too long as I missed the 5.2 merge window.

I have two more patches that I didn't have time to test early enough for
this but also are plain details fix, please let me know if you would
prefer having me send a pull request for -rc2 after a week in -next or
if I should just wait until the next window.
There's little risk but I'm usually rather conservative on this.


The following changes since commit 5908e6b738e3357af42c10e1183753c70a0117a9:

  Linux 5.0-rc8 (2019-02-24 16:46:45 -0800)

are available in the git repository at:

  git://github.com/martinetd/linux tags/9p-for-5.3

for you to fetch changes up to 80a316ff16276b36d0392a8f8b2f63259857ae98:

  9p/xen: Add cleanup path in p9_trans_xen_init (2019-05-15 13:00:07
  +0000)

----------------------------------------------------------------
9p pull request for inclusion in 5.13

Two small fixes to properly cleanup the 9p transports list if virtio/xen
module initialization fail.
9p might otherwise try to access memory from a module that failed to
register got freed.

----------------------------------------------------------------
YueHaibing (2):
      9p/virtio: Add cleanup path in p9_virtio_init
      9p/xen: Add cleanup path in p9_trans_xen_init

 net/9p/trans_virtio.c |    8 +++++++-
 net/9p/trans_xen.c    |    8 +++++++-
 2 files changed, 14 insertions(+), 2 deletions(-)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
