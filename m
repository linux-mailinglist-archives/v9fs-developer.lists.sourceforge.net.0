Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3A15F7275
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Oct 2022 03:06:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ogboY-0007No-7a;
	Fri, 07 Oct 2022 01:06:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ogboW-0007Ni-NP
 for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 01:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nIw/4SZLODP2q/AJ8PriciNPLFxNn+7AHozKzYHKCNA=; b=W/ojVs6cf8guFsEIrkMfMfgoIO
 08mS01PYsI1NV9nd01abMZm00WOMHIF0yLH8DL5ZCQD9w3oHeqURXO1SKozdkmSgPqplnqyvmH7IR
 x/Jc2im15G4c6KdLXRP2Vuf108bL/9feo4ZxL5ir9knQjMPzcLUhF/ESchn6Cgyy/HYI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nIw/4SZLODP2q/AJ8PriciNPLFxNn+7AHozKzYHKCNA=; b=CL9Mm9jmCc+XAWhfw6GvQd8gYw
 qDmZjtOw8wIJlKuZtwhvfDO56bcDKwD4HQFsdZm+UQHI6bO6sOqj5jAxQdP0FCUrd0fU8uHHztbix
 PUiVAkTv2uXfZjMlFCJjMSn/6i7Vrm643K5sSrr91Zk4Mp0YPQXOnb9VKIakOPrRPQ0g=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ogboV-00FJ1C-O9 for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 01:06:08 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id C701EC01C; Fri,  7 Oct 2022 03:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1665104760; bh=nIw/4SZLODP2q/AJ8PriciNPLFxNn+7AHozKzYHKCNA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H9bvW+2C31XdGRO5RhWTrzGyi5oPl/KXRhMTAjYbxXllu2SujAD6JhfCwzdc+PL9C
 U62JrCHiOXDNkkGwigi9uPRTRa6BzO76x8vALEwbPapo4b8Va/khIN6LaVpAIsjarS
 9qhBvHFG73KmS3ZsRx+AsWBosY04SdtD7Y4w06VJnj1rh87l3xKDnW6SURdRJrBHc5
 tvleIcLegIi9IJO8foHMsozFrPjZ8/2U0mvYSuywiKBXXFFwZI3YqnsTPFuz977UZZ
 H1cFm7EfaQY5bAv++X9iI/8rU1J3m6x1a7eUVKrjpLstCufw1+BJR8ebMBno0eCrks
 /Yr4MlH61d+ig==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 8595EC009;
 Fri,  7 Oct 2022 03:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1665104759; bh=nIw/4SZLODP2q/AJ8PriciNPLFxNn+7AHozKzYHKCNA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rWjvkBLRO48TqxnHhm5nc2ra3J4C/bDU/osydRnSASDijKTSMZW9RnNdapGsWv+Q8
 EY0NLLD7sG5kqQ95TGOaLsmtaDLUpUqspmJPEoAgP+R90EF6Wexc42fxJFT9jtviz7
 V2nX+AoYZLLN2QRw2+VVrP2m3ny14jHJZQII+o1ZLGYMtU+2IYHOZN2+JrtRijExWn
 mAe9S1POyjYAH0Wjxs0J/4tVv801hl6rFBadqQ/84hTyaBkDnPJzc4iJ2el+1oBUxq
 NyilNr6OMg/eihIxCybxscs1qCa1+BVh0+Wq5EpOfwEaOIbn7e7vOKeoPoDsUnqPkR
 xTRXjcKe1QIwg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 557c5d50;
 Fri, 7 Oct 2022 01:05:55 +0000 (UTC)
