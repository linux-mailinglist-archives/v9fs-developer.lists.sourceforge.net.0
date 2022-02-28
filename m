Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E46794C60AA
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 02:39:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOV0H-0007gB-Vl; Mon, 28 Feb 2022 01:39:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nOV0F-0007g4-5f
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 01:39:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ppd2glzcFuscrKkv8TaEP18WFv+ORpmIkkSFkUHICKk=; b=S101gtlvT2FbSk0DiHNd/zn9su
 nDeN+87K34Skn4qpSgFUg8TPxw8a7Fr2QvtmaIK/DoTSsblYMyDUsIwc9cXQs/o/Yor9qup0VcymX
 r1uZEBQYVkKrgKbEHVYCPtIh7lOfoc/loo+T/QUESnKUVulkaNDMJMs4AcCSFl1CE3No=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ppd2glzcFuscrKkv8TaEP18WFv+ORpmIkkSFkUHICKk=; b=VeXiehSiYvvomwyJn/+X8sHvck
 k4rmTz1aI4jHWdp6oYrw5PosZnaN82KyWjyJjsgcDcrrf6zITECzLmRdHxgjXEzKW4DWVVP4kcGkl
 wGAxFGL+rcHyeCLXux0ViC6VGfD9gtY/jXWRxgdDSVVydWlkFavpLapW2eXxjsvUF4r8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nOV0A-0004PU-EO
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 01:39:04 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B60FDC020; Mon, 28 Feb 2022 02:38:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1646012335; bh=ppd2glzcFuscrKkv8TaEP18WFv+ORpmIkkSFkUHICKk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=soJF5RcOsYnglkImQtb9pIl/qP0khiWeql+7Q6WwujVLmRGcXKH3MDHyZJoDXkoNZ
 nfLwdNmR94ipRhpfU/yGGtQ0CCPAl+7FpblPZV8W/XGjkCEuWOVtaj1L3iJZNb1N2c
 CdFOmEkUilyqU7UyR5ey2DFe4qxL2CTrCOVK5hn01HnX0h1O+PjEcdIRgQrW8XJmxl
 H+hkzWGGaj+LESdwk6Ju5LgHdmiE30kl8numPoA7Ri/9ofIaiBnajtGSDvwJu4XUQA
 5b720TWpoaAk8d9fQ/2jmPHL9z5lscohyyh4S3MA6L5C1XoE86p8B9XZe5Z5DVVfvD
 as1TbQlailyOw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=SORTED_RECIPS,
 UNPARSEABLE_RELAY autolearn=no version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 12DEEC009;
 Mon, 28 Feb 2022 02:38:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1646012334; bh=ppd2glzcFuscrKkv8TaEP18WFv+ORpmIkkSFkUHICKk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1PSLUt443Hf1hB90umtNGuJtN+Kh6sjXkX8fXCfBQZMFA0VTGkp2DjToqsTKDv02n
 bxMx5jkWll/W/NDF6NCs8nWS1/04hJh9N3rUtC8UPxDJBokFK26va6822UCXfQ9xxN
 TZejmVbF+paZ96VIN1n1A8vABAf9WTp8XyDdVH0Ejy9JeFmI/7lGwA8J4AfcKDsF3O
 Wogq7gjlWn8wiNDOYgOE9uLcnb5zNlpwVm5cNs1qNHmP9+Mv8DVxtqDl+E49qffKqP
 gMWaZZ+ipQvc9z3R1bgkEFr2Lp1z6fNdJFhRMv4YwFM4rRCWZF1lgGPFCUVnwZaWhD
 Xf4n2h+Q2d0OQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 9b6fd6d8;
 Mon, 28 Feb 2022 01:38:48 +0000 (UTC)
Date: Mon, 28 Feb 2022 10:38:33 +0900
From: asmadeus@codewreck.org
To: syzbot <syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com>
Message-ID: <YhwnmR5hbseg0EJd@codewreck.org>
References: <00000000000011f0c905d9097a62@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00000000000011f0c905d9097a62@google.com>
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot wrote on Sun, Feb 27,
 2022 at 04:53:29PM -0800: > kmem_cache_destroy
 9p-fcall-cache: Slab cache still has objects when > called from
 p9_client_destroy+0x213/0x370
 net/9p/client.c:1100 hmm, there is no previous "Packet with tag %d has still
 references" (sic) message, so this is probably because p9_tag_cleanup only
 relies on rcu read lock for consistency, so even if the connection ha [...]
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nOV0A-0004PU-EO
Subject: Re: [V9fs-developer] [syzbot] WARNING in p9_client_destroy
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
 linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

syzbot wrote on Sun, Feb 27, 2022 at 04:53:29PM -0800:
> kmem_cache_destroy 9p-fcall-cache: Slab cache still has objects when
> called from p9_client_destroy+0x213/0x370 net/9p/client.c:1100

hmm, there is no previous "Packet with tag %d has still references"
(sic) message, so this is probably because p9_tag_cleanup only relies on
rcu read lock for consistency, so even if the connection has been closed
above (clnt->trans_mode->close) there could have been a request sent
(= tag added) just before that which isn't visible on the destroying
side?

I guess adding an rcu_barrier() is what makes most sense here to protect
this case?
I'll send a patch in the next few days unless it was a stupid idea.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
