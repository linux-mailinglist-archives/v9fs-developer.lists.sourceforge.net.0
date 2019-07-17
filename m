Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 879B66C244
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Jul 2019 22:44:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hnqmd-0001kq-6b; Wed, 17 Jul 2019 20:44:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hnqmb-0001kj-Tl
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Jul 2019 20:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HXRZZ1gPFnavla230vJ+m0Q8qbp+kmvc80CFchGkkso=; b=TZiY25Mz7jaQq0g8trsw6wMAHV
 ZuPKK3pnLyVGyfg6ihHXjmhxxmXNgWGE8hVySOnNziQ6J5/+QjTqkqUtSUH69OGVGyIl3sC5usOC0
 vjEkHGeerTQJ7lEy/wge9mfgdUXJ8l0ha2lHfuw96nKin1nG4NdlCUnVpuy5QGf/PTJ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HXRZZ1gPFnavla230vJ+m0Q8qbp+kmvc80CFchGkkso=; b=mRMhMeEtxeMe8newIA7eW9U5pk
 ARbq4DwJcyqmpnD18sIjFBYNdMRMevmU3xLHbSUnF1iGi8qQEhoa2Yw8FblF0be+bObtIXQmR8iwS
 6/pCPBFos69ff00G7r9xBUjzGyiPK1b9QMeK2rf2lDWpDq4rsLczRtjQkRJrMnbuc6yA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hnqmZ-005ZA3-LY
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Jul 2019 20:44:13 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 02173C01B; Wed, 17 Jul 2019 22:44:05 +0200 (CEST)
Date: Wed, 17 Jul 2019 22:43:49 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Matthieu Baerts <matthieu.baerts@tessares.net>
Message-ID: <20190717204349.GA14632@nautica>
References: <0757f061-0685-6e8e-9e6f-035d0f57eaf8@tessares.net>
 <20190715113251.GA28601@nautica>
 <f6513948-312e-2edb-44e7-40217741e9ba@tessares.net>
 <20190715161501.GA6535@nautica>
 <2dfd3bab-f7ce-56ef-9e39-eb774781272e@tessares.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2dfd3bab-f7ce-56ef-9e39-eb774781272e@tessares.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hnqmZ-005ZA3-LY
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthieu Baerts wrote on Wed, Jul 17, 2019:
> > The only one that might be related is "9p: p9dirent_read: check
> > network-provided name length" ; but even that likely shouldn't kick in.
> 
> Two days ago, I only had the time to launch a kind of 'git bisect' to
> find which of the new 9p patches caused the issue. It seems you were
> right, without this "9p: p9dirent_read: check network-provided name
> length" patch, I no longer have the KASAN warning on this v4.14 kernel.

I still have no idea how the two relate but that's a good start...

> > You can check if it was implied by adding debug=1 to your 9p mount
> > options, assuming it is compiled with debugs (I still plan on making
> > that the default eventually as debug=1 only enables *error* messages)
> 
> I will check how to enable these debugs (is it a kernel option or you
> want the output of pr_debug?) and report the logs here.

You basically just need to check if CONFIG_NET_9P_DEBUG is set in your
kernel config and add 'debug=1' to your mount command line options, that
should probably print something before the kasan error (like
p9dirent_read failing, as without the patch it could not return an
error) - the pr_debug messages will go to dmesg.

If you can it might help to change the error message after p9pdu_readf
to P9_DEBUG_ERROR as well in case that is the one; it would be possible
to print P9_DEBUG_9P messages by setting the bit but it might be too
verbose to reproduce, it's probably better to raise the message to error
here.

---
diff --git a/net/9p/protocol.c b/net/9p/protocol.c
index 462ba144cb39..0bc19088a53b 100644
--- a/net/9p/protocol.c
+++ b/net/9p/protocol.c
@@ -621,7 +621,8 @@ int p9dirent_read(struct p9_client *clnt, char *buf, int len,
 	ret = p9pdu_readf(&fake_pdu, clnt->proto_version, "Qqbs", &dirent->qid,
 			  &dirent->d_off, &dirent->d_type, &nameptr);
 	if (ret) {
-		p9_debug(P9_DEBUG_9P, "<<< p9dirent_read failed: %d\n", ret);
+		p9_debug(P9_DEBUG_ERROR, "<<< p9dirent_read failed: %d\n",
+			 ret);
 		trace_9p_protocol_dump(clnt, &fake_pdu);
 		return ret;
 	}
---

> Of course, I understand. For the moment, this confd process is more like
> a blackbox to me but I will try to get more details! I just hope I will
> not have to use strace :)

Let's see what the error messages have to say first, there might be an
interesting hint there.
It might be faster for me to give you a few printks to add than to
actually find a concise reproducer if you're willing to bear with me...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
