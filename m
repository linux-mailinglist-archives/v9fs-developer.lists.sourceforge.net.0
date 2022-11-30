Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 940D663D3F2
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 12:07:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0Kvj-0006kF-SE;
	Wed, 30 Nov 2022 11:07:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p0Kvi-0006jh-Is
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 11:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xf0zVpTlYde/bxu53jwBvwyrnmZDM6MyGXUmXHAVDU0=; b=WOX/g3APfMCz/mxpXUsURtUuSA
 nIScOBIstn/inoJJp2+lu680HItH98h851vG76/d8NSmjGMLSk++6ZFtx2mlIU7fehX8oPedYyeRn
 NzNoPIXraTF526kFLfDecwTKiKy6msov0QOpD/YJgoPbc1ppNX2dG7chNghjGsasRkv4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xf0zVpTlYde/bxu53jwBvwyrnmZDM6MyGXUmXHAVDU0=; b=N8u4Nji6JUelNvNxK+Fb9xFa9U
 94KWEQCHjwBWf6dqgc5hJ4GNkVZBJbryxw+vpFHUDAPyL280bg1jEIMs/cBledF8mN/gVlfijt1x5
 Ww9zwjRkG3cb59hTFfal3jAzMuuI/ePRJ+dhIKp1qAVtoij5Tw0wATDlfyChKmeJ7yP8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0Kvc-00022r-JO for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 11:07:06 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 75981C021; Wed, 30 Nov 2022 12:07:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669806422; bh=xf0zVpTlYde/bxu53jwBvwyrnmZDM6MyGXUmXHAVDU0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mkfutD8yjATXqvMQIyS7YBDYJmrXAdQjSMkXquGYbIoZG9B8/HTz2olo5SB2grcd+
 WjjS0eHAT5nKpXOVZWj7VGdUfFymmFwRaiiDsTuhdoIIBeGTGX6TFcZBMq1F3UkfwC
 rw8X4X3EJ8Zd1XJ/mdpUFjtzEqdAXcEZjRpUo7fRp5bOL10j/Id5F/F+pFYWtS9acw
 3fWK61cf6aBauQH6Kl0fjIeP3vQhI3Rh1eq+SWPqTFSjNJpCt+0jMqONDOCzT3Yion
 YcPZmEEf8fjbLGOo6U5wILZEL7qCGj/eYwXyKcOXaOl/5kZSkAH8TCS8YOTUB8NigK
 Q2/Qdhi7SWOkA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id D3CBDC009;
 Wed, 30 Nov 2022 12:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669806421; bh=xf0zVpTlYde/bxu53jwBvwyrnmZDM6MyGXUmXHAVDU0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XhnFZc69CTBcQak7ujtOYC4fe3atj0S2rJqHvTI9blyQpo9/jCW0a+BCfH+FBp5+G
 a6SoU2byYmEuDkUD4fIzA+PaLxa8WvOJXCGx+G+1YgsqnUVl6LaWFQD/bhLBXEN/01
 6BY0BLVnP5muceuLbihVp95115ad7Zfc3llOHcuxT0MeF7bfBD3OWLEFntJXJ8pxXu
 DXjGmVdyAR8szwe9acx88ld+FfjSYB7urx7G/nPY3e1vTluGINzhy189/YEdnf7zgu
 jddY5LOFZGnvquZIwwOrv4CgiyCJtOVvU/EJlLeUPCn5Ydv92S7I+ZC4OiM+sit4dO
 LnMKzK5MlHYmA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 81d189f2;
 Wed, 30 Nov 2022 11:06:46 +0000 (UTC)
Date: Wed, 30 Nov 2022 20:06:31 +0900
From: asmadeus@codewreck.org
To: Schspa Shi <schspa@gmail.com>
Message-ID: <Y4c5N/SAuszTLiEA@codewreck.org>
References: <20221129162251.90790-1-schspa@gmail.com>
 <Y4aJzjlkkt5VKy0G@codewreck.org> <m2r0xli1mq.fsf@gmail.com>
 <Y4b1MQaEsPRK+3lF@codewreck.org> <m2o7sowzas.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m2o7sowzas.fsf@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Schspa Shi wrote on Wed, Nov 30, 2022 at 04:14:32PM +0800:
 > > - reqs are alloced in a kmem_cache created with SLAB_TYPESAFE_BY_RCU.
 > > This means that if we get a req from idr_find, even if it has j [...]
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
X-Headers-End: 1p0Kvc-00022r-JO
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

Schspa Shi wrote on Wed, Nov 30, 2022 at 04:14:32PM +0800:
> >  - reqs are alloced in a kmem_cache created with SLAB_TYPESAFE_BY_RCU.
> >  This means that if we get a req from idr_find, even if it has just been
> >  freed, it either is still in the state it was freed at (hence refcount
> >  0, we ignore it) or is another req coming from the same cache (if
> 
> If the req was newly alloced(It was at a new page), refcount maybe not
> 0, there will be problem in this case. It seems we can't relay on this.
> 
> We need to set the refcount to zero before add it to idr in p9_tag_alloc.

Hmm, if it's reused then it's zero by definition, but if it's a new
allocation (uninitialized) then anything goes; that lookup could find
and increase it before the refcount_set, and we'd have an off by one
leading to use after free. Good catch!

Initializing it to zero will lead to the client busy-looping until after
the refcount is properly set, which should work.
Setting refcount early might have us use an re-used req before the tag
has been changed so that one cannot move.

Could you test with just that changed if syzbot still reproduces this
bug? (perhaps add a comment if you send this)

------
diff --git a/net/9p/client.c b/net/9p/client.c
index aaa37b07e30a..aa64724f6a69 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -297,6 +297,7 @@ p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
 	p9pdu_reset(&req->rc);
 	req->t_err = 0;
 	req->status = REQ_STATUS_ALLOC;
+	refcount_set(&req->refcount, 0);
 	init_waitqueue_head(&req->wq);
 	INIT_LIST_HEAD(&req->req_list);

----- 

> >  refcount isn't zero, we can check its tag)
> 
> As for the release case, the next request will have the same tag with
> high probability. It's better to make the tag value to be an increase
> sequence, thus will avoid very much possible req reuse.

I'd love to be able to do this, but it would break some servers that
assume tags are small (e.g. using it as an index for a tag array)
... I thought nfs-ganesha was doing this but they properly put in in
buckets, so that's one less server to worry about, but I wouldn't put
it past some simple servers to do that; having a way to lookup a given
tag for flush is an implementation requirement.

That shouldn't be a problem though as that will just lead to either fail
the guard check after lookup (m->rreq->status != REQ_STATUS_SENT) or be
processed as a normal reply if it's already been sent by the other
thread at this point.
OTOH, that m->rreq->status isn't protected by m->req_lock in trans_fd,
and that is probably another bug...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
