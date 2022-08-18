Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D86CF598DD8
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Aug 2022 22:24:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oOm40-000524-48;
	Thu, 18 Aug 2022 20:24:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oOm3l-00051x-Cy
 for v9fs-developer@lists.sourceforge.net;
 Thu, 18 Aug 2022 20:24:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Tbcrkjzqu+U9fYEHZpYca8y0rlNA7S/6WYu0SQ5PL0=; b=fChSfX5baV9/YmmbRzCl0WiAAj
 wNefkDji8bvcP/feQD+YC5xrvvgUOMUqUvoiRJVnvHjIeILrpAOs1+Sv5kNO+7vkezZSKHeiZQ8vt
 vuhZVXkksLKANYmZ0Kvwh39uWRk3GMXuiCKl3Bp1c8dRRZe8IY6s/Wndj3T8ICpt2pFI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Tbcrkjzqu+U9fYEHZpYca8y0rlNA7S/6WYu0SQ5PL0=; b=DQELxwhbs9ge4wiI8qehdm71Wx
 HY6ZnV/zt0phO3mPSaqcCki7pb0ZmKCeuHmb8AmpmKdtPa6BgSedFtFLIDN41RHvx30eXIqK6dW2E
 uCC7lbnDpM5Ff/jypIqAkpPp7noUWhXQjGfFob72I8of2QCF2Q73fbb/CFGQitIFSw38=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oOm3j-008L3U-A3 for v9fs-developer@lists.sourceforge.net;
 Thu, 18 Aug 2022 20:24:09 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B57A7C01F; Thu, 18 Aug 2022 22:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1660854238; bh=1Tbcrkjzqu+U9fYEHZpYca8y0rlNA7S/6WYu0SQ5PL0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CoqPCdsX34ll437ZR4AZlWknaHCgIRvT6TuiZH7aNfz1ueC/PFJftUtodRYCmKjrM
 HjnQG10YMVGOIYfg+Tt/3YOHr8nUPlC6Jxdj0HMtZRHhSG0g7n62ZCubQX3FNICPFK
 fLsFo0borMkdZQnUn5mGPQtw3Ckg9ishyL+V94kyYER5T6oeQaMYXN979LJTZP6vxW
 xQcG8/DRQuPNZQwfbCUGS33SKvIPv6Hsvik5vvPS25j3mgTsX2OjXeVrRdKPD3Xe32
 YeNG09j1jG6mC2nAocFCX8oRZs46PIh76lsg6xqwBuX4ntGD06Qka1wwvWW/D6PKOo
 dQJX/2IPjSJoA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7F6B5C009;
 Thu, 18 Aug 2022 22:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1660854237; bh=1Tbcrkjzqu+U9fYEHZpYca8y0rlNA7S/6WYu0SQ5PL0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yc6kHpT+mdVSDXXWK6LOqWQMIuNNMuqZD7uYESmavV1M2unRxBiQ+AtfW5m8nPbQJ
 ou1sBnlmeZ/0ktxsURgpTIjkxuBUF6nJGFfw5P2Mzel+wGFChZvx50RhWRK6zBe47e
 z6ENUiYryqbdIpi62Z6qnnZ/9TNiuoxtntL2d3H6YhA0uDxXX6hoUh/t5C550o/w++
 NRpwizirLPfcPV6zaZ63vAV0iExhazstGWa8FMpTjBigjReRRWCskUxZkGYmILcG1D
 9SGbA1XYMJjI1wMuSlEd7OynKwiNNKuKycM0gi+7tzIt7tZwujFsp491q+EW1RtM2q
 2n05u8LtLsXmQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 66245e06;
 Thu, 18 Aug 2022 20:23:51 +0000 (UTC)
Date: Fri, 19 Aug 2022 05:23:36 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yv6fyMxHq1CI5iZf@codewreck.org>
References: <0000000000001c3efc05e6693f06@google.com>
 <YvyD053bdbGE9xoo@codewreck.org> <2207113.SgyDDyVIbp@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2207113.SgyDDyVIbp@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Aug 18,
 2022 at 05:12:17PM
 +0200: > > @@ -997,12 +997,8 @@ struct p9_client *p9_client_create(const
 char > > *dev_name, char *options) > > > > return clnt; > > > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oOm3j-008L3U-A3
Subject: Re: [V9fs-developer] [syzbot] KASAN: use-after-free Read in
 p9_req_put
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
Cc: lucho@ionkov.net,
 syzbot <syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com>,
 ericvh@gmail.com, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Aug 18, 2022 at 05:12:17PM +0200:
> > @@ -997,12 +997,8 @@ struct p9_client *p9_client_create(const char
> > *dev_name, char *options)
> > 
> >  	return clnt;
> > 
> > -close_trans:
> > -	clnt->trans_mod->close(clnt);
> > -put_trans:
> > -	v9fs_put_trans(clnt->trans_mod);
> > -free_client:
> > -	kfree(clnt);
> > +out:
> > +	p9_client_destroy(clnt);
> >  	return ERR_PTR(err);
> >  }
> >  EXPORT_SYMBOL(p9_client_create);
> 
> Looks like a nice reduction to me!
> 
> As p9_client_destroy() is doing a bit more than current code, I would probably 
> additionally do s/kmalloc/kzmalloc/ at the start of the function, which would 
> add more safety & reduction.

Good point, I checked the variables p9_client_destroy cares about get
initialized but kzalloc is safer, let's switch that as well.
> > diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> > index e758978b44be..60fcc6b30b46 100644
> > --- a/net/9p/trans_fd.c
> > +++ b/net/9p/trans_fd.c
> > @@ -205,6 +205,8 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
> >  		list_move(&req->req_list, &cancel_list);
> >  	}
> > 
> > +	spin_unlock(&m->client->lock);
> > +
> >  	list_for_each_entry_safe(req, rtmp, &cancel_list, req_list) {
> >  		p9_debug(P9_DEBUG_ERROR, "call back req %p\n", req);
> >  		list_del(&req->req_list);
> > @@ -212,7 +214,6 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
> >  			req->t_err = err;
> >  		p9_client_cb(m->client, req, REQ_STATUS_ERROR);
> >  	}
> > -	spin_unlock(&m->client->lock);
> >  }
> 
> Are you sure that would resolve that (other) syzbot report? I just had a 
> glimpse at it yet, but I don't see this list iteration portion being involved 
> in the backtrace provided by the report, is it?

It won't fix the inconsistent locking ones, but should take care of
http://lkml.kernel.org/r/000000000000cad57405e5b5dbb7@google.com

ffff888026be2c18 (&clnt->lock){+.+.}-{2:2}, at: p9_conn_cancel+0xaa/0x970 net/9p/trans_fd.c:192
holding the lock in that function, calling
p9_client_cb itself calling p9_req_put and locking again when refcount
hits 0.

And that one has a reproducer, so syzbot will confirm if it helps when I
get around to pushing it (probably this weekend) :)

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
