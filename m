Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E56225F43DE
	for <lists+v9fs-developer@lfdr.de>; Tue,  4 Oct 2022 15:03:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ofha5-0000hZ-Jh;
	Tue, 04 Oct 2022 13:03:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1ofha0-0000hR-Bq
 for v9fs-developer@lists.sourceforge.net;
 Tue, 04 Oct 2022 13:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dVELfXXKaUTmoJi2M9apcMe3aQMNvoEJTLoWDD56CtU=; b=hs1IpR9qSOhd60KWKhE2B0Ccbg
 NlRFtlb2Q2yQPb5IjHM2kbTuucIB/HC7tuXbnYuIOmqHYZG+KTH7hE+HVbj8armybICrTmFYs2O/z
 wItI3nBoyNHwitAonohChRmEWzBDV2UMdiArzsqxshY1b6BZngVYXIUPPdbz1RxcwGnA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dVELfXXKaUTmoJi2M9apcMe3aQMNvoEJTLoWDD56CtU=; b=DjKThc4xBreyb8yYoWjvGNhzjy
 /RQOC01ARbEcNsVuscAgRd4phN777XF1ukXowpz8NjbsG/Sgkl38D6kkI25ZKG5paQhPlBzaZ6wPu
 m++l+dGT4p+u1+Wp4RpUQ+v6OU3dYBIqP02LR2lAUtOl9aqCrsIvT9meeHyrXTifSeLU=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ofhZy-00CO8e-RH for v9fs-developer@lists.sourceforge.net;
 Tue, 04 Oct 2022 13:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=dVELfXXKaUTmoJi2M9apcMe3aQMNvoEJTLoWDD56CtU=; b=QUwLAfMLOiMchFX/9mW7ciLofG
 a/OkgpR/X5Z24OhzCyY86Fo+bwBchjMffoz8li4DQ9wRiIWtsI+bEDEXlCPl5JDarnfvdCIJlcjOZ
 fm7ewLLvjRKUyTEhHY38bRbmddwGsylLIAdPLhF90nLO9ceyb8xwk9LptYwE4MVr46TsOWkZp36S+
 SfL0oVdJLuqM1RpW1xWWkW2SzQUhElcVverDWHm1lUYvmH5zJ26Hx97p95iL+yTYSORthBUhcLPuz
 o5NEv9w19B0DiqB6jpLnhlGjRhANsqfbx2YCiZgwZCK0FjKUo4znXg44vQm50H+BQomTjrTqpGC3S
 1+EW6vVNW8Di/WESbPl4J5ppmOwz+aD9N88BOQ9NE+0BcfDflSLkP1xJqpaR+3rDCWA6SMGC+vhXv
 ZmAgqIKF4tQH5znwGs0+Yc0v7xCV6qOG47jy/HfaQ6u7vY/qMtBw/5godIJq8KraBGvcPAEi6L7jY
 wBqxW2d6yyip/Nt1dhcRMOap8Z+saxLiovKkMPG+ydo9rfTA22UPYKcS391aET4i+HDu6fLQLpj1s
 Mn7Z5a6hffG9pt7Donok4gWSEKIKfs688ldwXsXjXCYDeNwwIzqQsVZUxRbe1huh7NZ0vk1pNqYS3
 kxfLSRr1TQjHTr/IyoSsWLyw2H5kEoTK5vB2YBBTs=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Leon Romanovsky <leon@kernel.org>
Date: Tue, 04 Oct 2022 15:03:08 +0200
Message-ID: <4813311.ZYo2F6apM6@silver>
In-Reply-To: <YzV5J9NmL7hijFTR@unreal>
References: <cover.1664442592.git.leonro@nvidia.com>
 <YzVzjR4Yz3Oo3JS+@codewreck.org> <YzV5J9NmL7hijFTR@unreal>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Donnerstag,
 29. September 2022 12:53:27 CEST Leon Romanovsky
 wrote: > On Thu, Sep 29, 2022 at 07:29:33PM +0900, Dominique Martinet wrote:
 > > Leon Romanovsky wrote on Thu, Sep 29, 2022 at 12:37:56P [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ofhZy-00CO8e-RH
Subject: Re: [V9fs-developer] [PATCH 2/2] 9p: destroy client in symmetric
 order
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org,
 syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, kuba@kernel.org, v9fs-developer@lists.sourceforge.net,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Donnerstag, 29. September 2022 12:53:27 CEST Leon Romanovsky wrote:
> On Thu, Sep 29, 2022 at 07:29:33PM +0900, Dominique Martinet wrote:
> > Leon Romanovsky wrote on Thu, Sep 29, 2022 at 12:37:56PM +0300:
> > > Make sure that all variables are initialized and released in correct
> > > order.
> > 
> > Haven't tried running or compiling, comments out of my head that might
> > be wrong below
> > 
> > > Reported-by: syzbot+de52531662ebb8823b26@syzkaller.appspotmail.com
> > 
> > You're adding this report tag but I don't see how you fix that failure.
> > What you need is p9_tag_cleanup(clnt) from p9_client_destroy -- I assume
> > this isn't possible for any fid to be allocated at this point so the fid
> > destroying loop is -probably- optional.
> > 
> > I would assume it is needed from p9_client_version failures.
> > 
> > > Signed-off-by: Leon Romanovsky <leon@kernel.org>
> > > ---
> > > 
> > >  net/9p/client.c | 37 ++++++++++++-------------------------
> > >  1 file changed, 12 insertions(+), 25 deletions(-)
> > > 
> > > diff --git a/net/9p/client.c b/net/9p/client.c
> > > index aaa37b07e30a..8277e33506e7 100644
> > > --- a/net/9p/client.c
> > > +++ b/net/9p/client.c
> > > @@ -179,7 +179,6 @@ static int parse_opts(char *opts, struct p9_client
> > > *clnt)> > 
> > >  				goto free_and_return;
> > >  			
> > >  			}
> > > 
> > > -			v9fs_put_trans(clnt->trans_mod);
> > 
> > Pretty sure you'll be "leaking transports" if someone tries to pass
> > trans=foo multiple times; this can't be removed...(continues below)...
> 
> It is pity, you are right.
> 
> Thanks

Hi Leon,

have you planned a v2 on this? Just asking, so that we know whether to go 
forward.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
