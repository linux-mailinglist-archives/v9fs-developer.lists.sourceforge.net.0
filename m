Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC90411537
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 15:03:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSIxL-00057v-0U; Mon, 20 Sep 2021 13:03:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1mSIxJ-00057e-Mh
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 13:03:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o0lhty4X6j45MKMdeQ2Ew7ArWBTJlIvbH0JC70A4KkM=; b=VHpcZhKvo9VGVV3cejkAMN1PzF
 KW0DSKJ5cSqLfxCcBEoovYgPQ3mLHghIPoJh9lLwW+unGceblrFuEnQ7C5e50Elz7WYelgCPfxwdT
 fVcpQGyeH4HyCb9G8+FtwDAAxOVr9L/yx/rtk2/i/F0dliLk3GwU3eIUoCRGmYv/K//4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=o0lhty4X6j45MKMdeQ2Ew7ArWBTJlIvbH0JC70A4KkM=; b=L
 8kd4vzXrT3QYD2HSbTQXTAxrkGDg0+FgaHhq0hF5af8rFPvunGklGNcFYoo4qLnZj7aPubrebCb1Q
 xX0p8vufxsY79GBafwxF2Xc9qyzIH57aMHuQ9OtsvckZHJpOV3E2QIDqN1VIAd0QIDr9cS88aArAd
 HCso+XAb/y+y7eAI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSIxG-0008Kj-8b
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 13:03:33 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0BD6EC009; Mon, 20 Sep 2021 15:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1632143002; bh=o0lhty4X6j45MKMdeQ2Ew7ArWBTJlIvbH0JC70A4KkM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=xLIBg7vPhNrbMj8r2c0C9dUf8VYXcb86x0PvvAVCKXlXo4TK3dwxu0dNNhdynOgbM
 /st4eg9dlxOfaPuoZRL57Awcs4cxulmtnPht+W517i7FwnHztdmTPgqN80M/M4ZKce
 Q4+CY2x1C2pch4rbMEB5v2QRvP7/InN6aIqLyb0Y8SZivgqxx8GsvPvjtyQPD4si8z
 IJ6u6Th2UHhjyqdGozLEzF4AoZyAuO0Xxt2Ji/R4UFEWDozPtP1lxFPMhFTwGI9fx1
 uK+NysyqBBYsTuFytpduxJsUi4PDANgqnrc1p+OTv3BjnPXGVR79aRuBfFCgCO6AFt
 Xk9xjt01zoa+w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 6B61DC009;
 Mon, 20 Sep 2021 15:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1632143000; bh=o0lhty4X6j45MKMdeQ2Ew7ArWBTJlIvbH0JC70A4KkM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=WPJjhD69bZ4L3Sj16UatugRQAQE+k0FiSJgz/31Pik1fu+m8Hj0yLWfAx46s6qcZz
 FaTBFxWExHkkKjYURG4rYKnmHZcl0X5IBN3z/o+KOfLisYJmTVxqneBod5248tTDZr
 j2Qux4cijpqrT6TOHyUm7iEvAGXixCsLfTQTIRve5NDSX/vKESsxSlDrkKGsKXL8X5
 PEZi+wQWErdr85nSsUKjduLR2eanwkUxza1RqpdXXKpLRwfBVO4SCQzAE5v7LClwJq
 uIKcio8I0T96BJoQ3DBKnN3UnylWxVMtrTA2fokrK2DIP25iB0bzZNSrj2hfBs+fZB
 yeux5WMHa+GFQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8eba130b;
 Mon, 20 Sep 2021 13:03:11 +0000 (UTC)
Date: Mon, 20 Sep 2021 22:02:55 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>, Matthew Wilcox <willy@infradead.org>
Message-ID: <YUiGf9bzSX62jUrP@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YUiAmnMV7+fprNC1@casper.infradead.org>
 <163214005516.2945267.7000234432243167892.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  David Howells wrote on Mon, Sep 20, 2021 at 01:14:15PM +0100:
 > Deal with some warnings generated from make W=1: > > (1) Add/remove/fix
 kerneldoc parameters descriptions. > > (2) afs_sillyrename() isn [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mSIxG-0008Kj-8b
Subject: Re: [V9fs-developer] [RFC PATCH] fscache, 9p, afs, cifs,
 nfs: Deal with some warnings from W=1
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
 linux-afs@lists.infradead.org, linux-doc@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells wrote on Mon, Sep 20, 2021 at 01:14:15PM +0100:
> Deal with some warnings generated from make W=1:
> 
>  (1) Add/remove/fix kerneldoc parameters descriptions.
> 
>  (2) afs_sillyrename() isn't an API functions, so remove the kerneldoc
>      annotation.
> 
>  (3) The fscache object CREATE_OBJECT work state isn't used, so remove it.
> 
>  (4) Move __add_fid() from between v9fs_fid_add() and its comment.
> 
>  (5) 9p's caches_show() doesn't really make sense as an API function, show
>      remove the kerneldoc annotation.  It's also not prefixed with 'v9fs_'.

Happy with the 9p changes:
Reviewed-by: Dominique Martinet <asmadeus@codewreck.org>

Having all of these in a single commit makes it difficult to deal but I
don't expect any conflict on my end, so happy to have it go in your
fscache tree.

Matthew Wilcox wrote on Mon, Sep 20, 2021 at 01:37:46PM +0100:
> This is an example of a weird pattern in filesystems.  Several of
> them have kernel-doc for the implementation of various ->ops methods.
> I don't necessarily believe we should delete the comments (although is
> there any useful information in the above?), but I don't see the point
> in the comment being kernel-doc.

As far as I'm concerned this is just an "it's always been like this"
thing for me/9p, I wouldn't mind if it were all converted to normal
comments -- but now it's describing arguments by name having it as
kerneldoc has helped catch comments which didn't get updated when
function changed quite a few times in patches similar to this one so it
would only make sense if we remove obvious argument descriptions as well
in my opinion, and that's a bit of manual work.

-- 
Dominique




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
