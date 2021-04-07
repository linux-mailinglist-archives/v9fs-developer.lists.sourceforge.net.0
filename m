Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 811B835762C
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Apr 2021 22:36:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUEui-0001HA-Tp; Wed, 07 Apr 2021 20:36:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1lUEuh-0001H3-64
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Apr 2021 20:36:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8Up6+QzPmEICbzN15AwrZjkZw9JH60/A0HX1z5/TdI0=; b=keBRYLudeET20gBvW49sKG4Ys2
 yt1MAUvJ9Yt+6Pvlw6W3bfL0eSxiwKX2FRnvmXTmZDzzT6D25gt4coJhNfJueEbm42wzm3Nl791G4
 5yBI+k0rfLjZYxv7kSpRy10KoRpEmybygKRr1otJW+Fm+2UW+f9IsZvytfqZmtumOLCI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8Up6+QzPmEICbzN15AwrZjkZw9JH60/A0HX1z5/TdI0=; b=VFC/FEaVbqB+p2NlrqyvPcXPsT
 WYXREyFY95NymnVWy6YMi1npLTDIyef3rWVyRpPzU9s2DgmzQ7yuQNPktH9uGy54nfH90oQsVhgvJ
 N1UKkM4X16sUD3FwJ5JQK2Dj1QbAll5uui6A+Mabxn+VZ+b6rUW7eNknQcMGPXR6ZCVA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUEuV-00017A-Ts
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Apr 2021 20:36:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 00ABE6108B;
 Wed,  7 Apr 2021 20:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617827776;
 bh=ugr+drc7bf7S8IBKqVOw+nPN9jCbdOI8SZ6o5VM7fwY=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=jctupu8ssSv9vuAXQCQ7FIycZ12H5N98RhHey567kgxlZMZTaHivBDFa8n8CUsPFA
 zylBOz7GSkLbEedxd2ePdSvte8QDLug3MTlzrJnV2yfEAzVILjqqo2MPyDRnKt/SCQ
 jya/dcYqvV2xAf7GFwsYNY3YDEHZUGJjJdyVetUwDbCdVTrFwU00wtngiHGw12yIOd
 i/ycYjSQgG7eqE4mx/2Z0z52nN/8w3nsNloKW0QrF31fJN2vYoflWCuL7Y02KGzzpW
 nmrFQMurfQuMK8szVsvSy24473mXID/KGHSThQXjDYS9fQh9MjnOUCZoODlhMvgIkJ
 FwMOl2d6fO0AQ==
Message-ID: <0df4fd45c51dd8e87aa2a0869d81c39c9af83b31.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>
Date: Wed, 07 Apr 2021 16:36:14 -0400
In-Reply-To: <161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk>
References: <161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUEuV-00017A-Ts
Subject: Re: [V9fs-developer] [PATCH 0/5] netfs: Fixes for the netfs lib
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, dwysocha@redhat.com,
 linux-kernel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2021-04-07 at 16:46 +0100, David Howells wrote:
> Hi Jeff,
> 
> Here's a bunch of fixes plus a tracepoint for the netfs library.  I'm going
> to roll them into other patches, but I'm posting them here for separate
> review.
> 
> David
> ---
> David Howells (5):
>       netfs: Fix a missing rreq put in netfs_write_begin()
>       netfs: Call trace_netfs_read() after ->begin_cache_operation()
>       netfs: Don't record the copy termination error
>       netfs: Fix copy-to-cache amalgamation
>       netfs: Add a tracepoint to log failures that would be otherwise unseen
> 
> 
>  fs/cachefiles/io.c           | 17 ++++++++++
>  fs/netfs/read_helper.c       | 58 +++++++++++++++++++---------------
>  include/linux/netfs.h        |  6 ++++
>  include/trace/events/netfs.h | 60 ++++++++++++++++++++++++++++++++++++
>  4 files changed, 116 insertions(+), 25 deletions(-)
> 
> 

Thanks David,

I rebased onto your branch and gave ceph a spin with fscache and it all
worked fine. Let me know when you get those rolled into your branch and
I'll rebase the ceph/testing branch on top of it.

Cheers,
-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
