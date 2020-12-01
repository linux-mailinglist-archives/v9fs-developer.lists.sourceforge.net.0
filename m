Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB4B2C9805
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 08:21:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kjzy8-0002RI-9T; Tue, 01 Dec 2020 07:21:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kjzy6-0002R9-Fu
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 07:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FuLm2jplxEXRKB45ql4yo1SieICwPuk97RPNiI3tRag=; b=NJUQJrwFKWAai8vNwHu+9L7rMs
 6AhXUJRfUY6rUmB1x61eTIj5kgF0Era49suJN8VIMMFeDv3IUsNneAL4pm3yejVe92VvmE5q+q76C
 oD6m+4cN4uussEiOoMRLHuVR7oK9kv/UXUWalBo34nJaSuZP+T5kG0GmIjmE2LIbm6mc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FuLm2jplxEXRKB45ql4yo1SieICwPuk97RPNiI3tRag=; b=fDlm4EETWCf9igYU+U8wGdKiHW
 QKtKgjRcRVVdE4pzNDxg73asZg7bVCgwsJr8tEnWtjfo5sXfr6KXTp7M38Qsv07e2+tZl1QC1lk26
 T314dEWOtQVwz+M85ZRYN2fVjGtK43HjjyJmEfe3KnS7RpRzOAxkApza/H6+PN5sEfSs=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kjzxs-008fF2-US
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 07:20:57 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 803B8C009; Tue,  1 Dec 2020 08:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1606807228; bh=FuLm2jplxEXRKB45ql4yo1SieICwPuk97RPNiI3tRag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IlSsMXh2kRnLYYxoYcp80kavZEh2mUbY+ANDNCaJYak42pT3YL59wiOv2Rpfki17D
 VX8/ZuaWnua8k2WyD0Gn6o0HHa3Ui/dkh1TCRDsgyuuER35iRbo+jnMC847RixliC7
 OD8ahriDUHbOlZ9J1I86pC9uv8nM7xDeCKvjadhOEvgRoTv+QQo75sDIKxWkppisND
 v7kraprutKOqPQtXy4OVJBwFuiamCKBr0xYz8bXF+KKHsRcfAihM5Mmpxh1zz6Wrq2
 iTOGX9qKCsV4+1xrp3FhjTI4+w24HvtWc9UQBgJ/Onhyq0xdeKApRhYFSsk/a9w1JZ
 z70TGBJpD17qQ==
Date: Tue, 1 Dec 2020 08:20:13 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20201201072013.GA3587@nautica>
References: <X8Xq7JvqR/LKzjB2@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X8Xq7JvqR/LKzjB2@mwanda>
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
X-Headers-End: 1kjzxs-008fF2-US
Subject: Re: [V9fs-developer] [PATCH 1/2] 9p: Uninitialized variable in
 v9fs_writeback_fid()
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Jianyong Wu <jianyong.wu@arm.com>, kernel-janitors@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dan Carpenter wrote on Mon, Nov 30, 2020:
> If v9fs_fid_lookup_with_uid() fails then "fid" is not initialized.
> 
> The v9fs_fid_lookup_with_uid() can't return NULL.  If it returns an
> error pointer then we can still pass that to clone_fid() and it will
> return the error pointer back again.
> 
> Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks, taken both.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
