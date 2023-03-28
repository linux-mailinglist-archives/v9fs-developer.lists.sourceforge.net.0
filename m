Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7AF6CB588
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 06:50:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ph1Hj-0003aR-7q;
	Tue, 28 Mar 2023 04:50:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1ph1Hh-0003aL-7L
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 04:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xlPh4S+TbTgkNsO9Dt503SwDvNQzKRyfCiCNpDhlIR8=; b=W4qKX65d7F2BQ9r3Pm4tXo7Bba
 iXZPz1ztKDO5JstaGHHwZpSbxveuOHA0D6o2z7swatlkNwrrMqHqPHNnVuhxThLGb2tRU9xrF4/P/
 8sPReaFjSUM2S6RIdVbfcuEUg7YTZFF3+ExQFJS9l2M8XcQkmRuwKPITjYZFnqwJXq8A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xlPh4S+TbTgkNsO9Dt503SwDvNQzKRyfCiCNpDhlIR8=; b=nEjycX1ofH8YDlM2Y5e2btCUCU
 4frtOcd0JcrrHt4VVbHsprRlfi0u/VvthXa26vHJmSobqgYlpN92oSeVa2hQOGIBuZmxS0DzyLG7i
 8byYRR2v85ABQnUj3TumHpHIJFNR9efS8lMMjGNYuyuL6rK8Ks0KCL7pB6AUdqh811bQ=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ph1Hg-00009I-AA for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 04:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=xlPh4S+TbTgkNsO9Dt503SwDvNQzKRyfCiCNpDhlIR8=; b=yVjVeEwJyLcoFyXalwFYFo+Jq+
 S/xBDNNvXpga8t4TgcZdnUESMN2aJKHjt8vx/pY28AnGcz+RxUIYcSoupOwhAGFstqwHLFpttRfjq
 bhnnVINCRXTPRzn9gf0aaIXTv3F8eMcqgTGccGEO5g/mE1oAZ9LJIF1QnkemSLjSzOkK1Up3RKIYV
 mJJKaaTEhqSyjjLHF7ggUnVp02CXpE0OSCitgRtx9s2m2Ms0UpSZ4jcGeyHLuQTHwnEBAuQnorgsL
 bmuu4lmzKNWF2OdtCNtEp7+al4UyKfB5jZ8FIleUkEP+5cxQFqNery4BKmlS7LEP8ngXoG3jeAYwe
 3p+n7Nlw==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1ph1HA-00D8WD-30; Tue, 28 Mar 2023 04:49:40 +0000
Date: Mon, 27 Mar 2023 21:49:40 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <ZCJx5Dtms5iDhftF@bombadil.infradead.org>
References: <20230325105633.58592-1-huangjie.albert@bytedance.com>
 <ZCJNTBQLZeyLBKKB@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCJNTBQLZeyLBKKB@codewreck.org>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 28, 2023 at 11:13:32AM +0900, Dominique Martinet
 wrote: > Hi Michael, Albert, > > Albert Huang wrote on Sat, Mar 25, 2023
 at 06:56:33PM +0800: > > in virtio_net, if we disable the napi_tx, [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ph1Hg-00009I-AA
Subject: Re: [V9fs-developer] 9p regression (Was: [PATCH v2] virtio_ring:
 don't update event idx on get_buf)
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>,
 Albert Huang <huangjie.albert@bytedance.com>, Jason Wang <jasowang@redhat.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Eric Van Hensbergen <ericvh@gmail.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Mar 28, 2023 at 11:13:32AM +0900, Dominique Martinet wrote:
> Hi Michael, Albert,
> 
> Albert Huang wrote on Sat, Mar 25, 2023 at 06:56:33PM +0800:
> > in virtio_net, if we disable the napi_tx, when we triger a tx interrupt,
> > the vq->event_triggered will be set to true. It will no longer be set to
> > false. Unless we explicitly call virtqueue_enable_cb_delayed or
> > virtqueue_enable_cb_prepare.
> 
> This patch (commited as 35395770f803 ("virtio_ring: don't update event
> idx on get_buf") in next-20230327 apparently breaks 9p, as reported by
> Luis in https://lkml.kernel.org/r/ZCI+7Wg5OclSlE8c@bombadil.infradead.org

Spot on, reverting that commit fixes it.

  Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
