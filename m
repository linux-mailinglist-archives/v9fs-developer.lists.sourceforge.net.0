Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC008639B85
	for <lists+v9fs-developer@lfdr.de>; Sun, 27 Nov 2022 16:15:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozJN5-0007Hb-1O;
	Sun, 27 Nov 2022 15:15:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1ozJN3-0007HQ-PI
 for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 15:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j40ekeFElSRTUtWtf4uTai1Djqh1538q9l9woq5ywmM=; b=YR/FO2XVKFQyMiGbxXp5e80dHO
 Omow/ptQqhnqUtLBtTZ9tg6xhBm7D4nCwkks/yVTIZCG8IP6VNoyVfxJWa8IgALdcZQ8kyWdyK1JT
 8z/lfWCrq2xJLYNSVAxGIJ+HvKJUqWdmgGm5BMpnFlfyUE+pEFH5lf9d0ZGfe4Xa81lo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j40ekeFElSRTUtWtf4uTai1Djqh1538q9l9woq5ywmM=; b=ewqiKFq8bgalg5Ubj6t3XnOFfF
 i2FJ9PfoJp00zf0UG4sGp1ei1Qimw4UdY2botms1kenWu2RlfxsKr/ldiAfw2Hct9wvQGAGNbNiK6
 ms5jRQ9DJTGFFoZAwlW77/heb40SZOv0iPRVagaZ/iNiHyX3Btw/JlO8Ty5qm0Fx+ByY=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozJMz-00FYey-Rd for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 15:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=j40ekeFElSRTUtWtf4uTai1Djqh1538q9l9woq5ywmM=; b=XXiBVtjYsFdCIgK47ruEXgWi63
 chbbXYoWn8viKshFPeI4Pp/wV9s+ODdQMcVnkLzkwmYzCyvqKCm7CTbR/9i+f7CwjmHbeAtO0+5mX
 EedFowawd64MuPzeQw4FQloRot6bhlsB397GmjpM7opqKzBGDTd4FC904+Wm0FHu9QNxhG1Zv3nXK
 WUiMkQISKyFinOJariXwDYtDtsj9MA722IPpg4NTfKGtwxqybC5RSjz4Lfp6Ml8/gaOun1lYFmsTe
 bg9UxqDyuP/GikGU8kWY1KDewpdGpte4GUQMzr11IVwrkSnroXyr55tXnWuWLHJ/lrbfxoezQhMLS
 eDarDYcAkiMXyzU+t4xUtUz+u4GFU9pz7q8DBzqnAFjIHTuecpr8RTe139cijMdxwopqbiIBmUyVf
 o4G03qBzxeCeoM27HBK3B9VhlfCGIUgFthVyfHFJfgZegIamIsHWZV1MuS4lXGIxii35nG82Ju+jo
 Zz4SThlvvUpUhRWxh+Mcf+9dUnCHr7x7WISZ/yYs5fTOBYezKFB8rKNQF4lAAYndlI9/mMGd9BtHk
 dT8ik9YnlPS/SFpPvOqqdqElobFqi8lvQX+jRZ41ibzmSCLOqbns1lg/k9Ke+xFZKG1KPyEyaSXoQ
 Yi8+mDsoeEbBxZLuNC2hfvgRKlRPe47hra8Uqo5SY=;
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Sun, 27 Nov 2022 16:14:44 +0100
Message-ID: <1691295.Xhe5vkXPrl@silver>
In-Reply-To: <9e386018601d7e4a9e5d7da8fc3e9555ebb25c87.1669560387.git.christophe.jaillet@wanadoo.fr>
References: <9e386018601d7e4a9e5d7da8fc3e9555ebb25c87.1669560387.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sunday, November 27,
 2022 3:46:45 PM CET Christophe JAILLET
 wrote: > The 9p net files don't use IDR or IDA functionalities. So there
 is no point > in including <linux/idr.h>. > Remove it. > > Signe [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ozJMz-00FYey-Rd
Subject: Re: [V9fs-developer] [PATCH] 9p: Remove unneeded idr.h #include in
 the net/9p directory
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sunday, November 27, 2022 3:46:45 PM CET Christophe JAILLET wrote:
> The 9p net files don't use IDR or IDA functionalities. So there is no point
> in including <linux/idr.h>.
> Remove it.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

>  net/9p/trans_fd.c     | 1 -
>  net/9p/trans_rdma.c   | 1 -
>  net/9p/trans_virtio.c | 1 -
>  3 files changed, 3 deletions(-)





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
