Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A79F429937E
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Oct 2020 18:14:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kX64u-0002lN-6H; Mon, 26 Oct 2020 17:14:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kX64s-0002lG-GB
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Oct 2020 17:14:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kKa5rwd58FaNWE0BGn96xvYN4MyUgh8XVpBPUnoaT/U=; b=TGo5IUpPMbDOVjDLWOg/ocbJQM
 FF8f0tWODgQlSgCCF8B7hxLgRE7daMRGoODR9/ecaq5SCtBb/fC1h59shSiR8RlyWluQDU3xjKhms
 HwbW/e8haNZf6PmC5JK1QnQQkekl4bRTur3hqPU/I43/NvyNdNRBtQ5KTqQ3gtgsHR80=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kKa5rwd58FaNWE0BGn96xvYN4MyUgh8XVpBPUnoaT/U=; b=MOopW6HMGoiwI8Pw0iaAFJhSbi
 4OL0SIX3V+fDdJALomHA5pybK9jNQYrIl9xqVGFgBAxwJNFAtt+WzxBXRUANsqbPTg+EKya8j0qfZ
 sOoRiCmFf9phDAVh6OEJrQAtvaHMsvXxe7OZL7+cPXOOsyWoZAAFvQbLjF/oM/BaplnA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kX64m-00EVZD-M5
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Oct 2020 17:14:38 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id CD1BFC009; Mon, 26 Oct 2020 18:14:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=codewreck.org; s=2;
 t=1603732465; bh=k+Wgzjav+6/NLtxHMAhXa+c0i5J8LiGwvoX4SQgDuIM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=36ySKFXIu8EOdz4pHiZMhFpfhulw6/kpyKUaUlsF03SPPgyzR5z3w2Hh+ODya4gcG
 f1o6seAenlkngQy4dueVtxStxjTxXli5CV5xYQIWKgdO+wp+KdBSvAVCtZhROk8RvX
 0UIkbhn39BD0qO7sXVudUHVLy8uoOZ3/Lwau59TNJWcYn/ds/8a5x9Sa5WHZbKbfIo
 nGpifs9wJ1KmOviqBozVFTLUgVG2CF87eLO5A/i/84r0YZQiMTZDo7h2U9MFgfyxQc
 VXIg+F/IdyNJ8PO93My3tgSWYV4g/I/20FekHrlUfHX/ACmic1SV8/f8ZjWk3SNGlV
 BglvIky8H/hrw==
Date: Mon, 26 Oct 2020 18:14:10 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20201026171410.GA31121@nautica>
References: <20201004180428.14494-1-willy@infradead.org>
 <20201004180428.14494-2-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201004180428.14494-2-willy@infradead.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
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
X-Headers-End: 1kX64m-00EVZD-M5
Subject: Re: [V9fs-developer] [PATCH 1/7] 9P: Cast to loff_t before
 multiplying
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
 stable@vger.kernel.org, josef@toxicpanda.com, joseph.qi@linux.alibaba.com,
 dsterba@suse.com, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, idryomov@gmail.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox (Oracle) wrote on Sun, Oct 04, 2020:
> On 32-bit systems, this multiplication will overflow for files larger
> than 4GB.
> 
> Cc: stable@vger.kernel.org
> Fixes: fb89b45cdfdc ("9P: introduction of a new cache=mmap model.")
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

I realize I hadn't sent a mail -- FWIW this 9p patch has been merged,
thanks!
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
