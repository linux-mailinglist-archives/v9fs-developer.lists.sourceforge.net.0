Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC62489745
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Jan 2022 12:21:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n6skG-0000EW-22; Mon, 10 Jan 2022 11:21:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n6skE-0000EI-Ou
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 11:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M3CpKCS476tBUMFu8GUWmiEFpmJ0Nl5M9joFvkmU2jw=; b=llXpTc36aQy2bMG/QEn/L95ZOi
 Y8xVgRI7vy1SvPON88fKtQsFfD0MTeMjwjzIxcruXZmAWBsgpGNbFx3uQ/AIFeUzhT6zKpEtpPYph
 hPV/GoSJaBNQj0tjgbL0vgufjrDMgHR7qR/KIzBjZXg7UyHq/UNGNSvdq8hA7ozcRp1o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M3CpKCS476tBUMFu8GUWmiEFpmJ0Nl5M9joFvkmU2jw=; b=eTWSlPWry76Jo5rh0UYP2LKd7s
 T2jJ6KFcXW2RRlw11cv+KebjR9i/dA8KYermWm4yBxZBKEEB8WTs16r7kSRt0STMmec/jr1ydx05k
 s5sha+J63MGvute1dM5ume4kbtsWQtLwpYwowSDmbJgGfTUq+9N1euD9+P2Pf7ykueJQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n6skC-0002zp-Lq
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 11:21:45 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7C4B9C024; Mon, 10 Jan 2022 12:21:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641813698; bh=M3CpKCS476tBUMFu8GUWmiEFpmJ0Nl5M9joFvkmU2jw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ad/UXD+Tlx6NyAQ6TwfNielAN2P/E9qo+T3gFyIHzS1SbyJcaNGNAQfA2lWgI5Jyi
 EdnUG0+jX3zWebMXFO4ka4cADi0fES36qSozwKpqeeBcTgWvNLAH9XlLr+WwPk+PIT
 pamK434nCm/j7F7zq+OMebPBr5TgBmIRyMU0bpLUc3GieFBSPxYt6txuIZVXWj142V
 MKfDzP5jr+1ZV/oTHRNm0jU68kDFSJuNBvxhHSFHdvjqgOF+cc7QWKF7m4lpCoCGXP
 AoDGoEcKWxQOmSqzv/lCPPAlo3aqRDwXzT0g0XwRx8pQqdgBzWSLvS+s4+cCmX9FQp
 vcyYgx2hkVgIg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 4C1BFC009;
 Mon, 10 Jan 2022 12:21:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641813697; bh=M3CpKCS476tBUMFu8GUWmiEFpmJ0Nl5M9joFvkmU2jw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QO6UckVYlN+m3bFMPviSwz1BO4PHWk3d97gkU50kG7ycBzeC0V9cSWYKQqGwWn6nQ
 KFkHuZYXYgQ1TTpCzkNtGuhyAzUwUnCHKQi5de9GKDA0U6ld4F8u3L7EnEh8X1E6cc
 Xnu5xjf/jUlc53xt5iGqZpX1DvGn/C7VYT3TBu5rj3/FFpT38+1zzGF3bWuId1Wq49
 WQoll0GYAED7vkuQB8y7lPLq59zkl5s2Dd0IIH/CNr79vmIA/6abNuikA46BcZHMm0
 0uWrTwoip9SqFSN1pZj3WQqg9kLh9mvIFDNgLWlUC135LBJXlhKQczejtwfhObXJBD
 vfmT1v9v5T0fQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 029121b1;
 Mon, 10 Jan 2022 11:21:27 +0000 (UTC)
Date: Mon, 10 Jan 2022 20:21:12 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YdwWqOCtR2cDI0Fv@codewreck.org>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  David Howells wrote on Wed, Dec 22, 2021 at 11:13:11PM +0000:
 > These patches can be found also on: > >
 https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-rewrite
 Tested today's tip of the branch for 9p, with the patch I just sent it appears
 to work ok with the note that files aren't read from cachefilesd properly.
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1n6skC-0002zp-Lq
Subject: Re: [V9fs-developer] [PATCH v4 00/68] fscache, cachefiles: Rewrite
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-mm@kvack.org,
 Marc Dionne <marc.dionne@auristor.com>, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 Zhaoyang Huang <zhaoyang.huang@unisoc.com>,
 Dave Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells wrote on Wed, Dec 22, 2021 at 11:13:11PM +0000:
> These patches can be found also on:
> 
> 	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-rewrite

Tested today's tip of the branch for 9p, with the patch I just sent it
appears to work ok with the note that files aren't read from cachefilesd
properly.

They were in v5.15 and not 5.16 so it's another regression from the
previous PR, and not a problem with these patches though, so can add my
tested-by to the three 9p patches:

Tested-by: Dominique Martinet <asmadeus@codewreck.org>

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
