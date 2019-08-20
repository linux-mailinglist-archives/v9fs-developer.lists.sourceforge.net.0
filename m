Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F03295DC9
	for <lists+v9fs-developer@lfdr.de>; Tue, 20 Aug 2019 13:49:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i02e9-0007Li-LO; Tue, 20 Aug 2019 11:49:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1i02e8-0007Lb-G1
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Aug 2019 11:49:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6nhf/Ms4fF82JroXpn3gwO3kduDX1I/bVAEVAU5J7uU=; b=DPr158xraHml5m89mSjSMgHUIY
 vG6pCyam7oG66/wyP67vV8lz5Z/y0k54udpIvU/hYahEUwbAD7MVi/rcBq0H+wu5W263Bxi2AFzDl
 eGjkchbaM6bFgoVhjzaLU9fTM0OM7IvQ82HBRPV6QF+ZkcQ9Lbl1yYbJkUEzh9Q8kM/0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6nhf/Ms4fF82JroXpn3gwO3kduDX1I/bVAEVAU5J7uU=; b=KSULw66NAJUP+McJD3Zb+TIORu
 4wN1Sa99RQL28GfO5j5I7K8hEWjiD7QJLzRI2SakahMWFaRSt7CZ/WTmWPqsc57aFi7di6cn5bZkq
 Tgnsr3IbRQYReKUBxMNibcCb+1TZXGl1hv+I9NcsgVGHe46JbIa2kBBvU5/6VXb187IA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i02e6-009PVw-HV
 for v9fs-developer@lists.sourceforge.net; Tue, 20 Aug 2019 11:49:52 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id E2887C009; Tue, 20 Aug 2019 13:49:42 +0200 (CEST)
Date: Tue, 20 Aug 2019 13:49:27 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Chengguang Xu <cgxu519@zoho.com.cn>
Message-ID: <20190820114927.GA12715@nautica>
References: <20190820100325.10313-1-cgxu519@zoho.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820100325.10313-1-cgxu519@zoho.com.cn>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1i02e6-009PVw-HV
Subject: Re: [V9fs-developer] [PATCH] 9p: avoid attaching writeback_fid on
 mmap with type PRIVATE
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Chengguang Xu wrote on Tue, Aug 20, 2019:
> Currently on mmap cache policy, we always attach writeback_fid
> whether mmap type is SHARED or PRIVATE. However, in the use case
> of kata-container which combines 9p(Guest OS) with overlayfs(Host OS),
> this behavior will trigger overlayfs' copy-up when excute command
> inside container.

hmm, I guess this just works for non-ovl cases because sync_inode()
realizes there is nothing to sync, but the fsync at the end still
triggers the copy-up ?

Well, I guess there really is no need to flush for private mappings,
so might as well go for this; sparing an extra useless clone walk cannot
hurt.

I'll queue this up after tests, no promise on delay sorry :/
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
