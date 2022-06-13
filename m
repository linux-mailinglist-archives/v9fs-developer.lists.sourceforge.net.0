Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BE254A0B9
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 23:01:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0rB9-0007eb-5p; Mon, 13 Jun 2022 21:00:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0rB7-0007eU-Q5
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 21:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hbjlIsPkm7Pdw1vKt/fEMjXNUukRrKqZfsATzfBGdhI=; b=iS/Rj1tGmJbXMBQRUIUXG2YTR2
 kDElIufKZ53XD13JAEhGft76dDn1V1Yqx2ZuZDLj0G/q11K1vosNl+4SqpH9+lQDnqEDp6hhHIzep
 6iV6Vp2s3a2emm+qJ4mlax5J0CJkYZ/RltcYu8tqDlSJwRowAbXChNYaDijxDhvciRxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hbjlIsPkm7Pdw1vKt/fEMjXNUukRrKqZfsATzfBGdhI=; b=XeJQajeiDBX+KWFUXof4btMBY1
 0+zVXlC5aqnEa3LbWCK/UB/M38vOFMZPhlXkmbURpwtg1XXaiffwAHeh4BlOwNluFyJRnXLd1EUef
 e2rlq2A2FWxO4vL7wGQlaiFqqCt6xu2KIlbJUbYkTzG0IsBjYspmLNZfnEkZi0nYC6W8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0rB3-0000Mu-8g
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 21:00:52 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2CDF4C01C; Mon, 13 Jun 2022 23:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655154043; bh=hbjlIsPkm7Pdw1vKt/fEMjXNUukRrKqZfsATzfBGdhI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aUclKhe0qUUXxJVj3as+72ZyUR2Mdt4qSYLf9TJPdVbqDzlPkitddPgzPxxC7T4M0
 ILx6q0v/NOVegp1C4dD/nxABDGhU7MqoFue+UZALvKJZdzBC6WGWdx0Ho9EdsuRlqr
 ptXjp7XPNwomOPNtQyaM/N+Otti4b6vZDbcbpxfx+5rG3zDVXWBkrsmfXixReV3O4b
 Lp7KEN2/IlVOcNN6fCCfdqpShAD1oNqcrVgK3v7oTfyBsEJrXzO1tEM/v3OrbXa8yg
 GZN6OtHSlkFBfikloQO/9d5m3ZgQgYlZRg+pgCdl5fk+JJ25YRLeGo+4RXbrtrX3iR
 cNPTTOPtWZYlQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 67266C009;
 Mon, 13 Jun 2022 23:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655154042; bh=hbjlIsPkm7Pdw1vKt/fEMjXNUukRrKqZfsATzfBGdhI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xFktnS+NHA+NVGMei1DidQmfBeYBsl1yQecTuPCUxTmkNTgCiGsnrsFDvr9LVfBWJ
 qZ8gR8rqIdPe9IPllqYo9KS3S8+pLDE8m/KKH/RFrp4DPKaE7+J4syA2zJV7lRDY/Z
 byYBoa5nMq3LE7oHKCEO8bosF5fSAwoh9yNv2evr3hs8LC0/1euxRhBb2EKi5UZWQx
 VsE5pxM77qWoZn34VzKH91rX/5J2pBuHeSt5XNMvtVN2TCLv2MzNPPOpfwn5bmrQ90
 GDUhj2w7DdmFtWphQCJUAuFVU0oTUBnwaxN09sw0w3jqAx5GVL7hzxhu89Bf+vWiUS
 KCEx2zDqREJow==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d2cce1e8;
 Mon, 13 Jun 2022 21:00:36 +0000 (UTC)
Date: Tue, 14 Jun 2022 06:00:21 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tyler Hicks <tyhicks@linux.microsoft.com>
Message-ID: <YqelZWe4BJfDkYEd@codewreck.org>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
 <20220613202053.GI7401@sequoia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220613202053.GI7401@sequoia>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tyler Hicks wrote on Mon, Jun 13, 2022 at 03:20:53PM -0500:
 > On 2022-06-12 17:53:23, Dominique Martinet wrote: > > @@ -222,7 +221,8
 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *de [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0rB3-0000Mu-8g
Subject: Re: [V9fs-developer] [PATCH 00/06] fid refcounting improvements and
 fixes
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
Cc: v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tyler Hicks wrote on Mon, Jun 13, 2022 at 03:20:53PM -0500:
> On 2022-06-12 17:53:23, Dominique Martinet wrote:
> > @@ -222,7 +221,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
> >                  * We need to hold rename lock when doing a multipath
> >                  * walk to ensure none of the patch component change
> >                  */
> > -               fid = p9_client_walk(old_fid, l, &wnames[i], clone);
> > +               fid = p9_client_walk(old_fid, l, &wnames[i],
> > +                                    old_fid == root_fid /* clone */);
> 
> This is no problem at all. The rebased patches look good to me. Squash
> your fix to my fix and it should be ready to go.

Thanks for all your reviews :)
I've rebased my branch if you want to check:
https://github.com/martinetd/linux/commits/9p-next

We've just started a cycle so I'll submit the first three patches (fixes
to stable) next week, and the rest for when 5.20 cycle starts.
Feel free to remind me if it looks like I forgot.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
