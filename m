Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E97165769E4
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:25:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCTkk-0003Bb-Il; Fri, 15 Jul 2022 22:25:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oCTkj-0003BV-Bx
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:25:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EgCvy39owjpXR/ZA9X5SA+DJCioLvCBh4wrj89/LUI0=; b=Uv8/4TmiIBu2ZM16nDGCbHjDyH
 BWU4fpfYxaSO3e5Xe13JLjVl+sBhDvCUZdaW62E7kM9FGatPSYsXUSgf5Qa8mfiifHfmF94rXxWNX
 rNjPgjuZ6qNbgSNJYl3ag8NW01+kzQQZZAAivAbvZueJaQLYXkSkyoxOmhLCodXrFEJs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EgCvy39owjpXR/ZA9X5SA+DJCioLvCBh4wrj89/LUI0=; b=Pm/WW/Jn+aLB8JG8h85DoIVpGq
 0BzA/hAll3aFntjwkRTvG1/jALYnFTAZNA2nQWPkpCfm2MzkP6e8Yt/s8oJAU5IuUf77Tro5VdYAw
 HKEpydI6nI5QTr9slgceg+CU5ipxqChxef9EYtryzzYVTDciFd/jGyJQc1nIul3UbgA8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCTkg-000WkF-G9
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:25:41 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 3677AC009; Sat, 16 Jul 2022 00:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657923932; bh=EgCvy39owjpXR/ZA9X5SA+DJCioLvCBh4wrj89/LUI0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zzWYzGHRPvfgEUFFDK2Szh9uTznbiTgpaGHc/BEXdmXF0giRP8bCW+ZN5GI+yfcyc
 L2KobqZkPJG0yCCrhhExbAKrdThiOhsyzBUpQVytkEutRCHDSs6AJ61+WILfJ89KzM
 EiHRTHKbw8bLTQjbmG4V93Weh/QsGExkPI11dteVYYjMNYCKxlLGA8p1rMOGqqvnFR
 gOx2+k8BHYuDISsR9PPZUTC/oegpEn2ecDB75YOX6ASTple5jabwGIjYMGcbSGELNo
 FbJLrJs07vnwjcHgjl6oYZkZ+9Soel43DfVJtYknWCpc2aU4LbWmutjF/z/zszQ+75
 3VLVTDOmogQXA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 0B840C009;
 Sat, 16 Jul 2022 00:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657923931; bh=EgCvy39owjpXR/ZA9X5SA+DJCioLvCBh4wrj89/LUI0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b82VBKymA8c4i+j+YO6hmXXGQPWmVA0PJF/K1vh9zGzGQnihIPcNuKiIA67zTIF3o
 G5/SkDa8ixeWt4GjHigD1Q6o1Gk1lR6T3uoYS8MnO03YgM4NTCtAdEwZU+xRez8+zg
 zSs6a1gd6IyX0NhDWTfeJkpmvORij87nikRaJJmc6Vk/CV/0TL6a6SOE/WptDbNua3
 U+PISoNV2z8i/IzRbNBD8WTG7qipA9bQyutuscE1FuFAlA/FYI7UtFqdT+sbpojP1K
 W+tOsDpAm1rPJ90cDNQVpApvkqN9N0nYQ1dd4jengLH064ogb90GPg6IasQl3eubN7
 fKkYn8nimRYsQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 9127998f;
 Fri, 15 Jul 2022 22:25:25 +0000 (UTC)
Date: Sat, 16 Jul 2022 07:25:10 +0900
From: asmadeus@codewreck.org
To: Hangyu Hua <hbh25y@gmail.com>
Message-ID: <YtHpRizqDf7+4WVb@codewreck.org>
References: <20220712104438.30800-1-hbh25y@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220712104438.30800-1-hbh25y@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hangyu Hua wrote on Tue, Jul 12, 2022 at 06:44:38PM +0800:
 > p9_req_put need to be called when m->rreq->rc.sdata is NULL to avoid >
 possible refcount leak. > > Fixes: 728356dedeff ("9p: Add refcount t [...]
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
X-Headers-End: 1oCTkg-000WkF-G9
Subject: Re: [V9fs-developer] [PATCH] net: 9p: fix possible refcount leak in
 p9_read_work()
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, tomasbortoli@gmail.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hangyu Hua wrote on Tue, Jul 12, 2022 at 06:44:38PM +0800:
> p9_req_put need to be called when m->rreq->rc.sdata is NULL to avoid
> possible refcount leak.
> 
> Fixes: 728356dedeff ("9p: Add refcount to p9_req_t")
> Signed-off-by: Hangyu Hua <hbh25y@gmail.com>

I realize I didn't reply to this -- I've reworded the commit message a
bit and queued it for 5.20:
https://github.com/martinetd/linux/commit/4ac7573e1f9333073fa8d303acc941c9b7ab7f61

I'll have a look at the RDMA path you pointed at once I can find time to
make this adapter work, and will credit you for it as well

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
