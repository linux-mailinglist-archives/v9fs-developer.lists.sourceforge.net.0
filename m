Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D8763D6D4
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 14:35:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0NFI-00039W-MQ;
	Wed, 30 Nov 2022 13:35:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p0NFH-00039Q-N7
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 13:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DFwsM28ZAHCOTIWVrHbYM9F79eW1XgktjNJ3t+S8qmY=; b=PcKq8YyLqrqsKilOhNTKpH5vGv
 8/RdIo2oVFp0rMSLgknR+dclRlMpeY54K7L2tZS7zpH2wshjGwUAGDq7VvwtL7PzCjSWdPneg95X/
 /1xjCoREBCCLsu9lZSwyzRcZ+xc+AhpAR4xL6m3YKiAN9P2C3h+5xdX3+NR6iK8P+fNk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DFwsM28ZAHCOTIWVrHbYM9F79eW1XgktjNJ3t+S8qmY=; b=UgR6c7GJN22+mhAht3AHxryDth
 EYTz1JhYVGegP9U+yc7Oqelm/NJUPb40YtzmnlQ+Mxl1gYjl0x2aULG0UJrwcu/fgu3pBKG2BXQTs
 SPqf8ZvAx2IcqOzpyCwJqtn2wxL1YQbs60vanZ02Nqk9NmTw6QFIemXz7AYsEO9/BPtg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0NFF-00019D-IE for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 13:35:27 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id A39F2C01D; Wed, 30 Nov 2022 14:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669815327; bh=DFwsM28ZAHCOTIWVrHbYM9F79eW1XgktjNJ3t+S8qmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XX/+Zwid75/ISSCwteyg/2Q9TG/nlh9pPNpdO+rsCMcRWMSu0+zYcm2WJhYJufH1k
 nInYUSTNJBUn/O/AVu8b3MzvpRD/eRX3dHbQies9FT3PrHSt85oHaHFcsB1U1Kg69i
 ipgvIDqUQvLP7Uo+vydLiS/SW/JDKetM+eMYQWFwvJYBHIaBmW8AYGnTTFgvDUiqG3
 u1wyOL/YBCy9sUgawBHx+zDwHEvtIVGXccnOmBa8bR7y7D47jUJX6N5OWKfEZhNBeA
 A+9sWAkaMWpn1YvrqyETu9NpsVE2xZNTDdXDnCXuYvB3HS7gVw9ML8zoO5on7gIJq8
 SwQF8VS61u00A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 71FA0C009;
 Wed, 30 Nov 2022 14:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669815327; bh=DFwsM28ZAHCOTIWVrHbYM9F79eW1XgktjNJ3t+S8qmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XX/+Zwid75/ISSCwteyg/2Q9TG/nlh9pPNpdO+rsCMcRWMSu0+zYcm2WJhYJufH1k
 nInYUSTNJBUn/O/AVu8b3MzvpRD/eRX3dHbQies9FT3PrHSt85oHaHFcsB1U1Kg69i
 ipgvIDqUQvLP7Uo+vydLiS/SW/JDKetM+eMYQWFwvJYBHIaBmW8AYGnTTFgvDUiqG3
 u1wyOL/YBCy9sUgawBHx+zDwHEvtIVGXccnOmBa8bR7y7D47jUJX6N5OWKfEZhNBeA
 A+9sWAkaMWpn1YvrqyETu9NpsVE2xZNTDdXDnCXuYvB3HS7gVw9ML8zoO5on7gIJq8
 SwQF8VS61u00A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 24854f8a;
 Wed, 30 Nov 2022 13:35:11 +0000 (UTC)
Date: Wed, 30 Nov 2022 22:34:56 +0900
From: asmadeus@codewreck.org
To: Schspa Shi <schspa@gmail.com>
Message-ID: <Y4dcAGM+0xzOgSCa@codewreck.org>
References: <20221129162251.90790-1-schspa@gmail.com>
 <Y4aJzjlkkt5VKy0G@codewreck.org> <m2r0xli1mq.fsf@gmail.com>
 <Y4b1MQaEsPRK+3lF@codewreck.org> <m2o7sowzas.fsf@gmail.com>
 <Y4c5N/SAuszTLiEA@codewreck.org> <m2a6487f23.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m2a6487f23.fsf@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Schspa Shi wrote on Wed, Nov 30, 2022 at 09:15:12PM +0800:
 > >> If the req was newly alloced(It was at a new page), refcount maybe not
 > >> 0, there will be problem in this case. It seems we can't rel [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p0NFF-00019D-IE
Subject: Re: [V9fs-developer] [PATCH] 9p: fix crash when transaction killed
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
Cc: lucho@ionkov.net, syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Schspa Shi wrote on Wed, Nov 30, 2022 at 09:15:12PM +0800:
> >> If the req was newly alloced(It was at a new page), refcount maybe not
> >> 0, there will be problem in this case. It seems we can't relay on this.
> >> 
> >> We need to set the refcount to zero before add it to idr in p9_tag_alloc.
> >
> > Hmm, if it's reused then it's zero by definition, but if it's a new
> > allocation (uninitialized) then anything goes; that lookup could find
> > and increase it before the refcount_set, and we'd have an off by one
> > leading to use after free. Good catch!
> >
> > Initializing it to zero will lead to the client busy-looping until after
> > the refcount is properly set, which should work.
> 
> Why? It looks no different from the previous process here. Initializing
> it to zero should makes no difference.

I do not understand this remark.
If this is a freed request it will be zero, because we freed the request
as the refcount hit zero, but if it's a newly allocated request then the
memory is uninitalized, and the lookup can get anything.

In that case we want refcount to be zero to have the check in
p9_tag_lookup to not use the request until we set the refcount to 2.


> > Setting refcount early might have us use an re-used req before the tag
> > has been changed so that one cannot move.
> >
> > Could you test with just that changed if syzbot still reproduces this
> > bug? (perhaps add a comment if you send this)
> >
> 
> I have upload a new v2 change for this. But I can't easily reproduce
> this problem.

Ah, I read that v2 as you actually ran some tests with this, sorry for
the misuderstanding.

Well, it's a fix anyway, so it cannot hurt to apply...
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
