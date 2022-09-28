Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1255EDA4C
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 12:44:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odUY3-0001Yu-ID;
	Wed, 28 Sep 2022 10:44:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1odUY1-0001Yk-3Z
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 10:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EvXbEFxQNdXNjXs7AJIIbkBlKOTDWURW3rNF1wbER1E=; b=LDNtAMD5eGaoCMPA1KfFUvFck6
 tE+nR4nRlKqzvUVIy4wxoXvVHu0GXIrIR/HeOU890ixbWf597VwbzQ/mkxzhdeXCvt50NlsTL138E
 0rxPJ2bfOVOJ2Ngn6Imgof83joNuL7BdOIB+vXW8pBYi5pt/FSbNSPoOwzwB9OdN5m+Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EvXbEFxQNdXNjXs7AJIIbkBlKOTDWURW3rNF1wbER1E=; b=MRUVzyRIW3OMIGR+g6QZC0lgZb
 2mAgXB1lb5VXuS7tydw1bomU2WDXO8SlfBvG06xhx1gByF/Hhfmm2XMgC7HoWCuxL/kezJnJMfS3p
 r095c7x0XwOYIyXxB9gWP22AHLbKR04TjQVNLTZWZ5EpUdCAakcfkgLDgaAEbrbOTD5U=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odUXw-0006PC-Uv for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 10:44:13 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 72BB5C022; Wed, 28 Sep 2022 12:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664361841; bh=EvXbEFxQNdXNjXs7AJIIbkBlKOTDWURW3rNF1wbER1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vokmBuvKdWBfIpUbwZ7i/3q2hrKrm2wEuzat92Z1AF/zj0D9kzGs09EGTskVFdcp5
 RPctkXOosyC+QnxuVv7WYeNd3iV1fOi1S1z04oEABiRdNqGvKeIypr0AUEKcHcklGS
 U6Fn4YT6mTUbezR3aOe0sszkBSqEdaxHsKBirFEvegr40psAIcHiDGj2r1fhSb91Xj
 IeZoNjbpSsW3AsJEo1YNp8NSpG+dAtbGYSFRZodtaZqE2GQOrtxNAGyZvdsLUvefHu
 O/6qoNFdVSYuBnvkCIOjQaW1AGyX9mlDEqbnaETdilWVqY3cKtDnlHotEici9VIHKo
 DLb2U87rc5XmA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 0F6EFC009;
 Wed, 28 Sep 2022 12:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1664361839; bh=EvXbEFxQNdXNjXs7AJIIbkBlKOTDWURW3rNF1wbER1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AXSJASx2rKt3OmXZHdDAhyLDgaBuDsRfjikOIp0W5tPVaAKfuxOGXlRUUw31K3qC4
 PnF8Gi3tOFo8OMlC7gNyMRG6Lvx369KHzi2VkpJf0LNljef6nuKFHAEWkjTxMtdNY1
 4D4ELzPTvgilOIqebWxX38SORBWA3xYRnzcOXNPCprhmYplTpH+pmjEZf9tmgl9BdQ
 yTeqVMQXOIgXz1vqdv+za4CjStU9IuuOBeCDMoUkj6h66u88a/pJPgajrUxe7uqVRM
 azi0lrDCSS5cxI2NKcLdJX/kd3dX0oNGxsWR8fBOuCjj39NJZktnx+OcrhrOmYCi0m
 PyiYOvvDBhJcA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 9a16ec6e;
 Wed, 28 Sep 2022 10:43:53 +0000 (UTC)
Date: Wed, 28 Sep 2022 19:43:38 +0900
From: asmadeus@codewreck.org
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <YzQlWq9EOi9jpy46@codewreck.org>
References: <00000000000015ac7905e97ebaed@google.com> <YzQc2yaDufjp+rHc@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzQc2yaDufjp+rHc@unreal>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Leon Romanovsky wrote on Wed, Sep 28,
 2022 at 01:07:23PM +0300:
 > The bug is in commit 3ff51294a055 ("9p: p9_client_create: use
 p9_client_destroy
 on failure"). Thanks for looking > It is wrong to call to p9_client_destroy()
 if clnt->trans_mod->create fails. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
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
X-Headers-End: 1odUXw-0006PC-Uv
Subject: Re: [V9fs-developer] [syzbot] KASAN: use-after-free Read in
 rdma_close
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
 syzbot <syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com>,
 linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Leon Romanovsky wrote on Wed, Sep 28, 2022 at 01:07:23PM +0300:
> The bug is in commit 3ff51294a055 ("9p: p9_client_create: use p9_client_destroy on failure").

Thanks for looking

> It is wrong to call to p9_client_destroy() if clnt->trans_mod->create fails.

hmm that's a bit broad :)

But I agree I did get that wrong: trans_mod->close() wasn't called if
create failed.
We do want the idr_for_each_entry() that is in p9_client_destroy so
rather than revert the commit (fix a bug, create a new one..) I'd rather
split it out in an internal function that takes a 'bool close' or
something to not duplicate the rest.
(Bit of a nitpick, sure)

I'll send a patch and credit you in Reported-by unless you don't want
to.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
