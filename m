Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD8240BAC1
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Sep 2021 23:52:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQGLX-00013s-7K; Tue, 14 Sep 2021 21:52:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1mQGLV-00013i-RB
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 21:52:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TnXdIO/oF8kdpia/r491f3TADt5GhanlBg8g1B7rlOo=; b=AokWDtrXvrZcwPH2kKEqa2WzDr
 8J99ASBPEi37BQoc+5orPmPATYOeKteS7y+frSos57p1bkpyzFrRI1tChHS4u3khIQEt8Ke2+S2RF
 2KOHeibhTYCyBHMITqLwOp2JHp4vMHb8iME3S5IGt7elBHcZvfU84lHZ+PUGKZycpHVs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TnXdIO/oF8kdpia/r491f3TADt5GhanlBg8g1B7rlOo=; b=KCnKlgoAoH/BVtrw3rn3akwLmo
 soobM1poVUy62QBkLitzcVUioscjCyx9QPH2AC3y2W5jS/xd9D6Er7DJoME95x9wAzzOj+cE0SH7z
 INhm3pEGG89XjF6IdDFC2DlgtSJqMnEU0OknSK2Zdy89p/+e9rLGyh22nY7Q/zTgoH4k=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQGLP-0005zi-F2
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 21:52:05 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 15409C01E; Tue, 14 Sep 2021 23:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1631656311; bh=TnXdIO/oF8kdpia/r491f3TADt5GhanlBg8g1B7rlOo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=3+TN1nUPD7E0ikf3ybTrtRRFeG+ZMypqS6RWcqbQpq7MMOrh5csDJQKtgqhdPa8n6
 yQ6/e4rc16wk3fryGfNrabWRor0YgKassUSnJloJ0aK9Xua47cuX2WcW1gfymYpmer
 h3T2j9l9nSAmypkP1neoOVqUiQ3hbuZ02xo8nBOGfYvk+CTcISWMWSgxjFTWg3Fs16
 +9SgklmDuWSf/lG3giknSANUSNZrHAmjA2Wue3FYU7YlStIPZWTR9v0HKjLNAMo5Pu
 cKl31Fl4aA5fNcfn3uxq33js627akWaBlvGEhoL0+5lg0tfNWyApTSuhYKC7F+Wlgy
 03L6LZr6z4m4A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id CE81AC009;
 Tue, 14 Sep 2021 23:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1631656310; bh=TnXdIO/oF8kdpia/r491f3TADt5GhanlBg8g1B7rlOo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qJuDIZ0KNIBIsCWAwJIBTUKARF062cKhG8Izjmu7Vgs0kdCzVFNrGl8EvKgCQPjB7
 NvbztZkdPdABmARgGCtq1uReBl0X7UZMmJLdrkk8VjVqC5aVczXUKKkgxJU7PdAWYf
 ULl/9B6rNX3MRoUof3MWTxtYOgFPLQwcJnm7D3jRxyApqXxQcvd9Iq8wo8t4yAxjrg
 LUuKVU+b/s1whApaf173AslTEtux+yflsS8J316d88Di/dauNTnmAbgcgcDnXT53fu
 3ZrhkPyYmVMzI2CBmzrELf0E8g9UZmmU1UWOEiLWn9YDp3D1ELsl6wLk4+Yj+E4/dV
 QDr4PSOlME2JQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 7519297c;
 Tue, 14 Sep 2021 21:51:41 +0000 (UTC)
Date: Wed, 15 Sep 2021 06:51:26 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YUEZXktGOCUWfvnU@codewreck.org>
References: <6274f0922aecd9b40dd7ff1ef007442ed996aed7.camel@redhat.com>
 <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
 <163162772646.438332.16323773205855053535.stgit@warthog.procyon.org.uk>
 <439558.1631628579@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <439558.1631628579@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi folks, David Howells wrote on Tue, Sep 14,
 2021 at 03:09:39PM
 +0100: > > Does this change require any of the earlier patches in the series?
 If > > not, then it may be good to go ahead and merge this conversi [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mQGLP-0005zi-F2
Subject: Re: [V9fs-developer] [PATCH 4/8] 9p: (untested) Convert to using
 the netfs helper lib to do reads and caching
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
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi folks,

David Howells wrote on Tue, Sep 14, 2021 at 03:09:39PM +0100:
> > Does this change require any of the earlier patches in the series? If
> > not, then it may be good to go ahead and merge this conversion
> > separately, ahead of the rest of the series.
> 
> There's a conflict with patch 1 - you can see the same changes made to afs and
> ceph there, but apart from that, no.  However, I can't do patch 6 without it
> being applied first.  If Dominique or one of the other 9p people can get Linus
> to apply it now, that would be great, but I think that unlikely since the
> merge window has passed.

Agreed with the merge window passed it'll be for next one -- but I'd
like this to sit in -next for as long as possible, so I'd appreciate
either being able to carry the patch in my tree (difficult as then
you'll need to base yourself on mine) or you putting it in there somehow
after I've got the most basic tests verified again (do you have a branch
pulled for linux-next?)

I'll try to get tests done in the next few days and check my notes for
things that were missing in the earlier version you gave me in the
past.. Sorry for not doing it myself, you're of great help.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
