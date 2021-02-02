Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C533130CF27
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Feb 2021 23:37:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l74IY-00026U-M8; Tue, 02 Feb 2021 22:37:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1l74IX-00026M-10
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Feb 2021 22:37:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IMrtttN1mi28dq233XNJOGfQCzxwUb1Bj3ffhZBkhcg=; b=H2Wzt2lgId+Svh8ojGFw9eeeAM
 chsVQx5il1l6ORwGWCQx9IA/9WgfpNlbVa7/A4pfoKTrUxYpKUnVGDkg2L7ELCjhhe7zdmHRJQ42t
 dT/IGPeqT9PiLbcYKX5pimt60VACd4Q2/3tcp+JTed1bfpuRqFSwZJqmPKKQ9eJ21FJU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IMrtttN1mi28dq233XNJOGfQCzxwUb1Bj3ffhZBkhcg=; b=LyeBv5hRgcw4MSc4VA5Ew2IFV9
 jis14w/Tqylp5z/DtMZpxcH6JxcKMmteTTycnMjWV+w40cQ446grO5x6Gnkm+alGQxE/zWSoFMUV0
 Ljo+nEjTx1YLoATjbXrYgxC5+JMRF8Dvr4spFRGdCG7e0sVkisW1uh/8T48sVFpZp4ec=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l74II-0006Sb-DJ
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Feb 2021 22:37:24 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7F793C020; Tue,  2 Feb 2021 23:37:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1612305421; bh=IMrtttN1mi28dq233XNJOGfQCzxwUb1Bj3ffhZBkhcg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PrCUhJ2/1qS5npk8AwSvuEA4/+DChPsN1FqzAbFrLdXZHjMIUk3z86s39qbc8cmbO
 NwaPxKDF6iXanJ6FsCAZYoYIOpbiCK5rReHP4pltJX7OM9Aep7NN90ebhQArnIvA/6
 ZYfp5zix9ZFEe0TieYHxMAHBcytB8VFhkJcjt6WvRYjLQNWm/aDu8Ou+sNWy/fn7gS
 SiUp56FdZe9d9jJDatNLlBAn/JQYS9vxS/twKKFEC+5y4vAiOK6eP3fJmUbvgvdcsi
 jA4ufFKi/zLXxYAPhnsjA2A7ZEjWBlxUxpC923BOMry6zAaheJusGvCWwJU/5xJaxf
 Wm+G7qFOu9HNw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from tyr.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTP id 87D1CC01C;
 Tue,  2 Feb 2021 23:37:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1612305421; bh=IMrtttN1mi28dq233XNJOGfQCzxwUb1Bj3ffhZBkhcg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PrCUhJ2/1qS5npk8AwSvuEA4/+DChPsN1FqzAbFrLdXZHjMIUk3z86s39qbc8cmbO
 NwaPxKDF6iXanJ6FsCAZYoYIOpbiCK5rReHP4pltJX7OM9Aep7NN90ebhQArnIvA/6
 ZYfp5zix9ZFEe0TieYHxMAHBcytB8VFhkJcjt6WvRYjLQNWm/aDu8Ou+sNWy/fn7gS
 SiUp56FdZe9d9jJDatNLlBAn/JQYS9vxS/twKKFEC+5y4vAiOK6eP3fJmUbvgvdcsi
 jA4ufFKi/zLXxYAPhnsjA2A7ZEjWBlxUxpC923BOMry6zAaheJusGvCWwJU/5xJaxf
 Wm+G7qFOu9HNw==
Received: from tyr.codewreck.org (localhost [127.0.0.1])
 by tyr.codewreck.org (Postfix) with SMTP id 43C2D28076C;
 Wed,  3 Feb 2021 07:36:59 +0900 (JST)
Received: (from asmadeus@codewreck.org)
 by tyr.codewreck.org (mini_sendmail/1.3.9 19Oct2015);
 Wed, 03 Feb 2021 07:36:59 JST (sender asmadeus@tyr.codewreck.org)
Date: Wed, 3 Feb 2021 07:36:44 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210202223644.GA27614@tyr>
References: <241017.1612263863@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <241017.1612263863@warthog.procyon.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1l74II-0006Sb-DJ
Subject: Re: [V9fs-developer] [PATCH] 9p: Convert to cut-down fscache I/O
 API rewrite
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
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi David,

David Howells wrote on Tue, Feb 02, 2021 at 11:04:23AM +0000:
> Here's a draft of a patch to convert 9P to use the cut-down part of the
> fscache I/O API rewrite (I've removed all the cookie and object state machine
> changes for now).  It compiles, but I've no way to test it.  This is built on
> top of my fscache-netfs-lib branch:
> 
> 	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-netfs-lib

Thanks for going the extra mile with all this, it's appreciated!

> I'm hoping to ask Linus to pull the netfs lib, afs and ceph changes in the
> next merge window.
> 
> Would you be able to give it a whirl?

I'm afraid I won't have much time to give for the next merge window (in
roughly 2-4 weeks iiuc)
I can probably find some time to run very basic tests from my usual
setup but testing actual fscache capabilities will take more time and
I'm quite short right now -- I honestly have no idea if anyone uses
fscache or if it's even working right now so I'd rather take a moment to
test it properly before/after, and it's time I don't have right now.


OTOH I'd support getting the netfs lib in as planned this merge window,
and I'll definitely take the time to test this patch into my tree before
the next one in ~3months.
I think the whole point of the rework you've done is we can do things
more smoothly and there is no reason to rush it anymore, having the new
lib get tested through afs/ceph in the real world can only be reassuring
for other filesystems.

Cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
