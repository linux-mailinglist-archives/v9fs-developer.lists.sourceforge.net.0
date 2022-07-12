Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ADD5725A8
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 21:34:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBLe6-0002yM-TI; Tue, 12 Jul 2022 19:34:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBLe4-0002yF-Pg
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 19:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LGQQkiza9LfOe3zwnoXujUyEmTxk9MeMXoKdKZeUyZs=; b=MvVnvekJPqdVkuixH2a6GM92vp
 hgF0FwPMsEnlVRHi6wnLCwsPjDGleJNV91nflGyUTGpRzhrS8DmEMD963U8GYaLpiKC5ylN+l/iM8
 9XRairfCMUnNo5gu1LoI2N0Ou/IbZfzV7m8OP8D+O2jpLlcmqyveCspgbE4eTDr07XQI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LGQQkiza9LfOe3zwnoXujUyEmTxk9MeMXoKdKZeUyZs=; b=EjxfEC4EpVEg7NB4B4n8uAVXcq
 VT/ye0AuHYMa9sqhGhGLmLPuO5kQbw61RoyxPA02UzsjbOCCgGOYLZ9cpdwvlTqggOUurNmNUJFEs
 iJGRv68BPGsK7LCV9Fq7OYQRHQSeaYc90DWOdYdhiT9y5gPuShh0VPSQhLflglC1zUGs=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBLe1-00F1b5-5s
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 19:34:09 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id F1435C01E; Tue, 12 Jul 2022 21:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657654435; bh=LGQQkiza9LfOe3zwnoXujUyEmTxk9MeMXoKdKZeUyZs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wfCToj5nuXaYmYSMYLAj0CruufU69ML6vk7Aes6qdjpsXOazG/rU+TfZJs/y9mJYw
 RJiej2c1fWsHAjb7rS5vqPNIoFagPUD0uNt2YHCt5uQaPgm8EQGx6N+LLEleioYz8p
 335P0n3t24k8WjJncZJn/jZ+gxv8aCzwLAlZi8adhjkBOa3JCrPYUvGITj9kQB1uJO
 FxYwEo8BCbkCgZFgSXH0b/xvV06s4ndxDuAgbc5k1tvkvZoqLUiFqUo1fwGDiuHkml
 Q0McKtgCvl04UUi3+zn/XiJsljqdh4CQN3nNCP1pw4ENfTmIkGAzOr/duZdURHZfE/
 2yrtcj5eNrkMA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 62E8EC009;
 Tue, 12 Jul 2022 21:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657654434; bh=LGQQkiza9LfOe3zwnoXujUyEmTxk9MeMXoKdKZeUyZs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y1zmZC62w5J7Ur8UwSAENJD8Xdk+KDAozmN7VRrtFrRMPE3nd+uvmMTyTulFVlY+J
 F0wl4eo7j8RPGicz0Mf18JYUGw4Y2nmHLb9puVGqXa1yEF4DDpdansCPP5nVm5VCru
 2M5WvgZgw0Y3hAw4tkS+1tmxIVWenRF3Q1psVhIpT8Re19BzwPWvIv8m2B5IwcA9fP
 2YSe4PuGRs5V8sFe7zPk//XVrjZ08K7BQwKf+qriWdeRFhGOS7Xkoks4rIzjBFCtUW
 +2LrX1r8cgbbr6CsslLomTEq8ds8TYFjkugmClXFSYgj2wfT+vQus8YrNxCiEn+1H6
 nML+Xal00/4mg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4845bb4d;
 Tue, 12 Jul 2022 19:33:50 +0000 (UTC)
Date: Wed, 13 Jul 2022 04:33:35 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Ys3Mj+SgWLzhQGWK@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <5fb0bcc402e032cbc0779f428be5797cddfd291c.1657636554.git.linux_oss@crudebyte.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5fb0bcc402e032cbc0779f428be5797cddfd291c.1657636554.git.linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Tue, Jul 12,
 2022 at 04:31:36PM
 +0200: > So far 'msize' was simply used for all 9p message types, which is
 far > too much and slowed down performance tremendously with l [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oBLe1-00F1b5-5s
Subject: Re: [V9fs-developer] [PATCH v5 11/11] net/9p: allocate appropriate
 reduced message buffers
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:31:36PM +0200:
> So far 'msize' was simply used for all 9p message types, which is far
> too much and slowed down performance tremendously with large values
> for user configurable 'msize' option.
> 
> Let's stop this waste by using the new p9_msg_buf_size() function for
> allocating more appropriate, smaller buffers according to what is
> actually sent over the wire.
> 
> Only exception: RDMA transport is currently excluded from this, as
> it would not cope with it. [1]
> 
> Link: https://lore.kernel.org/all/YkmVI6pqTuMD8dVi@codewreck.org/ [1]
> Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> ---
> 
> Is the !strcmp(c->trans_mod->name, "rdma") check in this patch maybe a bit
> too hack-ish? Should there rather be transport API extension instead?

hmm yeah that doesn't feel great, let's add a flag to struct
p9_trans_module

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
