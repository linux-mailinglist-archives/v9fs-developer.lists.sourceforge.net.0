Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1222B9748
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Nov 2020 17:07:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kfmT0-0007Xv-Tw; Thu, 19 Nov 2020 16:07:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kfmSz-0007Xo-HG
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Nov 2020 16:07:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wnp7kYlwuZStjD6vk8suZ1iAGibt5LBJYqJazO3nkt8=; b=DzaaYu2nHePxI+VNTSurxAZbDG
 uqdKbHleB5VmIbCBbtwajptFsoZvOyLknhs9HRLt/zEa+oqHX0JHDcbsFOjcnlENrN1f2Via8B8ux
 PCOwaDeYVwgP/a8lgpTDNmZcTIu5JaxyHP9KpUwQSzFID7jfGwe6EVa8vPzIbHxhMIao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wnp7kYlwuZStjD6vk8suZ1iAGibt5LBJYqJazO3nkt8=; b=e8HA22L+nRuDrIOFeeP5nfyj0v
 y87h3BdaG7MqJ4VF+d2jxWxAgcUFEqoKNTZ6wcGxcTYUY/IcyN5NABbCqYzFCNeMkQMBnc5OPbNTp
 o0xqFwZ+meicLg6Q2ivG0A28EJAEVhZKRO7OF8GIORFLK2v906H38AT+mExwWZODhvZw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kfmSw-0004lo-BJ
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Nov 2020 16:07:25 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 94310C009; Thu, 19 Nov 2020 17:07:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1605802034; bh=wnp7kYlwuZStjD6vk8suZ1iAGibt5LBJYqJazO3nkt8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CcbtVURf8E4d6fjojEBxPljhoOmxJMjDM+Q0+opIWdb9YqqJEAfHi5LSOfb3zni7U
 2O3ITJMad9fwonq3dlKwO/pAU0ux5oebtPZNTtLIY3XUoF1iLFbJi6oPvTkpU7Y9bK
 MHMXeXh8AdeXmtuuDNoXq+mFjBpt7NsRdOPgwtsRCy2cUGRuVJYRYFKPZYTK490F+G
 rf6BHH416Z8e0lIvsrByeUg0qakuof8CpwSHX7DRic6oj9GXDXLnjmF13Du/x80jM/
 h2sj7LgrbF5XVer76oo8OFiOX/YY17QY+fHeKGKErCELsXHjAErCG4UNNoeDzWu5Ig
 d/bAtSGIp66rQ==
From: Dominique Martinet <asmadeus@codewreck.org>
To: 
Date: Thu, 19 Nov 2020 17:06:50 +0100
Message-Id: <1605802012-31133-1-git-send-email-asmadeus@codewreck.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <20201103104116.GA19587@nautica>
References: <20201103104116.GA19587@nautica>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kfmSw-0004lo-BJ
Subject: [V9fs-developer] [PATCH 0/2] follow-up to 9p: fix race issue in fid
 contention.
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
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, qemu_oss@crudebyte.com, groug@kaod.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

In case anyone wondered why the patch series isn't in -next yet, I ran into
some troubles with non-none cache that the second patch appears to fix.

Also realized I hadn't sent the fixups I had meant Jianyong Wu to do, so
sending both now (keeping it a separate patch) and will put to my next
tree now, this time for real.

Hopefully not too many other bugs not uncovered... But only one way to
find out, and I think refcounting 9p fid will allow some nice
optimizations in the future if anyone cares to work on it...


Onto fscache now...!


Dominique Martinet (2):
  9p: apply review requests for fid refcounting
  9p: Fix writeback fid incorrectly being attached to dentry

 fs/9p/fid.c             | 10 ++++------
 fs/9p/fid.h             |  2 +-
 fs/9p/vfs_file.c        |  6 +++---
 include/net/9p/client.h |  2 +-
 net/9p/client.c         |  4 ++--
 5 files changed, 11 insertions(+), 13 deletions(-)

-- 
2.28.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
