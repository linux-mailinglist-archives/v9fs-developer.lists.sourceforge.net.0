Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A0D282C4C
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Oct 2020 20:05:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kP8No-0003py-3W; Sun, 04 Oct 2020 18:05:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kP8Nl-0003pY-UV
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kq60hyf/JkVss6PLFja6RwjmdK1h2wopBDD0M0MxutQ=; b=EM09Bo8IkseHzdXGo8xJMokX+g
 tPJteb1mv+CmeFK2Evuqu9BNkkLhJN5LenBsuA5T6PX+JjTPBpzk1G+dVu9uzf5KBLvvZ7KID8SJ+
 NUUGwkBJK2sYiyLLSgwbjdKVtLdfvUeh2C0BLo5AOd14adTBCS/k4anreIm7pJMHGImM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kq60hyf/JkVss6PLFja6RwjmdK1h2wopBDD0M0MxutQ=; b=Q
 PDRvT6f6wTXpvKYqHffhJeMM+Y2kaBJaaN+nlhTpj6AoZq5Rlcwy1IMTBqkOX+XJnO0WkyRfrTDA4
 ooariMfjvGnPtJGQUgYD9Rb7+PHJnMbL7eqazwAlI3TfxeN5bU+yRti/7qzj5OYIl+3eFUqo7N9b7
 pfDcT6JHHBtsWvjE=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kP8Nc-00GVaJ-MI
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Oct 2020 18:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=kq60hyf/JkVss6PLFja6RwjmdK1h2wopBDD0M0MxutQ=; b=HTM6IuREa2NKfNjD/1XHN4bmam
 asXq+hMHbW3IIMoYqhQ2hB5WpfrcCG6+YI/KOZlt0XYJBdycvCd+N6fKqCdAhgb8NYHU7c1MqPvDb
 bAcV3/0kJ8WQQ8sljWxsaHW06a8/FmGl8z7IHhKQqqhPcZTkMndg+S6OaVY1Na4jz0JoOrmnjndSZ
 YCKHQk/F952Sl76JYLmtLX1wj2HGWcOqT9UHx+D8PCdcyAtgFP60Fw6IoL29kHQMWum0kb4mpEsA9
 7q1lbKApiGGqiXkaM2motFy2ejSLJrzvyUOUhcUaw5dRknYlNOqITO8WwkOkiIvTthqzHXCHxW4+e
 7GDCOIfw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kP8N4-0003mV-Po; Sun, 04 Oct 2020 18:04:31 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Sun,  4 Oct 2020 19:04:21 +0100
Message-Id: <20201004180428.14494-1-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
X-Headers-End: 1kP8Nc-00GVaJ-MI
Subject: [V9fs-developer] [PATCH 0/7] Fix a pile of 4GB file problems on
 32-bit
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
Cc: lucho@ionkov.net, clm@fb.com, ericvh@gmail.com, linux-btrfs@vger.kernel.org,
 mark@fasheh.com, jlayton@kernel.org, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, josef@toxicpanda.com,
 joseph.qi@linux.alibaba.com, viro@zeniv.linux.org.uk, dsterba@suse.com,
 v9fs-developer@lists.sourceforge.net, idryomov@gmail.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I caught a bug in my own code where I forgot to cast to loff_t before
shifting.  So I thought I'd grep around and see if I could find any
other occurrences.  I found a few that were clearly bugs, and they're
fixed below.  There are other places where we don't cast, and I think
they're OK.  For example, some places we have a 'nr_pages' being shifted
by PAGE_SHIFT, and that's probably OK because it's probably a single I/O.

Also, I didn't touch AFFS or ROMFS or some other filesystems which
probably have never seen a 4GB file in their lives.  Might be worth
fixing to be sure nobody copies bad code from them, but not worth cc'ing
stable for.

I didn't look for SECTOR_SHIFT or SECTOR_SIZE (or bare 9/512), just
PAGE_SIZE and PAGE_SHIFT.

I can't find a GCC warning to enable for this pattern, so I filed
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97287

Matthew Wilcox (Oracle) (7):
  9P: Cast to loff_t before multiplying
  buffer: Promote to unsigned long long before shifting
  ceph: Promote to unsigned long long before shifting
  ocfs2: Promote to unsigned long long before shifting
  btrfs: Promote to unsigned long long before shifting
  btrfs: Promote to unsigned long long before shifting
  btrfs: Promote to unsigned long long before multiplying

 fs/9p/vfs_file.c  |  4 ++--
 fs/btrfs/ioctl.c  |  6 +++---
 fs/btrfs/raid56.c |  2 +-
 fs/btrfs/scrub.c  | 25 ++++++++++++++++---------
 fs/buffer.c       |  2 +-
 fs/ceph/addr.c    |  2 +-
 fs/ocfs2/alloc.c  |  2 +-
 7 files changed, 25 insertions(+), 18 deletions(-)

-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
