Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B4D4D6D82
	for <lists+v9fs-developer@lfdr.de>; Sat, 12 Mar 2022 09:14:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSwt9-00044w-2a; Sat, 12 Mar 2022 08:14:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nSwt7-00044X-8A
 for v9fs-developer@lists.sourceforge.net; Sat, 12 Mar 2022 08:14:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jFy3V5tJygVoG+31/6kc8XlbG5/C7Z4Td0QKNDh9/WU=; b=feVQGi+VlcOjttW2pKjrLlXPJa
 OdoUoZeFZ2Djr83PH4AcSQBkzem5255khe/EnO5tXV7zVyl4XQRc6vVLOW4RNblD9ufL++XFHhsYM
 KOwJI61GeKoe/P0Se1O2xPd1qAqXLSnYp2Z6VIK7NvBKijf6I6MRbFHXWjt92fkAaxEk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jFy3V5tJygVoG+31/6kc8XlbG5/C7Z4Td0QKNDh9/WU=; b=O/TY12t51ilQCOoYL0lXpdhknI
 oz799t6yIkbmKVDU+Bqk7zCFipx1dHP1a4317SG/MizBCz2vGBVo3xK9fDatSOwJ08dsadOM71J4+
 awV+MuXRYnToWmmGgJm/GNQJufJWHwi5+rrRdcvlrUZIDQJmVn0O7GtFE0eur4knXDHI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSwt1-0005uB-NW
 for v9fs-developer@lists.sourceforge.net; Sat, 12 Mar 2022 08:14:07 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2E4B9C01C; Sat, 12 Mar 2022 09:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1647072837; bh=jFy3V5tJygVoG+31/6kc8XlbG5/C7Z4Td0QKNDh9/WU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ejvt741Ba8tK8TMacwcBPDwAFElkvLQaKiWuLwvUwp283B7inBcwwd37ldPefIugI
 V5f0woj/qUhbSAVA9ZHulEBy0D9iIKKWUwhCUrcFfmMaWMeBGOUtHB7NZDOzUBKSHZ
 PJg+8yOHchxS5oQrb6YpFXzUTw8wqmegZIsuBoqzxYREIeTyYpR5MacTTzw5Z6HMjb
 bRovBw8xRNXp9iwBh6fYPortgBr+xX0Y7efC9as7hU9eK+oNLWZ20D4cjRK8buS/Wt
 zbQRqNitjigkdbYh9moKCIWUoO6RsSav+5e3ccZN0rUMU4+bU45aYPtup7mZTIY3NR
 sPRP9igTVYeqw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1ADC3C009;
 Sat, 12 Mar 2022 09:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1647072835; bh=jFy3V5tJygVoG+31/6kc8XlbG5/C7Z4Td0QKNDh9/WU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iSKF4cf4U0hmfSjiK8vQqls/D/IdiX53/xbtJCnilU20M24d8ieUWHg3NYDYmC7Jj
 HWTZ/dgs1XPBXRpO4znrreaXG2trQiKcivKx9K7+h95oxej/WvQbITBQxI3SEO0sq/
 48iK7CoijX4VI0/vm1uuI0RI4UlXC5l9qf+322YcqDE3knM4dGf3gYZ/bjCzv89rWX
 shs44QSDOm4XstiOgZPhFXhohmVIL9f0I+JcolbPqqvHNA9yG6VJeW7Bux5xs4Fz10
 mWZY/vKUwk16AeA3GuzQQzWI03/GehZ6uU5nDerRoSYRrqDcQjmf7IFkgWCMBpPvTR
 VEskXuzquTMeQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 72c8ef7a;
 Sat, 12 Mar 2022 08:13:47 +0000 (UTC)
Date: Sat, 12 Mar 2022 17:13:32 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YixWLJXyWtD+STvl@codewreck.org>
References: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  David Howells wrote on Thu, Mar 10, 2022 at 04:13:56PM +0000:
 > The patches can be found on this branch: > >
 http://git.kernel.org/cgit/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-next
 Looks good to me from the 9p side: Tested-by: Dominique Martinet
 <asmadeus@codewreck.org> # 9p 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nSwt1-0005uB-NW
Subject: Re: [V9fs-developer] [PATCH v3 00/20] netfs: Prep for write helpers
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
 Jeff Layton <jlayton@redhat.com>, David Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells wrote on Thu, Mar 10, 2022 at 04:13:56PM +0000:
> The patches can be found on this branch:
> 
> 	http://git.kernel.org/cgit/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-next

Looks good to me from the 9p side:
Tested-by: Dominique Martinet <asmadeus@codewreck.org> # 9p

writes being done by 4k chunk is really slow so will be glad to see this
finished, keep it up! :)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