Date: Fri, 7 Oct 2022 10:05:39 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yz97YyDlV8tOr82t@codewreck.org>
References: <2470e028-9b05-2013-7198-1fdad071d999@I-love.SAKURA.ne.jp>
 <20220904112928.1308799-1-asmadeus@codewreck.org>
 <2356596.7K3kzkM6Yp@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2356596.7K3kzkM6Yp@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Oct 06,
 2022 at 03:16:40PM
 +0200: > > net/9p/trans_fd.c | 42 ++++++++++++++++++++++++++ > > 1 file
 changed, 26 insertions(+), 16 deletions(-) > > La [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Headers-End: 1ogboV-00FJ1C-O9
Subject: Re: [V9fs-developer] [PATCH] net/9p: use a dedicated spinlock for
 trans_fd
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
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 v9fs-developer@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Oct 06, 2022 at 03:16:40PM +0200:
> >  net/9p/trans_fd.c | 42 ++++++++++++++++++++++++++----------------
> >  1 file changed, 26 insertions(+), 16 deletions(-)
> 
> Late on the party, sorry. Note that you already queued a slightly different 
> version than this patch here, anyway, one thing ...

Did I? Oh, I apparently reworded the commit message a bit, sorry:

(where HEAD is this patch and 1622... the queued patch)

$ git range-diff HEAD^- 16228c9a4215^-
1:  e35fb8546af2 ! 1:  16228c9a4215 net/9p: use a dedicated spinlock for trans_fd
    @@ Commit message
     
         Since the locks actually protect different things in client.c and in
         trans_fd.c, just replace trans_fd.c's lock by a new one specific to the
    -    transport instead of using spin_lock_irq* variants everywhere
    -    (client.c's protect the idr for tag allocations, while
    -    trans_fd.c's protects its own req list and request status field
    +    transport (client.c's protect the idr for fid/tag allocations,
    +    while trans_fd.c's protects its own req list and request status field
         that acts as the transport's state machine)
     
    -    Link: https://lkml.kernel.org/r/20220904112928.1308799-1-asmadeus@codewreck.org
    +    Link: https://lore.kernel.org/r/20220904112928.1308799-1-asmadeus@codewreck.org
         Link: https://lkml.kernel.org/r/2470e028-9b05-2013-7198-1fdad071d999@I-love.SAKURA.ne.jp [1]
         Link: https://syzkaller.appspot.com/bug?extid=2f20b523930c32c160cc [2]
         Reported-by: syzbot <syzbot+2f20b523930c32c160cc@syzkaller.appspotmail.com>


> > @@ -832,6 +840,7 @@ static int p9_fd_open(struct p9_client *client, int rfd,
> > int wfd)
> > 
> >  	client->trans = ts;
> >  	client->status = Connected;
> > +	spin_lock_init(&ts->conn.req_lock);
> 
> Are you sure this is the right place for spin_lock_init()? Not rather in 
> p9_conn_create()?

Good point, 'ts->conn' (named... m over there for some reason...) is
mostly initialized in p9_conn_create; it makes much more sense to move
it there despite being slightly further away from the allocation.

It's a bit of a pain to check as the code is spread over many paths (fd,
unix, tcp) but it looks equivalent to me:
 - p9_fd_open is only called from p9_fd_create which immediately calls
p9_conn_create
 - below p9_socket_open itself immediately calls p9_conn_create

I've moved the init and updated my next branch after very basic check
https://github.com/martinetd/linux/commit/e5cfd99e9ea6c13b3f0134585f269c509247ac0e:
----
diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 5b4807411281..d407f31bb49d 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -591,6 +591,7 @@ static void p9_conn_create(struct p9_client *client)
 	INIT_LIST_HEAD(&m->mux_list);
 	m->client = client;
 
+	spin_lock_init(&m->req_lock);
 	INIT_LIST_HEAD(&m->req_list);
 	INIT_LIST_HEAD(&m->unsent_req_list);
 	INIT_WORK(&m->rq, p9_read_work);
@@ -840,7 +841,6 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
 
 	client->trans = ts;
 	client->status = Connected;
-	spin_lock_init(&ts->conn.req_lock);
 
 	return 0;
 
@@ -875,7 +875,6 @@ static int p9_socket_open(struct p9_client *client, struct socket *csocket)
 	p->wr = p->rd = file;
 	client->trans = p;
 	client->status = Connected;
-	spin_lock_init(&p->conn.req_lock);
 
 	p->rd->f_flags |= O_NONBLOCK;
 
----

> The rest LGTM.

Thank you for the look :)

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
